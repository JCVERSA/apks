package xt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

public final class c implements f4.a {

    private final ConstraintLayout f75440a;

    public final AppCompatImageView f75441b;

    public final ConstraintLayout f75442c;

    public final DecoratedBarcodeView f75443d;

    private c(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, DecoratedBarcodeView decoratedBarcodeView) {
        this.f75440a = constraintLayout;
        this.f75441b = appCompatImageView;
        this.f75442c = constraintLayout2;
        this.f75443d = decoratedBarcodeView;
    }

    public static c a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i11 = R$id.zxing_barcode_scanner;
            DecoratedBarcodeView decoratedBarcodeView = (DecoratedBarcodeView) f4.b.a(view, i11);
            if (decoratedBarcodeView != null) {
                return new c(constraintLayout, appCompatImageView, constraintLayout, decoratedBarcodeView);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_wifi_connect, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75440a;
    }
}
