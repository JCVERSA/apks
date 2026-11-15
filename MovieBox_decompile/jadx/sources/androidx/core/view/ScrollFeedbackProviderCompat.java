package androidx.core.view;

import android.os.Build;
import android.view.ScrollFeedbackProvider;
import android.view.View;

public class ScrollFeedbackProviderCompat {
    private final d mImpl;

    private static class b implements d {

        private final ScrollFeedbackProvider f7984a;

        b(View view) {
            this.f7984a = ScrollFeedbackProvider.createProvider(view);
        }

        @Override
        public void a(int i10, int i11, int i12, boolean z10) {
            this.f7984a.onScrollLimit(i10, i11, i12, z10);
        }

        @Override
        public void b(int i10, int i11, int i12, int i13) {
            this.f7984a.onScrollProgress(i10, i11, i12, i13);
        }

        @Override
        public void c(int i10, int i11, int i12) {
            this.f7984a.onSnapToItem(i10, i11, i12);
        }
    }

    private interface d {
        void a(int i10, int i11, int i12, boolean z10);

        void b(int i10, int i11, int i12, int i13);

        void c(int i10, int i11, int i12);
    }

    private ScrollFeedbackProviderCompat(View view) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.mImpl = new b(view);
        } else {
            this.mImpl = new c();
        }
    }

    public static ScrollFeedbackProviderCompat createProvider(View view) {
        return new ScrollFeedbackProviderCompat(view);
    }

    public void onScrollLimit(int i10, int i11, int i12, boolean z10) {
        this.mImpl.a(i10, i11, i12, z10);
    }

    public void onScrollProgress(int i10, int i11, int i12, int i13) {
        this.mImpl.b(i10, i11, i12, i13);
    }

    public void onSnapToItem(int i10, int i11, int i12) {
        this.mImpl.c(i10, i11, i12);
    }

    private static class c implements d {
        private c() {
        }

        @Override
        public void c(int i10, int i11, int i12) {
        }

        @Override
        public void a(int i10, int i11, int i12, boolean z10) {
        }

        @Override
        public void b(int i10, int i11, int i12, int i13) {
        }
    }
}
