package i0;

import d0.i;
import h0.e;
import h0.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.regex.Pattern;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import v0.d;

public final class a implements h0.b {

    public int f1133a = 0;

    public static void l(String str, String str2, String str3, Pattern pattern, int[] iArr, e.c cVar, d dVar) {
        String lowerCase;
        if (dVar != null) {
            try {
                if (dVar.isCancelled()) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        ArrayList<d0.d> arrayList = new ArrayList<>();
        f0.a.m().f(str3, arrayList);
        for (d0.d dVar2 : arrayList) {
            try {
                lowerCase = dVar2.f539a.toLowerCase(Locale.getDefault());
            } catch (Exception unused2) {
                lowerCase = dVar2.f539a;
            }
            if (pattern.matcher(lowerCase).matches() && e.g(lowerCase, iArr)) {
                e.b bVar = new e.b();
                bVar.f1088a = !dVar2.f();
                bVar.f1089b = dVar2.b();
                bVar.f1090c = dVar2.f542d;
                cVar.d(bVar, new h(str, str2, str3), dVar2.f539a, dVar2.f540b);
            }
            if (dVar2.f()) {
                l(str, str2, str3 + dVar2.f539a + '/', pattern, iArr, cVar, dVar);
            }
            if (dVar != null && dVar.isCancelled()) {
                return;
            }
        }
    }

    @Override
    public final int a(h hVar) {
        return 16;
    }

    @Override
    public final i b(i iVar) {
        return null;
    }

    @Override
    public final int c(String str, h hVar) {
        f0.a aVarM = f0.a.m();
        String strI = a0.c.i(hVar.f1110e, str);
        ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            f0.d dVar = aVarM.f758b;
            return dVar == null ? -1 : dVar.j(strI);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @Override
    public final boolean d(h hVar) {
        return hVar.g();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final boolean e(h hVar, String str, int[] iArr, int i2, e.c cVar, d dVar) {
        String lowerCase;
        String string;
        int[] iArr2 = iArr;
        if (!hVar.g()) {
            return false;
        }
        String str2 = hVar.f1108c;
        String strSubstring = hVar.f1110e;
        if (!strSubstring.isEmpty() && !strSubstring.endsWith("/")) {
            strSubstring = strSubstring.concat("/");
        }
        String str3 = hVar.f1106a;
        try {
            if (!f0.a.m().n(str2)) {
                return false;
            }
        } catch (Exception unused) {
        }
        Pattern patternCompile = Pattern.compile(v0.h.c(str, false)[0]);
        try {
            cVar.b(10);
            f0.a aVarM = f0.a.m();
            boolean z2 = !a0.c.K(i2, 1);
            ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
            try {
                reentrantReadWriteLock.readLock().lock();
                f0.d dVar2 = aVarM.f758b;
                List<f0.b> listD = dVar2 == null ? null : dVar2.d(strSubstring, patternCompile, z2, dVar);
                reentrantReadWriteLock.readLock().unlock();
                char c2 = '/';
                if (listD == null) {
                    ArrayList<d0.d> arrayList = new ArrayList<>();
                    f0.a.m().f(strSubstring, arrayList);
                    if (strSubstring.startsWith("/")) {
                        strSubstring = strSubstring.substring(1);
                    }
                    String str4 = strSubstring;
                    int size = arrayList.size();
                    int i3 = 0;
                    for (d0.d dVar3 : arrayList) {
                        try {
                            lowerCase = dVar3.f539a.toLowerCase(Locale.getDefault());
                        } catch (Exception unused2) {
                            lowerCase = dVar3.f539a;
                        }
                        if (patternCompile.matcher(lowerCase).matches() && e.g(lowerCase, iArr)) {
                            e.b bVar = new e.b();
                            bVar.f1088a = !dVar3.f();
                            bVar.f1089b = dVar3.b();
                            bVar.f1090c = dVar3.f542d;
                            cVar.d(bVar, new h(str3, str2, str4), dVar3.f539a, dVar3.f540b);
                        }
                        if (dVar3.f() && !a0.c.K(i2, 1)) {
                            l(str3, str2, str4 + dVar3.f539a + '/', patternCompile, iArr, cVar, dVar);
                        }
                        if (dVar != null && dVar.isCancelled()) {
                            break;
                        }
                        i3++;
                        cVar.b((i3 * 100) / size);
                    }
                } else {
                    cVar.b(66);
                    for (f0.b bVar2 : listD) {
                        String str5 = bVar2.f761a;
                        if (e.g(str5, iArr2)) {
                            f0.b bVar3 = bVar2.f766f;
                            if (bVar3 == null) {
                                string = "";
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append(c2);
                                sb.append(bVar3.f761a);
                                for (f0.b bVar4 = bVar3.f766f; bVar4 != null; bVar4 = bVar4.f766f) {
                                    sb.insert(0, bVar4.f761a).insert(0, c2);
                                }
                                string = sb.toString();
                            }
                            e.b bVar5 = new e.b();
                            bVar5.f1088a = !bVar2.b();
                            bVar5.f1089b = ((long) bVar2.f763c) * 1000;
                            bVar5.f1090c = bVar2.f762b;
                            cVar.d(bVar5, new h(str3, str2, string), str5, null);
                            iArr2 = iArr;
                            c2 = '/';
                        }
                    }
                    cVar.b(100);
                }
            } catch (Throwable th) {
                reentrantReadWriteLock.readLock().unlock();
                throw th;
            }
        } catch (Exception unused3) {
        }
        return true;
    }

    @Override
    public final int f() {
        return this.f1133a;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0067 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0072 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x007a A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0082 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x0089 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x008f A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0095 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    @Override
    public final boolean g(h hVar, d0.b bVar, int i2) {
        int iK;
        this.f1133a = 0;
        if (!hVar.g()) {
            return false;
        }
        String str = hVar.f1108c;
        String str2 = hVar.f1110e;
        bVar.clear();
        if (a0.c.K(i2, 4) && (!hVar.i() || str2.length() > 1)) {
            bVar.add(0, new d0.d("..", (byte) 3));
        }
        int size = bVar.size();
        try {
            f0.a aVarM = f0.a.m();
            if (!aVarM.n(str) || a0.c.K(i2, 1) || (aVarM.k() != 0 && aVarM.k() != 3)) {
                try {
                    e0.b.d(hVar);
                    if (aVarM.k() != 13) {
                        aVarM.f(str2, bVar);
                        if (bVar.size() <= size) {
                            iK = f0.a.m().k();
                            if (iK == 2) {
                                this.f1133a = R.string.ERROR_WRONG_PASSWORD;
                            } else if (iK == 3) {
                                this.f1133a = R.string.MES_CORRUP_ARCHICHE;
                            } else if (iK == 13) {
                                this.f1133a = R.string.MES_CANCEL_PROCES;
                            } else if (iK == 200) {
                                this.f1133a = R.string.MES_ACCESS_DENIED;
                            } else {
                                this.f1133a = R.string.MES_EMPTY_FOLDER;
                            }
                        }
                    } else {
                        this.f1133a = R.string.MES_CANCEL_PROCES;
                    }
                } catch (e0.b.C0010b | UnsatisfiedLinkError unused) {
                    this.f1133a = R.string.ERROR_7Z_LIB;
                }
            } else if (aVarM.k() != 13) {
                aVarM.f(str2, bVar);
                if (bVar.size() <= size) {
                    iK = f0.a.m().k();
                    if (iK == 2) {
                        this.f1133a = R.string.ERROR_WRONG_PASSWORD;
                    } else if (iK == 3) {
                        this.f1133a = R.string.MES_CORRUP_ARCHICHE;
                    } else if (iK == 13) {
                        this.f1133a = R.string.MES_CANCEL_PROCES;
                    } else if (iK == 200) {
                        this.f1133a = R.string.MES_ACCESS_DENIED;
                    } else {
                        this.f1133a = R.string.MES_EMPTY_FOLDER;
                    }
                }
            } else {
                this.f1133a = R.string.MES_CANCEL_PROCES;
            }
        } catch (Exception unused2) {
        }
        return true;
    }

    @Override
    public final e.a h(h hVar) {
        if (!hVar.g()) {
            return null;
        }
        return new e.a(ZApp.f1434c == null ? "" : ZApp.f1434c.getResources().getString(R.string.FINFO_FS_TYPE_ARCHIVE), 0L, f0.a.m().d());
    }

    @Override
    public final e.b i(h hVar, d dVar) {
        if (!hVar.g()) {
            return null;
        }
        try {
            return f0.a.m().e(hVar.f1110e, dVar);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final e.b j(h hVar, String[] strArr, d dVar) {
        if (!hVar.g()) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            String str = hVar.f1110e;
            for (String str2 : strArr) {
                if (str2 != null) {
                    arrayList.add(str + "/" + str2);
                }
            }
            return f0.a.m().g(arrayList, dVar);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final e.b k(h[] hVarArr, String[] strArr, d dVar) {
        if (!hVarArr[0].g()) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (hVarArr[i2] != null && strArr[i2] != null) {
                    arrayList.add(hVarArr[i2].f1110e + "/" + strArr[i2]);
                }
            }
            return f0.a.m().g(arrayList, dVar);
        } catch (Exception unused) {
            return null;
        }
    }
}
