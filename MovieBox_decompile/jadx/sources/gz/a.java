package gz;

import java.io.FilterReader;
import java.io.IOException;
import java.io.StringReader;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.util.d;

public abstract class a extends FilterReader {

    private boolean f61209a;

    private Project f61210b;

    public a() {
        super(new StringReader(""));
        this.f61209a = false;
        this.f61210b = null;
        d.d(this);
    }

    public final void b(Project project) {
        this.f61210b = project;
    }

    @Override
    public final int read(char[] cArr, int i10, int i11) throws IOException {
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = read();
            if (i13 == -1) {
                if (i12 == 0) {
                    return -1;
                }
                return i12;
            }
            cArr[i10 + i12] = (char) i13;
        }
        return i11;
    }

    @Override
    public final long skip(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException("skip value is negative");
        }
        for (long j11 = 0; j11 < j10; j11++) {
            if (read() == -1) {
                return j11;
            }
        }
        return j10;
    }
}
