package defpackage;

import java.io.File;

public class pua extends zu5 {
    public final long c;

    public pua(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.c = j;
    }

    @Override
    public boolean b(File file, long j, int i) {
        return j <= this.c;
    }
}
