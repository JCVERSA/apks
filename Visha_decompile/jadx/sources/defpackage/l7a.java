package defpackage;

import com.yandex.div.svg.SvgDivImageLoader;

public final class l7a implements wk2 {
    public final wk2 a;
    public final SvgDivImageLoader b;

    public l7a(wk2 wk2Var) {
        y45.j(wk2Var, "providedImageLoader");
        this.a = wk2Var;
        this.b = !wk2Var.hasSvgSupport().booleanValue() ? new SvgDivImageLoader() : null;
    }

    public final wk2 a(String str) {
        return (this.b == null || !b(str)) ? this.a : this.b;
    }

    public final boolean b(String str) {
        int iL0 = j1a.l0(str, '?', 0, false, 6, null);
        if (iL0 == -1) {
            iL0 = str.length();
        }
        String strSubstring = str.substring(0, iL0);
        y45.i(strSubstring, "substring(...)");
        return g1a.D(strSubstring, ".svg", false, 2, null);
    }

    @Override
    public jn5 loadImage(String str, rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        jn5 jn5VarLoadImage = a(str).loadImage(str, rk2Var);
        y45.i(jn5VarLoadImage, "getProperLoader(imageUrl…Image(imageUrl, callback)");
        return jn5VarLoadImage;
    }

    @Override
    public jn5 loadImageBytes(String str, rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        jn5 jn5VarLoadImageBytes = a(str).loadImageBytes(str, rk2Var);
        y45.i(jn5VarLoadImageBytes, "getProperLoader(imageUrl…Bytes(imageUrl, callback)");
        return jn5VarLoadImageBytes;
    }
}
