package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

public final class InputContentInfoCompat {
    private final c mImpl;

    private interface c {
        Object a();

        Uri b();

        Uri c();

        void d();

        void e();

        ClipDescription getDescription();
    }

    public InputContentInfoCompat(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.mImpl = new a(uri, clipDescription, uri2);
        } else {
            this.mImpl = new b(uri, clipDescription, uri2);
        }
    }

    public static InputContentInfoCompat wrap(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new a(obj));
        }
        return null;
    }

    public Uri getContentUri() {
        return this.mImpl.c();
    }

    public ClipDescription getDescription() {
        return this.mImpl.getDescription();
    }

    public Uri getLinkUri() {
        return this.mImpl.b();
    }

    public void releasePermission() {
        this.mImpl.e();
    }

    public void requestPermission() {
        this.mImpl.d();
    }

    public Object unwrap() {
        return this.mImpl.a();
    }

    private static final class a implements c {

        final InputContentInfo f8080a;

        a(Object obj) {
            this.f8080a = (InputContentInfo) obj;
        }

        @Override
        public Object a() {
            return this.f8080a;
        }

        @Override
        public Uri b() {
            return this.f8080a.getLinkUri();
        }

        @Override
        public Uri c() {
            return this.f8080a.getContentUri();
        }

        @Override
        public void d() {
            this.f8080a.requestPermission();
        }

        @Override
        public void e() {
            this.f8080a.releasePermission();
        }

        @Override
        public ClipDescription getDescription() {
            return this.f8080a.getDescription();
        }

        a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f8080a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(c cVar) {
        this.mImpl = cVar;
    }

    private static final class b implements c {

        private final Uri f8081a;

        private final ClipDescription f8082b;

        private final Uri f8083c;

        b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f8081a = uri;
            this.f8082b = clipDescription;
            this.f8083c = uri2;
        }

        @Override
        public Object a() {
            return null;
        }

        @Override
        public Uri b() {
            return this.f8083c;
        }

        @Override
        public Uri c() {
            return this.f8081a;
        }

        @Override
        public ClipDescription getDescription() {
            return this.f8082b;
        }

        @Override
        public void d() {
        }

        @Override
        public void e() {
        }
    }
}
