package com.google.firebase.sessions;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class InstallationId {

    public static final Companion f31753c = new Companion(null);

    private final String f31754a;

    private final String f31755b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v17 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5, types: [lc.e] */
        /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, lc.e] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v15 */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v7 */
        public final Object a(lc.e eVar, Continuation continuation) {
            InstallationId$Companion$create$1 installationId$Companion$create$1;
            ?? r10;
            String str;
            ?? r11;
            if (continuation instanceof InstallationId$Companion$create$1) {
                installationId$Companion$create$1 = (InstallationId$Companion$create$1) continuation;
                int i10 = installationId$Companion$create$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    installationId$Companion$create$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    installationId$Companion$create$1 = new InstallationId$Companion$create$1(this, continuation);
                }
            } else {
                installationId$Companion$create$1 = new InstallationId$Companion$create$1(this, continuation);
            }
            Object objA = installationId$Companion$create$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = installationId$Companion$create$1.label;
            String str2 = "";
            try {
                try {
                    if (i11 != 0) {
                        if (i11 == 1) {
                            lc.e eVar2 = (lc.e) installationId$Companion$create$1.L$0;
                            ResultKt.b(objA);
                            eVar = eVar2;
                        } else {
                            if (i11 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            String str3 = (String) installationId$Companion$create$1.L$0;
                            ResultKt.b(objA);
                            eVar = str3;
                        }
                        Intrinsics.g(objA, "{\n          firebaseInst…ions.id.await()\n        }");
                        str2 = (String) objA;
                        r11 = eVar;
                        return new InstallationId(str2, r11, null);
                    }
                    ResultKt.b(objA);
                    Task taskA = eVar.a(false);
                    Intrinsics.g(taskA, "firebaseInstallations.getToken(false)");
                    installationId$Companion$create$1.L$0 = eVar;
                    installationId$Companion$create$1.label = 1;
                    objA = qy.b.a(taskA, installationId$Companion$create$1);
                    eVar = eVar;
                    if (objA == objF) {
                        return objF;
                    }
                    String strB = ((com.google.firebase.installations.f) objA).b();
                    Intrinsics.g(strB, "{\n          firebaseInst…).await().token\n        }");
                    r10 = eVar;
                    str = strB;
                } catch (Exception e10) {
                    Log.w("InstallationId", "Error getting authentication token.", e10);
                    r10 = eVar;
                    str = "";
                }
                Task id2 = r10.getId();
                Intrinsics.g(id2, "firebaseInstallations.id");
                installationId$Companion$create$1.L$0 = str;
                installationId$Companion$create$1.label = 2;
                objA = qy.b.a(id2, installationId$Companion$create$1);
                eVar = str;
                if (objA == objF) {
                    return objF;
                }
                Intrinsics.g(objA, "{\n          firebaseInst…ions.id.await()\n        }");
                str2 = (String) objA;
                r11 = eVar;
            } catch (Exception e11) {
                Log.w("InstallationId", "Error getting Firebase installation id .", e11);
                r11 = eVar;
            }
            return new InstallationId(str2, r11, null);
        }

        private Companion() {
        }
    }

    public InstallationId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    public final String a() {
        return this.f31755b;
    }

    public final String b() {
        return this.f31754a;
    }

    private InstallationId(String str, String str2) {
        this.f31754a = str;
        this.f31755b = str2;
    }
}
