package com.transsion.sniffer_load.whatsappscan;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.playercommon.adapter.ScanPageAdapter;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.whatsappscan.ScanMainFragment;
import defpackage.e16;
import defpackage.v19;
import defpackage.z19;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ScanMainFragment extends BaseFragment {
    public ScanPageAdapter l;
    public ViewPager n;
    public List p;
    public int q;
    public List m = new ArrayList();
    public int o = 0;

    public class a implements ViewPager.OnPageChangeListener {
        public a() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            if (i == 1) {
                e16.q();
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            Log.e("ScanMainFragment", "onPageSelected " + i);
            try {
                if (ScanMainFragment.this.m.get(i) instanceof ScanVideoFragment) {
                    ((ScanVideoFragment) ScanMainFragment.this.m.get(i)).h0();
                }
            } catch (Exception unused) {
                LogUtils.j("ScanActivity", "onPageSelected exception");
            }
        }
    }

    public void S(View view) {
        this.mActivity.finish();
        e16.l();
    }

    public static void T(BaseScanFragment baseScanFragment) {
        ((ScanVideoFragment) baseScanFragment).h0();
    }

    public final void R(Bundle bundle) {
        this.m.clear();
        if (bundle != null) {
            this.p = bundle.getParcelableArrayList("scan_whatsapp_file_list");
            this.q = bundle.getInt("scan_whatsapp_cur_position");
        } else {
            this.p = v19.b();
            this.q = v19.a();
        }
        Iterator it = this.p.iterator();
        while (it.hasNext()) {
            this.m.add(z19.a((WhatsappFile) it.next()));
        }
    }

    public final void U(Bundle bundle) {
        R(bundle);
        this.l = new ScanPageAdapter(getChildFragmentManager(), this.m);
        this.n.setOffscreenPageLimit(5);
        this.n.setAdapter(this.l);
        this.n.setCurrentItem(this.q);
        this.n.addOnPageChangeListener(new a());
        final BaseScanFragment baseScanFragment = (BaseScanFragment) this.m.get(this.q);
        if (baseScanFragment instanceof ScanVideoFragment) {
            new Handler().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ScanMainFragment.T(baseScanFragment);
                }
            }, 500L);
            this.o = 1;
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.activity_san;
    }

    @Override
    public void onResume() {
        super.onResume();
        e16.p(this.o);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelableArrayList("scan_whatsapp_file_list", (ArrayList) this.p);
        bundle.putInt("scan_whatsapp_cur_position", this.q);
        super.onSaveInstanceState(bundle);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.S(view2);
            }
        });
        this.n = (ViewPager) view.findViewById(R.id.view_pager);
        U(bundle);
    }
}
