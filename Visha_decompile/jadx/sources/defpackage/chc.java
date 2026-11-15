package defpackage;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import java.lang.ref.WeakReference;

public abstract class chc extends ContentObserver {
    public final String a;
    public final WeakReference b;
    public final String c;

    public chc(Object obj) {
        this(obj, null);
    }

    public void a(Object obj, Uri uri, int i) {
    }

    public abstract void b(Object obj, boolean z);

    public void c() {
        WeakReference weakReference = this.b;
        if (weakReference == null) {
            Log.e("WeakReferenceContentObserver", "Cannot release because the host is null");
            return;
        }
        weakReference.clear();
        Log.i("WeakReferenceContentObserver", "release host:" + this.c);
    }

    @Override
    public void onChange(boolean z) {
        super.onChange(z);
        Object obj = this.b.get();
        if (obj != null) {
            b(obj, z);
        } else {
            Log.e("WeakReferenceContentObserver", "Cannot execute the callback because the host is null");
        }
    }

    public chc(Object obj, Handler handler) {
        super(handler);
        this.a = "WeakReferenceContentObserver";
        String str = obj.getClass().getName() + "@" + obj.hashCode();
        this.c = str;
        this.b = new WeakReference(obj);
        Log.i("WeakReferenceContentObserver", "onCreate(" + str + ")");
    }

    @Override
    public void onChange(boolean z, Uri uri, int i) {
        super.onChange(z, uri);
        Object obj = this.b.get();
        if (obj != null) {
            a(obj, uri, i);
        } else {
            Log.e("WeakReferenceContentObserver", "Cannot execute2 the callback because the host is null");
        }
    }
}
