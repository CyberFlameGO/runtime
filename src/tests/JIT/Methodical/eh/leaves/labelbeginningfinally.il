// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// label at the beginning of finally block



.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly extern mscorlib
{
}
.assembly extern common{}
.assembly b30630
{
  .hash algorithm 0x00008004
  .ver 1:0:3018:0
}
.assembly extern xunit.core {}
.module b30630.exe
.imagebase 0x00400000
.subsystem 0x00000003
.file alignment 512
.corflags 0x00000001









.namespace Test
{
  .class private auto ansi beforefieldinit App
         extends [mscorlib]System.Object
  {
    .method private hidebysig static int32 
            Main() cil managed
    {
      .custom instance void [xunit.core]Xunit.FactAttribute::.ctor() = (
          01 00 00 00
      )
      .entrypoint
      .maxstack  2
      .locals init (bool V_0,
					class [mscorlib]System.IO.StringWriter expectedOut,
					class [common]TestUtil.TestLog testLog
					)

    newobj     instance void [mscorlib]System.IO.StringWriter::.ctor()
    stloc.s    expectedOut
    ldloc.s    expectedOut
    ldstr      "In try"
    callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    ldloc.s    expectedOut
    ldstr      "In finally, before br"
    callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    ldloc.s    expectedOut
    ldstr      "In finally, after br"
    callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    ldloc.s    expectedOut
    ldstr      "done"
    callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    ldloc.s    expectedOut
    newobj     instance void [common]TestUtil.TestLog::.ctor(object)
    stloc.s    testLog

    ldloc.s    testLog
    callvirt   instance void [common]TestUtil.TestLog::StartRecording()
      ldc.i4.0
      stloc.0
      .try
      {
        ldstr      "In try"
        call       void [System.Console]System.Console::WriteLine(string)            
        leave.s    done
      }  
      finally
      {
      beginfinally:  
        ldloc.0
        ldstr      "In finally, before br"
        call       void [System.Console]System.Console::WriteLine(string)            
        brtrue.s   beginfinally
        ldstr      "In finally, after br"
        call       void [System.Console]System.Console::WriteLine(string)            

        endfinally
      }  
    done:  
		ldstr      "done"
		call       void [System.Console]System.Console::WriteLine(string)            
		ldloc.s    testLog
		callvirt   instance void [common]TestUtil.TestLog::StopRecording()
		ldloc.s    testLog
		callvirt   instance int32 [common]TestUtil.TestLog::VerifyOutput()
	    ret
    } 

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      .maxstack  1
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } 

  } 



} 
