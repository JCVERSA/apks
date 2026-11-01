package ru.zdevs.zarchiver;

import a0.b0;
import a0.r;
import android.content.ContentResolver;
import android.provider.DocumentsContract;
import h0.h;

public final class e extends w0.c {

    public final ContentResolver f1688e;

    public final a.b f1689f;

    public final int f1690g;

    public final int f1691h;

    public e(ContentResolver contentResolver, a.b bVar, int i2, int i3) {
        this.f1688e = contentResolver;
        this.f1689f = bVar;
        this.f1690g = i2;
        this.f1691h = i3;
    }

    @Override
    public final w0.a.b f() {
        ContentResolver contentResolver = this.f1688e;
        int i2 = this.f1690g;
        a.b bVar = this.f1689f;
        try {
            if (i2 == 109) {
                DocumentsContract.deleteDocument(contentResolver, bVar.f1559c);
            } else {
                DocumentsContract.renameDocument(contentResolver, bVar.f1559c, bVar.f1558b);
            }
            if (i2 != 109 && i2 != 110) {
                return new r(new h("file", a0.c.i(bVar.f1557a, bVar.f1558b)));
            }
            return new b0(this.f1691h);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final int j() {
        return 112;
    }
}
