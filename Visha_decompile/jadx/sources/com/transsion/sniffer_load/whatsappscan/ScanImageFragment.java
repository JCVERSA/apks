package com.transsion.sniffer_load.whatsappscan;

import android.os.Bundle;
import android.view.View;
import com.bumptech.glide.Glide;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.sniffer_load.R;
import com.transsion.widgets.ScaleTouchView.OnScaleChangedListener;
import com.transsion.widgets.ScaleTouchView.PhotoView;
import defpackage.e16;

public class ScanImageFragment extends BaseScanFragment {
    public PhotoView p;
    public long q;

    public static ScanImageFragment W(WhatsappFile whatsappFile) {
        ScanImageFragment scanImageFragment = new ScanImageFragment();
        scanImageFragment.l = whatsappFile;
        return scanImageFragment;
    }

    public final void X(float f, float f2, float f3) {
        if (System.currentTimeMillis() - this.q > 2000) {
            e16.r();
        }
        this.q = System.currentTimeMillis();
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_scan_img;
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("scan_whatsapp_file_image", this.l);
        super.onSaveInstanceState(bundle);
    }

    @Override
    public void onStop() {
        super.onStop();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            this.l = (WhatsappFile) bundle.getParcelable("scan_whatsapp_file_image");
        }
        this.p = (PhotoView) view.findViewById(R.id.photo_view);
        Glide.with(getContext()).load(this.l.getDocumentFile() == null ? this.l.getFilePath() : this.l.getDocumentFile().getUri()).into(this.p);
        this.p.setOnScaleChangeListener(new OnScaleChangedListener() {
            @Override
            public final void onScaleChange(float f, float f2, float f3) {
                this.a.X(f, f2, f3);
            }
        });
    }
}
