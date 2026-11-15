package com.transsion.sniffer_load.whatsappscan;

import android.os.Bundle;
import android.view.Window;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.R;
import defpackage.a64;
import defpackage.v19;
import java.util.ArrayList;
import java.util.List;

public class ScanActivity extends BaseActivity {
    public List N;
    public int O;

    public void initBackground() {
        Window window = getWindow();
        int i = R.color.black;
        window.setBackgroundDrawableResource(i);
        getWindow().setStatusBarColor(getResources().getColor(i));
        getWindow().setNavigationBarColor(getResources().getColor(R.color.bottom_player_operate_bar_dark));
        getWindow().getDecorView().getSystemUiVisibility();
        getWindow().getDecorView().setSystemUiVisibility(0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        initBackground();
        if (bundle != null) {
            this.N = bundle.getParcelableArrayList("scan_whatsapp_file_list");
            this.O = bundle.getInt("scan_whatsapp_cur_position");
            v19.e(this.N);
            v19.d(this.O);
        } else {
            this.N = v19.b();
            this.O = v19.a();
        }
        a64.i(this, (ScanMainFragment) new ScanMainFragment().setBaseActivity(this), false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        v19.c();
        v19.d(0);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelableArrayList("scan_whatsapp_file_list", (ArrayList) this.N);
        bundle.putInt("scan_whatsapp_cur_position", this.O);
        super.onSaveInstanceState(bundle);
    }
}
