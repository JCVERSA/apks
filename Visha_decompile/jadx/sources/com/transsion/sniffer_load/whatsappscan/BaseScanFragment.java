package com.transsion.sniffer_load.whatsappscan;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.videomodel.WhatsappViewModel;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.sniffer_load.R;
import com.transsion.widgetslib.view.LoadingView;
import defpackage.e16;
import defpackage.h27;

public class BaseScanFragment extends BaseFragment {
    public WhatsappFile l;
    public FrameLayout m;
    public ImageView n;
    public LoadingView o;

    public static BaseScanFragment S(WhatsappFile whatsappFile) {
        BaseScanFragment baseScanFragment = new BaseScanFragment();
        baseScanFragment.l = whatsappFile;
        return baseScanFragment;
    }

    public void U(View view) {
        R();
    }

    public void R() {
        e16.m();
        this.o.setVisibility(0);
        this.n.setVisibility(8);
        WhatsappViewModel.d0(getContext(), this.l, new WhatsappViewModel.a() {
            @Override
            public final void a(boolean z) {
                this.a.T(z);
            }
        });
    }

    public final void T(boolean z) {
        if (z) {
            this.l.setStatus(1);
            h27.c().e(1179, this.l);
        }
        this.m.setVisibility(8);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("scan_whatsapp_file_base", this.l);
        super.onSaveInstanceState(bundle);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            this.l = (WhatsappFile) bundle.getParcelable("scan_whatsapp_file_base");
        }
        this.m = (FrameLayout) view.findViewById(R.id.download_container);
        this.o = (LoadingView) view.findViewById(R.id.pb_saving);
        this.n = (ImageView) view.findViewById(R.id.download);
        this.m.setVisibility(this.l.isSaved() ? 8 : 0);
        this.m.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.U(view2);
            }
        });
        if (this.l.isSaved()) {
            return;
        }
        e16.n();
    }
}
