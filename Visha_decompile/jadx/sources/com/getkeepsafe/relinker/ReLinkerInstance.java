package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.oha;
import defpackage.t83;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class ReLinkerInstance {
    public final Set a;
    public final b.InterfaceC0072b b;
    public final b.a c;
    public boolean d;
    public boolean e;

    public class a implements FilenameFilter {
        public final String b;

        public a(String str) {
            this.b = str;
        }

        @Override
        public boolean accept(File file, String str) {
            return str.startsWith(this.b);
        }
    }

    public ReLinkerInstance() {
        this(new c(), new com.getkeepsafe.relinker.a());
    }

    public void b(Context context, String str, String str2) {
        File fileC = c(context);
        File fileD = d(context, str, str2);
        File[] fileArrListFiles = fileC.listFiles(new a(this.b.e(str)));
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.d || !file.getAbsolutePath().equals(fileD.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    public File c(Context context) {
        return context.getDir("lib", 0);
    }

    public File d(Context context, String str, String str2) {
        String strE = this.b.e(str);
        if (oha.a(str2)) {
            return new File(c(context), strE);
        }
        return new File(c(context), strE + Consts.DOT + str2);
    }

    public void e(Context context, String str) {
        f(context, str, null, null);
    }

    public void f(Context context, String str, String str2, b.c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (oha.a(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        i("Beginning load of %s...", str);
        if (cVar == null) {
            g(context, str, str2);
        } else {
            new Thread(new Runnable(context, str, str2, cVar) {
                final Context val$context;
                final String val$library;
                final b.c val$listener;
                final String val$version;

                /* JADX WARN: Code restructure failed: missing block: B:10:?, code lost:
                
                    throw null;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:9:?, code lost:
                
                    throw null;
                 */
                @Override
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void run() throws Throwable {
                    try {
                        ReLinkerInstance.this.g(this.val$context, this.val$library, this.val$version);
                        throw null;
                    } catch (MissingLibraryException unused) {
                        throw null;
                    } catch (UnsatisfiedLinkError unused2) {
                        throw null;
                    }
                }
            }).start();
        }
    }

    public final void g(Context context, String str, String str2) throws Throwable {
        if (this.a.contains(str) && !this.d) {
            i("%s already loaded previously!", str);
            return;
        }
        try {
            this.b.a(str);
            this.a.add(str);
            i("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            i("Loading the library normally failed: %s", Log.getStackTraceString(e));
            i("%s (%s) was not loaded normally, re-linking...", str, str2);
            File fileD = d(context, str, str2);
            if (!fileD.exists() || this.d) {
                if (this.d) {
                    i("Forcing a re-link of %s (%s)...", str, str2);
                }
                b(context, str, str2);
                this.c.a(context, this.b.c(), this.b.e(str), fileD, this);
            }
            try {
                if (this.e) {
                    t83 t83Var = null;
                    try {
                        t83 t83Var2 = new t83(fileD);
                        try {
                            List listD = t83Var2.d();
                            t83Var2.close();
                            Iterator it = listD.iterator();
                            while (it.hasNext()) {
                                e(context, this.b.b((String) it.next()));
                            }
                        } catch (Throwable th) {
                            th = th;
                            t83Var = t83Var2;
                            if (t83Var != null) {
                                t83Var.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (IOException unused) {
            }
            this.b.d(fileD.getAbsolutePath());
            this.a.add(str);
            i("%s (%s) was re-linked!", str, str2);
        }
    }

    public void h(String str) {
    }

    public void i(String str, Object... objArr) {
        h(String.format(Locale.US, str, objArr));
    }

    public ReLinkerInstance(b.InterfaceC0072b interfaceC0072b, b.a aVar) {
        this.a = new HashSet();
        if (interfaceC0072b == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
        this.b = interfaceC0072b;
        this.c = aVar;
    }
}
