package com.transsion.sniffer_load;

import android.view.View;
import android.widget.Button;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import defpackage.hb0;
import defpackage.p06;

public class SSYoutubeDialogActivity extends RxPermissionOSBottomSheetDialog {
    public void g0(View view) {
        hb0.markDirect("dl_brower_rp_ldend_ssguide_go");
        setResult(-1);
        animateDismiss();
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return false;
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = View.inflate(this, R.layout.dialog_for_ssytb_download_button, null);
        addPage(viewInflate).setTitleLayoutVisible(true).setCloseIconVisibility(true);
        initView(viewInflate);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        p06.d0("dl_brower_rp_c_adl_guide_close_cl");
    }

    private void initView(View view) {
        ((Button) view.findViewById(R.id.btn_confirm)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.g0(view2);
            }
        });
    }
}
