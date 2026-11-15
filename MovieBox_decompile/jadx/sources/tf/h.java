package tf;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class h extends RecyclerView.l {

    private int f72732a;

    private int f72733b;

    private float f72734c;

    private float f72735d;

    private float f72736e;

    public h(int i10, int i11) {
        this.f72732a = i10;
        if (i11 > 1) {
            int iA = a0.a(((i11 - 1) * 8) + 24.0f) / i11;
            float fA = a0.a(12.0f);
            this.f72735d = fA;
            float f10 = iA;
            this.f72734c = f10 - fA;
            this.f72736e = f10 / 2.0f;
        }
    }

    public final void d(int i10) {
        this.f72733b = i10;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (adapter != null && childAdapterPosition == adapter.getItemCount() - 1) {
            outRect.bottom = 0;
        } else if (this.f72733b != 0 && (Intrinsics.c(view.getTag(), "TrendingTitle") || Intrinsics.c(view.getTag(), "UGCFeedsBig"))) {
            outRect.bottom = this.f72733b;
        } else if (Intrinsics.c(view.getTag(), "TrendingMargin")) {
            outRect.bottom = 0;
        } else {
            outRect.bottom = this.f72732a;
        }
        RecyclerView.m layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            int iU = gridLayoutManager.U();
            int iF = gridLayoutManager.Y().f(childAdapterPosition);
            int iE = gridLayoutManager.Y().e(childAdapterPosition, iU);
            if (iF == iU) {
                return;
            }
            float f10 = this.f72735d;
            if (f10 > 0.0f) {
                if (iE == 0) {
                    outRect.left = (int) f10;
                    outRect.right = (int) this.f72734c;
                } else if (iE == iU - iF) {
                    outRect.left = (int) this.f72734c;
                    outRect.right = (int) f10;
                } else {
                    float f11 = this.f72736e;
                    outRect.left = (int) f11;
                    outRect.right = (int) f11;
                }
                outRect.bottom = this.f72733b;
            }
            if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                int i10 = outRect.left;
                outRect.left = outRect.right;
                outRect.right = i10;
            }
        }
    }
}
