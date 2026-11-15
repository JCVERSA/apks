package androidx.datastore.core;

import defpackage.e74;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000 \u0004*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0004B\u0005¢\u0006\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer;", "T", "", "()V", "Companion", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataMigrationInitializer<T> {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J8\u0010\u000b\u001a\u00020\n\"\u0004\b\u0001\u0010\u00042\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00060\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\bH\u0082@¢\u0006\u0004\b\u000b\u0010\fJI\u0010\u000f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r\"\u0004\b\u0001\u0010\u00042\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00060\u0005¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/datastore/core/DataMigrationInitializer$Companion;", "", MethodDecl.initName, "()V", "T", "", "Landroidx/datastore/core/DataMigration;", "migrations", "Landroidx/datastore/core/InitializerApi;", "api", "Lzfb;", "runMigrations", "(Ljava/util/List;Landroidx/datastore/core/InitializerApi;Lwh1;)Ljava/lang/Object;", "Lkotlin/Function2;", "Lwh1;", "getInitializer", "(Ljava/util/List;)Ls74;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0072  */
        /* JADX WARN: Code duplicated, block: B:37:0x009b  */
        /* JADX WARN: Code duplicated, block: B:39:0x009e  */
        /* JADX WARN: Code duplicated, block: B:43:0x0084 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:0: B:25:0x006c->B:45:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.Throwable] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0089 -> B:25:0x006c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x008c -> B:25:0x006c). Please report as a decompilation issue!!! */
        public final <T> Object runMigrations(List<? extends DataMigration<T>> list, InitializerApi<T> initializerApi, wh1<? super zfb> wh1Var) throws Throwable {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
            List list2;
            Iterator<T> it;
            Ref$ObjectRef ref$ObjectRef;
            Throwable th;
            e74 e74Var;
            if (wh1Var instanceof DataMigrationInitializer$Companion$runMigrations$1) {
                dataMigrationInitializer$Companion$runMigrations$1 = (DataMigrationInitializer$Companion$runMigrations$1) wh1Var;
                int i = dataMigrationInitializer$Companion$runMigrations$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    dataMigrationInitializer$Companion$runMigrations$1.label = i - Integer.MIN_VALUE;
                } else {
                    dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, wh1Var);
                }
            } else {
                dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, wh1Var);
            }
            Object obj = dataMigrationInitializer$Companion$runMigrations$1.result;
            Object objF = z45.f();
            int i2 = dataMigrationInitializer$Companion$runMigrations$1.label;
            if (i2 != 0) {
                if (i2 == 1) {
                    list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    c.b(obj);
                } else {
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) dataMigrationInitializer$Companion$runMigrations$1.L$1;
                    ref$ObjectRef = (Ref$ObjectRef) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    try {
                        c.b(obj);
                    } catch (Throwable 
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                        	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
                        	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
                        	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        */
                    /*
                        this = this;
                        boolean r0 = r8 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                        if (r0 == 0) goto L13
                        r0 = r8
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                        r0.<init>(r5, r8)
                    L18:
                        java.lang.Object r5 = r0.result
                        java.lang.Object r8 = defpackage.z45.f()
                        int r1 = r0.label
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L46
                        if (r1 == r3) goto L3e
                        if (r1 != r2) goto L36
                        java.lang.Object r6 = r0.L$1
                        java.util.Iterator r6 = (java.util.Iterator) r6
                        java.lang.Object r7 = r0.L$0
                        kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref$ObjectRef) r7
                        kotlin.c.b(r5)     // Catch: java.lang.Throwable -> L34
                        goto L6c
                    L34:
                        r5 = move-exception
                        goto L85
                    L36:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L3e:
                        java.lang.Object r6 = r0.L$0
                        java.util.List r6 = (java.util.List) r6
                        kotlin.c.b(r5)
                        goto L60
                    L46:
                        kotlin.c.b(r5)
                        java.util.ArrayList r5 = new java.util.ArrayList
                        r5.<init>()
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2 r1 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2
                        r4 = 0
                        r1.<init>(r6, r5, r4)
                        r0.L$0 = r5
                        r0.label = r3
                        java.lang.Object r6 = r7.updateData(r1, r0)
                        if (r6 != r8) goto L5f
                        return r8
                    L5f:
                        r6 = r5
                    L60:
                        kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
                        r5.<init>()
                        java.lang.Iterable r6 = (java.lang.Iterable) r6
                        java.util.Iterator r6 = r6.iterator()
                        r7 = r5
                    L6c:
                        boolean r5 = r6.hasNext()
                        if (r5 == 0) goto L95
                        java.lang.Object r5 = r6.next()
                        e74 r5 = (defpackage.e74) r5
                        r0.L$0 = r7     // Catch: java.lang.Throwable -> L34
                        r0.L$1 = r6     // Catch: java.lang.Throwable -> L34
                        r0.label = r2     // Catch: java.lang.Throwable -> L34
                        java.lang.Object r5 = r5.invoke(r0)     // Catch: java.lang.Throwable -> L34
                        if (r5 != r8) goto L6c
                        return r8
                    L85:
                        T r1 = r7.element
                        if (r1 != 0) goto L8c
                        r7.element = r5
                        goto L6c
                    L8c:
                        defpackage.y45.g(r1)
                        java.lang.Throwable r1 = (java.lang.Throwable) r1
                        defpackage.ue3.a(r1, r5)
                        goto L6c
                    L95:
                        T r5 = r7.element
                        java.lang.Throwable r5 = (java.lang.Throwable) r5
                        if (r5 != 0) goto L9e
                        zfb r5 = defpackage.zfb.a
                        return r5
                    L9e:
                        throw r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer.Companion.runMigrations(java.util.List, androidx.datastore.core.InitializerApi, wh1):java.lang.Object");
                }

                public final <T> s74 getInitializer(List<? extends DataMigration<T>> migrations) {
                    y45.j(migrations, "migrations");
                    return new DataMigrationInitializer$Companion$getInitializer$1(migrations, null);
                }

                private Companion() {
                }
            }
        }
