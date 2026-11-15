package com.transsion.playercommon.utils.meida;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import defpackage.h16;
import defpackage.hb0;
import defpackage.o5b;

public class TransMp3OkSheetActivity extends RxPermissionOSBottomSheetDialog {
    public AudioItem N;

    public void h0(View view) {
        animateDismiss();
        o5b.f(this, this.N);
        h16.d("vd_vmore_tomp3_sucpop_cl", hb0.KEY_NAME_BTN, "detail");
    }

    public void i0(View view) {
        animateDismiss();
        o5b.h(this, this.N);
        h16.d("vd_vmore_tomp3_sucpop_cl", hb0.KEY_NAME_BTN, PlayAudioData.TAG_NEED_PLAY);
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_trans_complete, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.mContainer);
        if (viewFindViewById != null) {
            ((View) viewFindViewById.getParent()).setPadding(0, 0, 0, 0);
        }
        this.N = (AudioItem) getIntent().getParcelableExtra("data");
        ((Button) viewInflate.findViewById(R.id.btn_detail)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.h0(view);
            }
        });
        ((Button) viewInflate.findViewById(R.id.btn_play)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.i0(view);
            }
        });
        ((TextView) viewInflate.findViewById(R.id.tv_content)).setText(this.N.getDisplayName());
        addPage(viewInflate).setCloseIconVisibility(false);
    }
}
