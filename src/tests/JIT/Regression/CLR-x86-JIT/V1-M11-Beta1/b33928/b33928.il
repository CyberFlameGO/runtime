// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

.assembly extern legacy library mscorlib {}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly ILGEN_0x34e68074 {}
.assembly extern xunit.core {}
.class ILGEN_0x34e68074 {
.method static int32 Method_0x1f01(float32 Arg_0x0) {
.maxstack	11
Start_Orphan_0:
 ldc.r8 2.4668835840603761e+262
 ldc.r8 5.0770485550453718e+275
 mul
 conv.r4
 starg Arg_0x0
End_Orphan_0:
 ldc.i4.8
 conv.r4
 ldarg Arg_0x0
 mul
conv.i4
ret
}
.method static int32 Main() {
.custom instance void [xunit.core]Xunit.FactAttribute::.ctor() = (
    01 00 00 00
)
.entrypoint
.maxstack	20
ldc.r4 5.5996447e+030 

call int32 ILGEN_0x34e68074::Method_0x1f01(float32 Arg_0x0)

// F->I, overflow to undefined
ldc.r8 2.4668835840603761e+262
ldc.r8 5.0770485550453718e+275
mul
conv.r4
conv.i4

ceq

ldc.i4 99
add

ret
}

}
