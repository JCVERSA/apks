package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class l implements f4.a {

    private final ConstraintLayout f75660a;

    public final AppCompatImageView f75661b;

    public final ConstraintLayout f75662c;

    public final ImageView f75663d;

    public final DecoratedBarcodeView f75664e;

    private l(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, ImageView imageView, DecoratedBarcodeView decoratedBarcodeView) {
        this.f75660a = constraintLayout;
        this.f75661b = appCompatImageView;
        this.f75662c = constraintLayout2;
        this.f75663d = imageView;
        this.f75664e = decoratedBarcodeView;
    }

    public static l a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.v_status_space;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.zxing_barcode_scanner;
                DecoratedBarcodeView decoratedBarcodeView = (DecoratedBarcodeView) f4.b.a(view, i10);
                if (decoratedBarcodeView != null) {
                    return new l(constraintLayout, appCompatImageView, constraintLayout, imageView, decoratedBarcodeView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_profile_qr_code, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75660a;
    }
}
