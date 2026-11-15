package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadPathEntranceView;
import com.transsnet.downloader.widget.DownloadView;

public final class g0 implements f4.a {

    private final FrameLayout f16054a;

    public final s0 f16055b;

    public final ImageView f16056c;

    public final View f16057d;

    public final LinearLayoutCompat f16058e;

    public final DownloadView f16059f;

    public final AppCompatTextView f16060g;

    public final View f16061h;

    public final DownloadPathEntranceView f16062i;

    private g0(FrameLayout frameLayout, s0 s0Var, ImageView imageView, View view, LinearLayoutCompat linearLayoutCompat, DownloadView downloadView, AppCompatTextView appCompatTextView, View view2, DownloadPathEntranceView downloadPathEntranceView) {
        this.f16054a = frameLayout;
        this.f16055b = s0Var;
        this.f16056c = imageView;
        this.f16057d = view;
        this.f16058e = linearLayoutCompat;
        this.f16059f = downloadView;
        this.f16060g = appCompatTextView;
        this.f16061h = view2;
        this.f16062i = downloadPathEntranceView;
    }

    public static g0 a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.included_content;
        View viewA3 = f4.b.a(view, i10);
        if (viewA3 != null) {
            s0 s0VarA = s0.a(viewA3);
            i10 = R$id.iv_close;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null && (viewA = f4.b.a(view, (i10 = R$id.line))) != null) {
                i10 = R$id.ll_content;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                if (linearLayoutCompat != null) {
                    i10 = R$id.tv_download;
                    DownloadView downloadView = (DownloadView) f4.b.a(view, i10);
                    if (downloadView != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_bottom))) != null) {
                            i10 = R$id.v_path_entrance;
                            DownloadPathEntranceView downloadPathEntranceView = (DownloadPathEntranceView) f4.b.a(view, i10);
                            if (downloadPathEntranceView != null) {
                                return new g0((FrameLayout) view, s0VarA, imageView, viewA, linearLayoutCompat, downloadView, appCompatTextView, viewA2, downloadPathEntranceView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_single_res, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16054a;
    }
}
