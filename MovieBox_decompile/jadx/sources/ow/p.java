package ow;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import kotlin.jvm.internal.Intrinsics;

public final class p extends com.transsion.ad.bidding.base.u {

    private final pw.b f68938b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        pw.b bVarC = pw.b.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(bVarC, "inflate(...)");
        this.f68938b = bVarC;
    }

    @Override
    public AdChoicesView a() {
        return this.f68938b.f69284b;
    }

    @Override
    public AdCloseView b() {
        return null;
    }

    @Override
    public TextView c() {
        return this.f68938b.f69286d;
    }

    @Override
    public TextView e() {
        return null;
    }

    @Override
    public ImageView f() {
        return null;
    }

    @Override
    public MediaView g() {
        MediaView nativeAdMedia = this.f68938b.f69287e;
        Intrinsics.g(nativeAdMedia, "nativeAdMedia");
        return nativeAdMedia;
    }

    @Override
    public StoreMarkView h() {
        return null;
    }

    @Override
    public View i() {
        ConstraintLayout root = this.f68938b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override
    public TextView j() {
        return null;
    }
}
