package com.transsion.onlinevideo.adapter;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailFragment;
import com.transsion.onlinevideo.mangotv.shorts.ShortVideoDetail;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.TrassionFragmentStateAdapter;
import java.util.ArrayList;
import java.util.List;

public class ShortPlayerBannerAdapter<T extends ShortVideoDetail> extends TrassionFragmentStateAdapter {
    public final boolean A;
    public int B;
    public a C;
    public b D;
    public final BaseActivity x;
    public final List y;
    public int z;

    public interface a {
        void a(int i);
    }

    public interface b {
        void a(ShortPlayerDetailFragment shortPlayerDetailFragment, Object obj, int i, boolean z);
    }

    public ShortPlayerBannerAdapter(FragmentActivity fragmentActivity, boolean z) {
        super(fragmentActivity);
        this.y = new ArrayList();
        this.z = -1;
        this.B = -1;
        this.x = (BaseActivity) fragmentActivity;
        this.A = z;
    }

    public int A() {
        return this.y.size();
    }

    public int B() {
        return 0;
    }

    public int C(long j) {
        if (this.A) {
            return -1;
        }
        for (int i = 0; i < this.y.size(); i++) {
            if (j == ((ShortVideoDetail) this.y.get(i)).getVideoSerial().getSerialId()) {
                return i;
            }
        }
        return -1;
    }

    public final void D(int i) {
        Fragment fragment = (Fragment) this.q.get(getItemId(i));
        if (fragment instanceof ShortPlayerDetailFragment) {
            this.D.a((ShortPlayerDetailFragment) fragment, (ShortVideoDetail) this.y.get(i), i, true);
            return;
        }
        LogUtils.O("ShortPlayerBannerAdapter", "Fragment not ready for position: " + i);
        this.B = i;
    }

    public void E(int i) {
        F(i, false);
    }

    public void F(final int i, boolean z) {
        LogUtils.v("ShortPlayerBannerAdapter", "onPageSelected: " + i);
        if (i < 0 || i >= this.y.size()) {
            return;
        }
        if (i != this.z || z) {
            ShortPlayerDetailFragment shortPlayerDetailFragmentY = y();
            if (shortPlayerDetailFragmentY != null) {
                shortPlayerDetailFragmentY.onUnSelectInViewPage();
            }
            this.z = i;
            v();
            if (this.D != null) {
                this.x.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.D(i);
                    }
                });
            }
        }
    }

    public void G(List list) {
        if (list != null) {
            this.y.clear();
            this.y.addAll(list);
            notifyDataSetChanged();
        }
    }

    @Override
    public boolean containsItem(long j) {
        return j >= 0 && j < ((long) this.y.size());
    }

    @Override
    public Fragment createFragment(int i) {
        ShortVideoDetail shortVideoDetail;
        LogUtils.i("ShortPlayerBannerAdapter", "createFragment for position: " + i, "isPreview: " + this.A);
        ShortPlayerDetailFragment shortPlayerDetailFragment = new ShortPlayerDetailFragment(this.A);
        BaseActivity baseActivity = this.x;
        if (baseActivity != null) {
            shortPlayerDetailFragment.setBaseActivity(baseActivity);
        }
        if (i >= 0 && i < this.y.size() && (shortVideoDetail = (ShortVideoDetail) this.y.get(i)) != null && this.D != null) {
            if (!shortPlayerDetailFragment.isAdded() || shortPlayerDetailFragment.isDetached()) {
                int i2 = this.B;
                if (i2 != -1 && i == i2) {
                    shortPlayerDetailFragment.a1(shortVideoDetail);
                }
            } else {
                this.D.a(shortPlayerDetailFragment, shortVideoDetail, i, i == this.z);
            }
        }
        return shortPlayerDetailFragment;
    }

    @Override
    public int getItemCount() {
        return this.y.size();
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    public void setOnBoundaryReachedListener(a aVar) {
        this.C = aVar;
    }

    public void setOnFragmentUpdateListener(b bVar) {
        this.D = bVar;
    }

    public void u(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.y.addAll(list);
        Log.d("ShortPlayerBannerAdapter", "Appended " + list.size() + " items, total size: " + this.y.size());
        notifyDataSetChanged();
    }

    public final void v() {
        if (this.C == null || this.y.isEmpty() || this.z < this.y.size() - 4) {
            return;
        }
        Log.d("ShortPlayerBannerAdapter", "Approaching end boundary at position: " + this.z);
        this.C.a(this.z);
    }

    public void w() {
        this.y.clear();
        this.z = 0;
        notifyDataSetChanged();
    }

    public int x() {
        return this.z;
    }

    public ShortPlayerDetailFragment y() {
        int i = this.z;
        if (i < 0 || i >= this.y.size()) {
            return null;
        }
        Fragment fragment = (Fragment) this.q.get(getItemId(this.z));
        if (!(fragment instanceof ShortPlayerDetailFragment)) {
            return null;
        }
        ShortPlayerDetailFragment shortPlayerDetailFragment = (ShortPlayerDetailFragment) fragment;
        if ((this.x.isInPictureInPictureMode() || shortPlayerDetailFragment.isAdded()) && !shortPlayerDetailFragment.isDetached()) {
            return shortPlayerDetailFragment;
        }
        return null;
    }

    public ShortVideoDetail z(int i) {
        if (i < 0 || i >= this.y.size()) {
            return null;
        }
        return (ShortVideoDetail) this.y.get(i);
    }
}
