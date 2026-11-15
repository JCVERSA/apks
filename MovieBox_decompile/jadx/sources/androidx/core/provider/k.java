package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import java.util.Collections;
import java.util.List;

public abstract class k {

    public static class b {

        private final Uri f7906a;

        private final int f7907b;

        private final int f7908c;

        private final boolean f7909d;

        private final int f7910e;

        public b(Uri uri, int i10, int i11, boolean z10, int i12) {
            this.f7906a = (Uri) androidx.core.util.i.g(uri);
            this.f7907b = i10;
            this.f7908c = i11;
            this.f7909d = z10;
            this.f7910e = i12;
        }

        static b a(Uri uri, int i10, int i11, boolean z10, int i12) {
            return new b(uri, i10, i11, z10, i12);
        }

        public int b() {
            return this.f7910e;
        }

        public int c() {
            return this.f7907b;
        }

        public Uri d() {
            return this.f7906a;
        }

        public int e() {
            return this.f7908c;
        }

        public boolean f() {
            return this.f7909d;
        }
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b[] bVarArr) {
        return z0.i.b(context, cancellationSignal, bVarArr, 0);
    }

    public static a b(Context context, CancellationSignal cancellationSignal, e eVar) {
        return d.e(context, z0.h.a(new Object[]{eVar}), cancellationSignal);
    }

    public static Typeface c(Context context, List list, int i10, boolean z10, int i11, Handler handler, c cVar) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(cVar, RequestExecutor.b(handler));
        if (!z10) {
            return i.d(context, list, i10, null, callbackWrapper);
        }
        if (list.size() <= 1) {
            return i.e(context, (e) list.get(0), callbackWrapper, i10, i11);
        }
        throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
    }

    public static class a {

        private final int f7904a;

        private final List f7905b;

        public a(int i10, b[] bVarArr) {
            this.f7904a = i10;
            this.f7905b = Collections.singletonList(bVarArr);
        }

        static a a(int i10, List list) {
            return new a(i10, list);
        }

        static a b(int i10, b[] bVarArr) {
            return new a(i10, bVarArr);
        }

        public b[] c() {
            return (b[]) this.f7905b.get(0);
        }

        public List d() {
            return this.f7905b;
        }

        public int e() {
            return this.f7904a;
        }

        boolean f() {
            return this.f7905b.size() > 1;
        }

        a(int i10, List list) {
            this.f7904a = i10;
            this.f7905b = list;
        }
    }

    public static class c {
        public void a(int i10) {
        }

        public void b(Typeface typeface) {
        }
    }
}
