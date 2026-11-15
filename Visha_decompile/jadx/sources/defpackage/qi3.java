package defpackage;

import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.source.i;

public interface qi3 extends hva {

    public static final class a {
        public final zua a;
        public final int[] b;
        public final int c;

        public a(zua zuaVar, int... iArr) {
            this(zuaVar, iArr, 0);
        }

        public a(zua zuaVar, int[] iArr, int i) {
            if (iArr.length == 0) {
                op5.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.a = zuaVar;
            this.b = iArr;
            this.c = i;
        }
    }

    public interface b {
        qi3[] a(a[] aVarArr, o70 o70Var, i.b bVar, a0 a0Var);
    }

    void disable();

    void enable();

    k getSelectedFormat();

    int getSelectedIndex();

    default void onDiscontinuity() {
    }

    default void onPlayWhenReadyChanged(boolean z) {
    }

    void onPlaybackSpeed(float f);

    default void onRebuffer() {
    }
}
