package ow;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import kotlin.jvm.internal.Intrinsics;

public final class s extends com.transsion.ad.bidding.base.u {

    private final pw.d f68939b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        pw.d dVarC = pw.d.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(dVarC, "inflate(...)");
        this.f68939b = dVarC;
    }

    @Override
    public AdChoicesView a() {
        return null;
    }

    @Override
    public AdCloseView b() {
        return null;
    }

    @Override
    public TextView c() {
        return this.f68939b.f69296c;
    }

    @Override
    public TextView e() {
        return this.f68939b.f69298e;
    }

    @Override
    public ImageView f() {
        AppCompatImageView nativeAdIcon = this.f68939b.f69299f;
        Intrinsics.g(nativeAdIcon, "nativeAdIcon");
        return nativeAdIcon;
    }

    @Override
    public MediaView g() {
        MediaView nativeAdMedia = this.f68939b.f69300g;
        Intrinsics.g(nativeAdMedia, "nativeAdMedia");
        return nativeAdMedia;
    }

    @Override
    public StoreMarkView h() {
        return null;
    }

    @Override
    public View i() {
        CardView root = this.f68939b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override
    public TextView j() {
        return this.f68939b.f69302i;
    }
}
