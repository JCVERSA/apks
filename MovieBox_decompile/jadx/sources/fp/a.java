package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.TitleLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class a implements f4.a {

    private final NestedScrollView f60282a;

    public final AppCompatEditText f60283b;

    public final AppCompatEditText f60284c;

    public final ShapeableImageView f60285d;

    public final TitleLayout f60286e;

    public final AppCompatTextView f60287f;

    public final AppCompatTextView f60288g;

    public final AppCompatTextView f60289h;

    private a(NestedScrollView nestedScrollView, AppCompatEditText appCompatEditText, AppCompatEditText appCompatEditText2, ShapeableImageView shapeableImageView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f60282a = nestedScrollView;
        this.f60283b = appCompatEditText;
        this.f60284c = appCompatEditText2;
        this.f60285d = shapeableImageView;
        this.f60286e = titleLayout;
        this.f60287f = appCompatTextView;
        this.f60288g = appCompatTextView2;
        this.f60289h = appCompatTextView3;
    }

    public static a a(View view) {
        int i10 = R$id.et_community_desc;
        AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
        if (appCompatEditText != null) {
            i10 = R$id.et_community_name;
            AppCompatEditText appCompatEditText2 = (AppCompatEditText) f4.b.a(view, i10);
            if (appCompatEditText2 != null) {
                i10 = R$id.iv_avatar;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null) {
                    i10 = R$id.tool_bar;
                    TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                    if (titleLayout != null) {
                        i10 = R$id.tv_comfirm;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tv_desc;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null) {
                                i10 = R$id.tv_name;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView3 != null) {
                                    return new a((NestedScrollView) view, appCompatEditText, appCompatEditText2, shapeableImageView, titleLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_create_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public NestedScrollView getRoot() {
        return this.f60282a;
    }
}
