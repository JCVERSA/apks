package tf;

import android.graphics.Rect;
import android.view.View;
import androidx.core.text.u;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e extends RecyclerView.l {

    private final float f72723a;

    private final float f72724b;

    private final float f72725c;

    private final float f72726d;

    public e() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 15, null);
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition != 0) {
            float f10 = this.f72723a;
            if (f10 > 0.0f) {
                outRect.left = a0.a(f10);
            }
            float f11 = this.f72724b;
            if (f11 > 0.0f) {
                outRect.top = a0.a(f11);
            }
        }
        int iB = state.b() - 1;
        float f12 = this.f72725c;
        if (f12 > 0.0f && this.f72723a > 0.0f && childAdapterPosition == 0) {
            outRect.left = a0.a(f12);
        }
        float f13 = this.f72726d;
        if (f13 > 0.0f && this.f72723a > 0.0f && childAdapterPosition == iB) {
            outRect.right = a0.a(f13);
        }
        float f14 = this.f72725c;
        if (f14 > 0.0f && this.f72724b > 0.0f && childAdapterPosition == 0) {
            outRect.top = a0.a(f14);
        }
        float f15 = this.f72726d;
        if (f15 > 0.0f && this.f72724b > 0.0f && childAdapterPosition == iB) {
            outRect.bottom = a0.a(f15);
        }
        if (u.a(Locale.getDefault()) == 1) {
            int i10 = outRect.left;
            outRect.left = outRect.right;
            outRect.right = i10;
        }
    }

    public e(float f10, float f11, float f12, float f13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11, (i10 & 4) != 0 ? 0.0f : f12, (i10 & 8) != 0 ? 0.0f : f13);
    }

    public e(float f10, float f11, float f12, float f13) {
        this.f72723a = f10;
        this.f72724b = f11;
        this.f72725c = f12;
        this.f72726d = f13;
    }
}
