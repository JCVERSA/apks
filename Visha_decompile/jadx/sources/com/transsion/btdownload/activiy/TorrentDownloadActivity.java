package com.transsion.btdownload.activiy;

import android.os.Bundle;
import androidx.p004lifecycle.ViewModelProvider;
import com.transsion.bt_download.R;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.a64;
import defpackage.pk0;

public class TorrentDownloadActivity extends BaseActivity {
    public TorrentItemViewModel N;

    @Override
    public void onBackPressed() {
        if (a64.a(this)) {
            return;
        }
        TorrentItemViewModel torrentItemViewModel = this.N;
        if (torrentItemViewModel == null || !torrentItemViewModel.n()) {
            super.onBackPressed();
        } else {
            this.N.G(false);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        getWindow().setNavigationBarColor(getColor(R.color.transparent));
        super.onCreate(bundle);
        setContentView(R.layout.activity_torrent_download);
        pk0.f().n(getApplicationContext());
        a64.i(this, new TorrentItemFragment().setBaseActivity(this), false);
        this.N = (TorrentItemViewModel) new ViewModelProvider(this).get(TorrentItemViewModel.class);
    }

    @Override
    public void onStart() {
        super.onStart();
        this.N.j();
    }

    @Override
    public void onStop() {
        super.onStop();
        this.N.E();
    }
}
