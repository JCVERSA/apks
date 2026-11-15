package defpackage;

import androidx.media3.extractor.avi.AviExtractor;

public final class ry9 implements s30 {
    public final String a;

    public ry9(String str) {
        this.a = str;
    }

    public static ry9 a(qw7 qw7Var) {
        return new ry9(qw7Var.z(qw7Var.a()));
    }

    @Override
    public int getType() {
        return AviExtractor.FOURCC_strn;
    }
}
