package vp;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CornerTextView;
import com.transsion.search.R$id;
import com.transsnet.downloader.widget.DownloadView;

public final class m implements f4.a {

    private final View f73763a;

    public final ShapeableImageView f73764b;

    public final CornerTextView f73765c;

    public final View f73766d;

    public final DownloadView f73767e;

    public final RecyclerView f73768f;

    public final LinearLayout f73769g;

    public final AppCompatTextView f73770h;

    public final AppCompatTextView f73771i;

    public final AppCompatTextView f73772j;

    private m(View view, ShapeableImageView shapeableImageView, CornerTextView cornerTextView, View view2, DownloadView downloadView, RecyclerView recyclerView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f73763a = view;
        this.f73764b = shapeableImageView;
        this.f73765c = cornerTextView;
        this.f73766d = view2;
        this.f73767e = downloadView;
        this.f73768f = recyclerView;
        this.f73769g = linearLayout;
        this.f73770h = appCompatTextView;
        this.f73771i = appCompatTextView2;
        this.f73772j = appCompatTextView3;
    }

    public static m a(View view) {
        View viewA;
        int i10 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.ivSearchCorner;
            CornerTextView cornerTextView = (CornerTextView) f4.b.a(view, i10);
            if (cornerTextView != null && (viewA = f4.b.a(view, (i10 = R$id.line))) != null) {
                i10 = R$id.llDownload;
                DownloadView downloadView = (DownloadView) f4.b.a(view, i10);
                if (downloadView != null) {
                    i10 = R$id.rvSeasons;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.tagContentLL;
                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                        if (linearLayout != null) {
                            i10 = R$id.tvSubject;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tvSubjectScore;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    i10 = R$id.tvSubjectYear;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView3 != null) {
                                        return new m(view, shapeableImageView, cornerTextView, viewA, downloadView, recyclerView, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        return this.f73763a;
    }
}
