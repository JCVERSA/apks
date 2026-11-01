package a0;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import java.io.File;
import ru.zdevs.zarchiver.io.ZAIO;

public final class p0 extends w0.c {

    public final int f89e;

    public final Intent f90f;

    public final boolean f91g;

    public final boolean f92h;

    public final Uri f93i;

    public p0(int i2, Intent intent, Uri uri, boolean z2, boolean z3) {
        this.f89e = i2;
        this.f90f = intent;
        this.f93i = uri;
        this.f91g = z2;
        this.f92h = z3;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0060  */
    /* JADX WARN: Code duplicated, block: B:29:0x0066  */
    /* JADX WARN: Code duplicated, block: B:31:0x006e  */
    /* JADX WARN: Code duplicated, block: B:33:0x0079  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0090  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7  */
    @Override
    public final w0.a.b f() {
        String strF;
        String[] strArrA;
        int i2;
        int i3 = this.f89e;
        y yVar = new y(i3, this.f91g);
        Intent intent = this.f90f;
        if (intent.getCategories() == null ? false : intent.getCategories().contains("ZA_SHORTCUT")) {
            String stringExtra = intent.getStringExtra("shrtct");
            yVar.f142b = stringExtra != null ? new h0.h(stringExtra) : null;
            return yVar;
        }
        Uri uri = this.f93i;
        if (uri != null) {
            boolean zEquals = "file".equals(uri.getScheme());
            if (zEquals) {
                strF = v0.f.f(null, uri);
                if (strF == null) {
                    strF = intent.getStringExtra("AbsolutePath");
                }
                if (strF != null) {
                    if (!new File(strF).exists()) {
                        strArrA = x0.g.a(strF);
                        if (strArrA == null && n0.i.b(strArrA)) {
                            strF = n0.i.a(strF, strArrA[2]);
                        } else {
                            strF = null;
                        }
                    } else if (!zEquals) {
                        if (Build.VERSION.SDK_INT >= 30 && x0.g.e(strF)) {
                            strF = null;
                        }
                        if (strF != null && strF.startsWith("/mnt/appfuse")) {
                            strF = null;
                        }
                    }
                }
            } else {
                Uri data = intent.getData();
                if ((data == null || data.getAuthority() == null || !data.getAuthority().endsWith("archive")) ? false : true) {
                    strF = null;
                } else {
                    strF = v0.f.f(null, uri);
                    if (strF == null) {
                        strF = intent.getStringExtra("AbsolutePath");
                    }
                    if (strF != null) {
                        if (!new File(strF).exists()) {
                            strArrA = x0.g.a(strF);
                            if (strArrA == null) {
                                strF = null;
                            } else {
                                strF = null;
                            }
                        } else if (!zEquals) {
                            if (Build.VERSION.SDK_INT >= 30) {
                                strF = null;
                            }
                            if (strF != null) {
                                strF = null;
                            }
                        }
                    }
                }
            }
            if (strF != null) {
                File file = new File(strF);
                if (file.isDirectory()) {
                    yVar.f142b = new h0.h("file", file.getAbsolutePath());
                } else if (!intent.getBooleanExtra("isZA", false) && (i2 = t0.b.f2083d & 3145728) != 0) {
                    yVar.f144d = c.y(strF);
                    yVar.f145e = i2 == 2097152;
                    yVar.f142b = new h0.h("file", c.A(strF));
                }
                if (yVar.f142b == null) {
                    yVar.f142b = new h0.h("arch", strF.replace("//", "/"), "/");
                }
            } else {
                String strA = ZAIO.a(uri);
                yVar.f142b = strA == null ? null : new h0.h("arch", strA, "/");
            }
        }
        if (yVar.f142b != null) {
            return yVar;
        }
        if (!this.f92h) {
            return null;
        }
        yVar.f142b = new h0.h(t0.b.f2081b[i3]);
        return yVar;
    }

    @Override
    public final int j() {
        return 12;
    }
}
