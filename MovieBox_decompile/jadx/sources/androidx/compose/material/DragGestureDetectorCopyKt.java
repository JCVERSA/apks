package androidx.compose.material;

import androidx.compose.ui.input.pointer.h0;
import androidx.compose.ui.input.pointer.v;
import androidx.compose.ui.input.pointer.w;
import androidx.compose.ui.platform.o2;
import java.util.List;

public abstract class DragGestureDetectorCopyKt {

    private static final float f3047a;

    private static final float f3048b;

    private static final float f3049c;

    static {
        float fG = o0.i.g((float) 0.125d);
        f3047a = fG;
        float fG2 = o0.i.g(18);
        f3048b = fG2;
        f3049c = fG / fG2;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dc A[LOOP:0: B:25:0x00c5->B:29:0x00dc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:64:0x00e4 A[EDGE_INSN: B:64:0x00e4->B:31:0x00e4 BREAK  A[LOOP:0: B:25:0x00c5->B:29:0x00dc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x011b -> B:47:0x0126). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x015c -> B:54:0x015e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x017e -> B:47:0x0126). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(androidx.compose.ui.input.pointer.c r20, long r21, int r23, kotlin.jvm.functions.Function2 r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.DragGestureDetectorCopyKt.a(androidx.compose.ui.input.pointer.c, long, int, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final boolean b(androidx.compose.ui.input.pointer.o oVar, long j10) {
        Object obj;
        List listB = oVar.b();
        int size = listB.size();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                obj = null;
                break;
            }
            obj = listB.get(i10);
            if (v.d(((w) obj).f(), j10)) {
                break;
            }
            i10++;
        }
        w wVar = (w) obj;
        if (wVar != null && wVar.i()) {
            z10 = true;
        }
        return true ^ z10;
    }

    public static final float c(o2 o2Var, int i10) {
        return h0.g(i10, h0.f4689a.b()) ? o2Var.f() * f3049c : o2Var.f();
    }
}
