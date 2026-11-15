package androidx.media3.common;

import android.view.View;

public final class a {

    public final View f9474a;

    public final int f9475b;

    public final String f9476c;

    public static final class C0081a {

        private final View f9477a;

        private final int f9478b;

        private String f9479c;

        public C0081a(View view, int i10) {
            this.f9477a = view;
            this.f9478b = i10;
        }

        public a a() {
            return new a(this.f9477a, this.f9478b, this.f9479c);
        }

        public C0081a b(String str) {
            this.f9479c = str;
            return this;
        }
    }

    public a(View view, int i10, String str) {
        this.f9474a = view;
        this.f9475b = i10;
        this.f9476c = str;
    }
}
