package com.transsion.rewardscenter.task.ad;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import kotlin.jvm.internal.Intrinsics;

public final class w extends com.transsion.ad.bidding.base.u {

    private final yo.k f49151b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        yo.k kVarC = yo.k.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(kVarC, "inflate(...)");
        this.f49151b = kVarC;
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
        return null;
    }

    @Override
    public TextView e() {
        return null;
    }

    @Override
    public ImageView f() {
        ImageView adIcon = this.f49151b.f76362b;
        Intrinsics.g(adIcon, "adIcon");
        return adIcon;
    }

    @Override
    public MediaView g() {
        return null;
    }

    @Override
    public StoreMarkView h() {
        return null;
    }

    @Override
    public View i() {
        ConstraintLayout root = this.f49151b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override
    public TextView j() {
        AppCompatTextView adTitle = this.f49151b.f76363c;
        Intrinsics.g(adTitle, "adTitle");
        return adTitle;
    }
}
