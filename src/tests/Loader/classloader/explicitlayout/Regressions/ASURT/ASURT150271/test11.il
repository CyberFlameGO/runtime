// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

.assembly extern System.Console { }
.assembly extern xunit.core {}
// non-blittable by objref field, really large offset, and force GC collect
.assembly test10{}
.assembly extern mscorlib{}

.class public explicit Class1 extends [mscorlib]System.Object{
	.field [0] public int32 i1
	.field [8] public object o1
	.field [0x2000008] public int32 i2 


	.method public specialname rtspecialname void .ctor(){
		ldarg.0
		call instance void [mscorlib]System.Object::.ctor()
		ret
	}

}

.method public static int32 Main(){
	.custom instance void [xunit.core]Xunit.FactAttribute::.ctor() = (
	    01 00 00 00
	)
	.entrypoint

	.locals init(class Class1 c1)

	newobj instance void Class1::.ctor()
	stloc.0



	ldstr "hello"
	call void [System.Console]System.Console::WriteLine(string)

	ldloc.0
	ldc.i4.1
	stfld int32 Class1::i1


	ldloc.0
	ldc.i4.2
	stfld int32 Class1::i2

	call void [mscorlib]System.GC::Collect()


	ldstr "field i1: {0}, i2: {1}\n\nGC COLLECTED\n\nPASS"
	ldloc.0
	ldfld int32 Class1::i1
	box int32
	ldloc.0
	ldfld int32 Class1::i2
	box int32
	call void [System.Console]System.Console::WriteLine(string,object,object)

    ldc.i4 100
	ret
}
