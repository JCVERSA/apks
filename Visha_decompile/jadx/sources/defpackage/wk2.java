package defpackage;

public interface wk2 {
    default Boolean hasSvgSupport() {
        return Boolean.FALSE;
    }

    jn5 loadImage(String str, rk2 rk2Var);

    default jn5 loadImage(String str, rk2 rk2Var, int i) {
        return loadImage(str, rk2Var);
    }

    jn5 loadImageBytes(String str, rk2 rk2Var);

    default jn5 loadImageBytes(String str, rk2 rk2Var, int i) {
        return loadImageBytes(str, rk2Var);
    }
}
