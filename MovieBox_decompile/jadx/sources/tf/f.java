package tf;

import android.graphics.Rect;
import android.view.View;
import androidx.core.text.u;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f extends RecyclerView.l {

    private final float f72727a;

    private final float f72728b;

    private final float f72729c;

    public f() {
        this(0.0f, 0.0f, 0.0f, 7, null);
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
            float f10 = this.f72727a;
            if (f10 > 0.0f) {
                outRect.left = a0.a(f10);
            }
            float f11 = this.f72728b;
            if (f11 > 0.0f) {
                outRect.top = a0.a(f11);
            }
        }
        int iB = state.b() - 1;
        float f12 = this.f72729c;
        if (f12 > 0.0f && this.f72727a > 0.0f) {
            if (childAdapterPosition == 0) {
                outRect.left = a0.a(f12);
            }
            if (childAdapterPosition == iB) {
                outRect.right = a0.a(this.f72729c);
            }
        }
        float f13 = this.f72729c;
        if (f13 > 0.0f && this.f72728b > 0.0f) {
            if (childAdapterPosition == 0) {
                outRect.top = a0.a(f13);
            }
            if (childAdapterPosition == iB) {
                outRect.bottom = a0.a(this.f72729c);
            }
        }
        if (u.a(Locale.getDefault()) == 1) {
            int i10 = outRect.left;
            outRect.left = outRect.right;
            outRect.right = i10;
        }
    }

    public f(float f10, float f11, float f12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11, (i10 & 4) != 0 ? 0.0f : f12);
    }

    public f(float f10, float f11, float f12) {
        this.f72727a = f10;
        this.f72728b = f11;
        this.f72729c = f12;
    }
}
