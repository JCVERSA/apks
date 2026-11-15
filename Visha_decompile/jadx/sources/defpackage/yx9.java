package defpackage;

import android.database.SQLException;
import com.yandex.div.storage.DivDataRepository;
import com.yandex.div.storage.DivStorageErrorException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class yx9 {
    public final c74 a;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivDataRepository.ActionOnError.values().length];
            try {
                iArr[DivDataRepository.ActionOnError.ABORT_TRANSACTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivDataRepository.ActionOnError.SKIP_ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public yx9(c74 c74Var) {
        y45.j(c74Var, "dbProvider");
        this.a = c74Var;
    }

    public static final void c(Ref$ObjectRef ref$ObjectRef, Ref$IntRef ref$IntRef, xx9[] xx9VarArr, DivDataRepository.ActionOnError actionOnError, yx9 yx9Var, List list, ky0 ky0Var, xx9 xx9Var) {
        try {
            xx9Var.a(ky0Var);
        } catch (SQLException e) {
            d(ref$ObjectRef, ref$IntRef, xx9VarArr, actionOnError, yx9Var, list, e);
        } catch (IllegalStateException e2) {
            d(ref$ObjectRef, ref$IntRef, xx9VarArr, actionOnError, yx9Var, list, e2);
        }
    }

    public static final void d(Ref$ObjectRef ref$ObjectRef, Ref$IntRef ref$IntRef, xx9[] xx9VarArr, DivDataRepository.ActionOnError actionOnError, yx9 yx9Var, List list, Exception exc) {
        String str = "Exception at statement '" + ref$ObjectRef.element + "' (" + ref$IntRef.element + " out " + xx9VarArr.length + ')';
        int i = a.a[actionOnError.ordinal()];
        if (i == 1) {
            yx9Var.e(str, exc);
            throw new KotlinNothingValueException();
        }
        if (i != 2) {
            return;
        }
        list.add(new DivStorageErrorException(str, exc, null, 4, null));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0091 A[PHI: r20
      0x0091: PHI (r20v4 zs1$b) = (r20v3 zs1$b), (r20v5 zs1$b), (r20v14 zs1$b) binds: [B:42:0x00d3, B:49:0x00ed, B:23:0x008b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:58:0x0102  */
    /* JADX WARN: Type inference failed for: r4v2, types: [T, xx9] */
    public final ze3 a(DivDataRepository.ActionOnError actionOnError, xx9... xx9VarArr) throws Throwable {
        ky0 ky0Var;
        IllegalStateException illegalStateException;
        ky0 ky0Var2;
        zs1.b bVar;
        SQLException sQLException;
        zs1.b bVar2;
        y45.j(actionOnError, "actionOnError");
        y45.j(xx9VarArr, "statements");
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 1;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ArrayList arrayList = new ArrayList();
        zs1.b bVar3 = null;
        try {
            try {
                zs1.b bVar4 = (zs1.b) this.a.invoke();
                try {
                    ky0 ky0Var3 = new ky0(bVar4);
                    try {
                        bVar4.beginTransaction();
                        int length = xx9VarArr.length;
                        int i = 0;
                        while (i < length) {
                            ?? r4 = xx9VarArr[i];
                            ref$ObjectRef.element = r4;
                            int i2 = i;
                            int i3 = length;
                            ky0Var2 = ky0Var3;
                            bVar = bVar4;
                            try {
                                c(ref$ObjectRef, ref$IntRef, xx9VarArr, actionOnError, this, arrayList, ky0Var3, r4);
                                ref$IntRef.element++;
                                i = i2 + 1;
                                length = i3;
                                ky0Var3 = ky0Var2;
                                bVar4 = bVar;
                            } catch (SQLException e) {
                                e = e;
                                sQLException = e;
                                arrayList.add(new DivStorageErrorException("Error during statements execution.", sQLException, null, 4, null));
                                if (bVar != null) {
                                    ov9.b(bVar);
                                }
                                if (ky0Var2 != null) {
                                    ky0Var2.close();
                                }
                                if (bVar != null) {
                                    ov9.a(bVar);
                                }
                                return new ze3(arrayList);
                            } catch (IllegalStateException e2) {
                                e = e2;
                                illegalStateException = e;
                                arrayList.add(new DivStorageErrorException("Error during statements execution.", illegalStateException, null, 4, null));
                                if (bVar != null) {
                                    ov9.b(bVar);
                                }
                                if (ky0Var2 != null) {
                                    ky0Var2.close();
                                }
                                if (bVar != null) {
                                    ov9.a(bVar);
                                }
                                return new ze3(arrayList);
                            }
                        }
                        ky0Var2 = ky0Var3;
                        bVar = bVar4;
                        bVar.setTransactionSuccessful();
                        ov9.b(bVar);
                        ky0Var2.close();
                    } catch (SQLException e3) {
                        e = e3;
                        ky0Var2 = ky0Var3;
                        bVar = bVar4;
                    } catch (IllegalStateException e4) {
                        e = e4;
                        ky0Var2 = ky0Var3;
                        bVar = bVar4;
                    } catch (Throwable th) {
                        th = th;
                        ky0Var = ky0Var3;
                        bVar2 = bVar4;
                        bVar3 = bVar2;
                        if (bVar3 != null) {
                            ov9.b(bVar3);
                        }
                        if (ky0Var != null) {
                            ky0Var.close();
                        }
                        if (bVar3 != null) {
                            ov9.a(bVar3);
                        }
                        throw th;
                    }
                } catch (SQLException e5) {
                    bVar = bVar4;
                    sQLException = e5;
                    ky0Var2 = null;
                } catch (IllegalStateException e6) {
                    bVar = bVar4;
                    illegalStateException = e6;
                    ky0Var2 = null;
                } catch (Throwable th2) {
                    th = th2;
                    bVar2 = bVar4;
                    ky0Var = null;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (SQLException e7) {
            sQLException = e7;
            ky0Var2 = null;
            bVar = null;
        } catch (IllegalStateException e8) {
            illegalStateException = e8;
            ky0Var2 = null;
            bVar = null;
        } catch (Throwable th4) {
            th = th4;
            ky0Var = null;
            if (bVar3 != null) {
                ov9.b(bVar3);
            }
            if (ky0Var != null) {
                ky0Var.close();
            }
            if (bVar3 != null) {
                ov9.a(bVar3);
            }
            throw th;
        }
        ov9.a(bVar);
        return new ze3(arrayList);
    }

    public final ze3 b(xx9... xx9VarArr) {
        y45.j(xx9VarArr, "statements");
        return a(DivDataRepository.ActionOnError.ABORT_TRANSACTION, (xx9[]) Arrays.copyOf(xx9VarArr, xx9VarArr.length));
    }

    public final Void e(String str, Exception exc) {
        throw new SQLException(str, exc);
    }
}
