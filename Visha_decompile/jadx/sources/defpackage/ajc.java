package defpackage;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayList;

public final class ajc extends rm9 {
    public final qw7 o;
    public final vic p;

    public ajc() {
        super("WebvttDecoder");
        this.o = new qw7();
        this.p = new vic();
    }

    public static int x(qw7 qw7Var) {
        int i = -1;
        int iE = 0;
        while (i == -1) {
            iE = qw7Var.e();
            String line = qw7Var.readLine();
            if (line == null) {
                i = 0;
            } else if ("STYLE".equals(line)) {
                i = 2;
            } else {
                i = line.startsWith("NOTE") ? 1 : 3;
            }
        }
        qw7Var.O(iE);
        return i;
    }

    public static void y(qw7 qw7Var) {
        while (!TextUtils.isEmpty(qw7Var.readLine())) {
        }
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        xic xicVarM;
        this.o.M(bArr, i);
        ArrayList arrayList = new ArrayList();
        try {
            bjc.d(this.o);
            while (!TextUtils.isEmpty(this.o.readLine())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iX = x(this.o);
                if (iX == 0) {
                    return new djc(arrayList2);
                }
                if (iX == 1) {
                    y(this.o);
                } else if (iX == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.o.readLine();
                    arrayList.addAll(this.p.d(this.o));
                } else if (iX == 3 && (xicVarM = yic.m(this.o, arrayList)) != null) {
                    arrayList2.add(xicVarM);
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
