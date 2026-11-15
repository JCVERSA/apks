package ox;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

public final class a extends PasswordTransformationMethod {

    private final class C0846a implements CharSequence {

        private final CharSequence f68940a;

        final a f68941b;

        public C0846a(a aVar, CharSequence mSource) {
            Intrinsics.h(mSource, "mSource");
            this.f68941b = aVar;
            this.f68940a = mSource;
        }

        public char a(int i10) {
            return '*';
        }

        public int b() {
            return this.f68940a.length();
        }

        @Override
        public final char charAt(int i10) {
            return a(i10);
        }

        @Override
        public final int length() {
            return b();
        }

        @Override
        public CharSequence subSequence(int i10, int i11) {
            return this.f68940a.subSequence(i10, i11);
        }
    }

    @Override
    public CharSequence getTransformation(CharSequence source, View view) {
        Intrinsics.h(source, "source");
        Intrinsics.h(view, "view");
        return new C0846a(this, source);
    }
}
