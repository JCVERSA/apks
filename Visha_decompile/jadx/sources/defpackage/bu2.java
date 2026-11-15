package defpackage;

import android.graphics.Typeface;

public interface bu2 {
    public static final bu2 b = new a();

    public class a implements bu2 {
        @Override
        public Typeface getBold() {
            return null;
        }

        @Override
        public Typeface getLight() {
            return null;
        }

        @Override
        public Typeface getMedium() {
            return null;
        }

        @Override
        public Typeface getRegular() {
            return null;
        }

        @Override
        public Typeface getTypefaceFor(int i) {
            return Typeface.create(Typeface.DEFAULT, i, false);
        }
    }

    Typeface getBold();

    Typeface getLight();

    Typeface getMedium();

    Typeface getRegular();

    default Typeface getTypefaceFor(int i) {
        if (i >= 0 && i < 350) {
            return getLight();
        }
        if (i < 350 || i >= 450) {
            return (i < 450 || i >= 600) ? getBold() : getMedium();
        }
        return getRegular();
    }
}
