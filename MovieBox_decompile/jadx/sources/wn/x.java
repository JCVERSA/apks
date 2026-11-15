package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.transsion.postdetail.R$id;

public final class x implements f4.a {

    private final View f74640a;

    public final AppCompatImageView f74641b;

    public final AppCompatTextView f74642c;

    public final AppCompatTextView f74643d;

    public final ShapeableImageView f74644e;

    public final BLLinearLayout f74645f;

    public final BLLinearLayout f74646g;

    public final RecyclerView f74647h;

    public final AppCompatTextView f74648i;

    public final BLTextView f74649j;

    private x(View view, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ShapeableImageView shapeableImageView, BLLinearLayout bLLinearLayout, BLLinearLayout bLLinearLayout2, RecyclerView recyclerView, AppCompatTextView appCompatTextView3, BLTextView bLTextView) {
        this.f74640a = view;
        this.f74641b = appCompatImageView;
        this.f74642c = appCompatTextView;
        this.f74643d = appCompatTextView2;
        this.f74644e = shapeableImageView;
        this.f74645f = bLLinearLayout;
        this.f74646g = bLLinearLayout2;
        this.f74647h = recyclerView;
        this.f74648i = appCompatTextView3;
        this.f74649j = bLTextView;
    }

    public static x a(View view) {
        int i10 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.iv_cover;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                    if (shapeableImageView != null) {
                        i10 = R$id.ll_detail;
                        BLLinearLayout bLLinearLayout = (BLLinearLayout) f4.b.a(view, i10);
                        if (bLLinearLayout != null) {
                            i10 = R$id.ll_download;
                            BLLinearLayout bLLinearLayout2 = (BLLinearLayout) f4.b.a(view, i10);
                            if (bLLinearLayout2 != null) {
                                i10 = R$id.recycler_view_ep;
                                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                if (recyclerView != null) {
                                    i10 = R$id.tv_ep_title;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView3 != null) {
                                        i10 = R$id.tv_more;
                                        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                                        if (bLTextView != null) {
                                            return new x(view, appCompatImageView, appCompatTextView, appCompatTextView2, shapeableImageView, bLLinearLayout, bLLinearLayout2, recyclerView, appCompatTextView3, bLTextView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f74640a;
    }
}
