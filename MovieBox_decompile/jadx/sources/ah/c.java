package ah;

import android.graphics.Typeface;
import android.text.SpannableStringBuilder;

public class c extends SpannableStringBuilder {

    public static class a {

        private b f356a = new b();

        private c f357b = new c();

        private void a() {
            if (this.f356a.length() != 0) {
                this.f357b.append(this.f356a);
            }
        }

        public c b() {
            a();
            return this.f357b;
        }

        public a c(int i10) {
            this.f356a.c(i10);
            return this;
        }

        public a d(int i10) {
            this.f356a.d(i10);
            return this;
        }

        public a e(CharSequence charSequence) {
            a();
            this.f356a = new b(charSequence);
            return this;
        }

        public a f(Typeface typeface) {
            this.f356a.e(typeface);
            return this;
        }
    }

    public static a e() {
        return new a();
    }

    @Override
    public c append(char c10) {
        super.append(c10);
        return this;
    }

    @Override
    public c append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override
    public c append(CharSequence charSequence, int i10, int i11) {
        super.append((CharSequence) new b(charSequence, i10, i11));
        return this;
    }

    @Override
    public c append(CharSequence charSequence, Object obj, int i10) {
        super.append(charSequence, obj, i10);
        return this;
    }
}
