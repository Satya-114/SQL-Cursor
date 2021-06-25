select * from emp
---with out cursor variables
declare c1 cursor scroll for select * from emp
open c1
fetch last from c1 
fetch prior from c1
fetch absolute 7 from c1
fetch relative -2 from c1
fetch first from c1
fetch next from c1
close c1
deallocate c1

----with cursor variables
declare c2 cursor scroll for select empid,ename from emp
declare @eid int, @ename varchar(20)
open c2
fetch last from c2 into @eid ,@ename
print 'the employee'+@ename+''+'id is:'+ cast(@eid as varchar)
fetch prior from c2 into @eid ,@ename
print 'the employee'+@ename+''+'id is:'+ cast(@eid as varchar)
fetch absolute 7 from c2 into @eid ,@ename
print 'the employee'+@ename+''+'id is:'+ cast(@eid as varchar)
fetch relative 2 from c2 into @eid ,@ename
print 'the employee'+@ename+''+'id is:'+ cast(@eid as varchar)
fetch first from c2 into @eid ,@ename
print 'the employee'+@ename+''+'id is:'+ cast(@eid as varchar)
fetch next from c2 into @eid ,@ename
print 'the employee'+@ename+''+'id is:'+ cast(@eid as varchar)
close c2
deallocate c2