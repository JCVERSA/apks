package androidx.browser.customtabs;

import android.os.Bundle;

public final class b {

    public final Integer f1849a;

    public final Integer f1850b;

    public final Integer f1851c;

    public final Integer f1852d;

    public static final class a {

        private Integer f1853a;

        private Integer f1854b;

        private Integer f1855c;

        private Integer f1856d;

        public b a() {
            return new b(this.f1853a, this.f1854b, this.f1855c, this.f1856d);
        }
    }

    b(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f1849a = num;
        this.f1850b = num2;
        this.f1851c = num3;
        this.f1852d = num4;
    }

    Bundle a() {
        Bundle bundle = new Bundle();
        Integer num = this.f1849a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f1850b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        Integer num3 = this.f1851c;
        if (num3 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num3.intValue());
        }
        Integer num4 = this.f1852d;
        if (num4 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", num4.intValue());
        }
        return bundle;
    }
}
