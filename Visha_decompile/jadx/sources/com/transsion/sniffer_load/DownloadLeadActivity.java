package com.transsion.sniffer_load;

import android.content.res.Configuration;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.utils.BaseConstant;
import defpackage.b39;
import defpackage.d39;
import defpackage.p06;

public class DownloadLeadActivity extends RxPermissionOSBottomSheetDialog {
    public Button N;
    public ImageView O;
    public int P;
    public int Q;
    public BaseConstant.SCREEN_TYPE R;

    public void i0(View view) {
        animateDismiss();
        LiveEventBus.b().c("skip_download_guide", Boolean.TRUE);
        p06.f0(null, "guide_dl_popup_check_cl", 9324L);
    }

    public void j0(View view) {
        animateDismiss();
        p06.f0(null, "guide_dl_popup_close_cl", 9324L);
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return false;
    }

    public final void h0() {
        if (this.N == null) {
            return;
        }
        BaseConstant.SCREEN_TYPE screen_typeA = b39.a(this);
        this.R = screen_typeA;
        if (screen_typeA == BaseConstant.SCREEN_TYPE.OPEN_PORT || screen_typeA == BaseConstant.SCREEN_TYPE.OPEN_LAND) {
            this.P = 306;
        } else {
            this.P = IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID;
        }
        this.Q = 36;
        ViewGroup.LayoutParams layoutParams = this.N.getLayoutParams();
        layoutParams.width = d39.a(this, this.P);
        layoutParams.height = d39.a(this, this.Q);
        this.N.setLayoutParams(layoutParams);
    }

    @Override
    public void initView() {
        super.initView();
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_for_download_guide, (ViewGroup) null);
        this.N = (Button) viewInflate.findViewById(R.id.btn_dialog_download_detail);
        this.O = (ImageView) viewInflate.findViewById(R.id.close_btn);
        p06.f0(null, "guide_dl_popup_show", 9324L);
        this.N.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.i0(view);
            }
        });
        this.O.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.j0(view);
            }
        });
        addPage(viewInflate).setTitleLayoutVisible(false);
        h0();
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        h0();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }
}
