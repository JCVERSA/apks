package com.transsion.mimedia.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.core.content.res.ResourcesCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.mimedia.R;
import com.transsion.mimedia.activity.CloudLoginActivity;
import com.transsion.palmsdk.b;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import defpackage.f5;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/transsion/mimedia/activity/CloudLoginActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "initView", "Landroid/app/Activity;", "activity", "h0", "(Landroid/app/Activity;)V", "", "isFixedHeight", "()Z", "getDragHandlerVisibility", "Landroid/view/ViewGroup;", "N", "Landroid/view/ViewGroup;", "mClCloudInfo", "O", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudLoginActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public ViewGroup mClCloudInfo;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            f5.c(new Intent(context, (Class<?>) CloudLoginActivity.class), context);
        }

        public Companion() {
        }
    }

    public static final void g0(CloudLoginActivity cloudLoginActivity, View view) {
        cloudLoginActivity.h0(cloudLoginActivity);
        cloudLoginActivity.animateDismiss();
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return true;
    }

    public final void h0(Activity activity) {
        if (activity != null) {
            b.g(activity);
        }
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_cloud_login, (ViewGroup) null);
        y45.i(viewInflate, "inflate(...)");
        this.mClCloudInfo = (ViewGroup) viewInflate.findViewById(R.id.ll_cloud_info);
        ((Button) viewInflate.findViewById(R.id.btn_login)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CloudLoginActivity.g0(this.b, view);
            }
        });
        Drawable drawable = ResourcesCompat.getDrawable(getResources(), R.drawable.bg_cloud_des, getTheme());
        if (drawable != null) {
            drawable.setAlpha(30);
        }
        ViewGroup viewGroup = this.mClCloudInfo;
        if (viewGroup != null) {
            viewGroup.setBackground(drawable);
        }
        addPage(viewInflate).setCloseIconVisibility(false);
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
}
