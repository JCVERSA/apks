package com.transsion.ad.test.ad_example;

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
import sh.z;

public final class w extends com.transsion.ad.bidding.base.u {

    private final z f41277b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        z zVarC = z.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(zVarC, "inflate(...)");
        this.f41277b = zVarC;
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
        return this.f41277b.f72195c;
    }

    @Override
    public TextView e() {
        return this.f41277b.f72197e;
    }

    @Override
    public ImageView f() {
        AppCompatImageView nativeAdIcon = this.f41277b.f72198f;
        Intrinsics.g(nativeAdIcon, "nativeAdIcon");
        return nativeAdIcon;
    }

    @Override
    public MediaView g() {
        MediaView nativeAdMedia = this.f41277b.f72199g;
        Intrinsics.g(nativeAdMedia, "nativeAdMedia");
        return nativeAdMedia;
    }

    @Override
    public StoreMarkView h() {
        return null;
    }

    @Override
    public View i() {
        CardView root = this.f41277b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override
    public TextView j() {
        return this.f41277b.f72201i;
    }
}
