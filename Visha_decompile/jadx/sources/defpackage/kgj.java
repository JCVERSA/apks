package defpackage;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

public final class kgj extends ContentObserver {
    public final ContentResolver a;
    public final Uri b;
    public final qgj c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kgj(qgj qgjVar, Handler handler, ContentResolver contentResolver, Uri uri) {
        super(handler);
        this.c = qgjVar;
        this.a = contentResolver;
        this.b = uri;
    }

    public final void a() {
        this.a.registerContentObserver(this.b, false, this);
    }

    public final void b() {
        this.a.unregisterContentObserver(this);
    }

    @Override
    public final void onChange(boolean z) {
        qgj qgjVar = this.c;
        qgjVar.j(ggj.c(qgjVar.a, qgjVar.h, qgjVar.g));
    }
}
