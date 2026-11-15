package com.mgtv.ssp.fragment;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.mgtv.ssp.SspViewInterface;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.callback.MgSspSdkCallback;
import com.mgtv.ssp.viewcard.BaseVideoListView;
import com.mgtv.ssp.viewcard.BaseView;
import java.util.List;

public abstract class RootFragment extends SspFragment {
    private MgSspSdkCallback a;

    @SuppressLint({"MissingSaveStateAnnotation"})
    private boolean b;
    protected EntranceInfo g;
    protected View h;
    protected SspViewInterface i;
    protected boolean j;

    private void b(boolean z) {
        onHiddenChanged(z);
    }

    public boolean c() {
        boolean z = this.b;
        boolean zE = e();
        this.b = zE;
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface != null && (sspViewInterface instanceof BaseView)) {
            ((BaseView) sspViewInterface).setRealVisible(zE);
        }
        boolean z2 = this.b;
        if (z == z2) {
            return false;
        }
        a(z2);
        return true;
    }

    private boolean e() {
        for (Fragment parentFragment = this; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (!parentFragment.isResumed() || !parentFragment.isVisible() || !getUserVisibleHint()) {
                return false;
            }
        }
        return true;
    }

    public void a() {
    }

    public abstract int b();

    public boolean d() {
        return this.b;
    }

    @Override
    public boolean onClickBack() {
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof BaseVideoListView) {
            return ((BaseVideoListView) sspViewInterface).onBackPress();
        }
        return false;
    }

    @Override
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        if (this.h == null) {
            View viewInflate = layoutInflater.inflate(b(), viewGroup, false);
            this.h = viewInflate;
            viewInflate.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View view) {
                    RootFragment.this.c();
                }

                @Override
                public void onViewDetachedFromWindow(View view) {
                    RootFragment.this.b = false;
                    RootFragment.this.j = false;
                }
            });
            a();
            SspViewInterface sspViewInterface = this.i;
            if (sspViewInterface instanceof BaseVideoListView) {
                ((BaseVideoListView) sspViewInterface).setMgSspSdkCallback(this.a);
                ((BaseVideoListView) this.i).setInfo(this.g);
            }
        }
        return this.h;
    }

    @Override
    public void onHiddenChanged(boolean z) {
        List<Fragment> fragments;
        super.onHiddenChanged(z);
        c();
        try {
            fragments = getChildFragmentManager().getFragments();
        } catch (Exception e) {
            e.printStackTrace();
            fragments = null;
        }
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                try {
                    if (fragment instanceof RootFragment) {
                        ((RootFragment) fragment).b(z);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        c();
    }

    @Override
    public void onResume() {
        super.onResume();
        c();
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        List<Fragment> fragments;
        super.setUserVisibleHint(z);
        if (c()) {
            try {
                fragments = getChildFragmentManager().getFragments();
            } catch (Exception e) {
                e.printStackTrace();
                fragments = null;
            }
            if (fragments != null) {
                for (Fragment fragment : fragments) {
                    try {
                        if (fragment instanceof RootFragment) {
                            ((RootFragment) fragment).c();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    public void a(boolean z) {
        this.j = z;
        Log.i("lyzzzzzzzz", "可见性：" + z);
    }

    public void a(EntranceInfo entranceInfo) {
        this.g = entranceInfo;
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof BaseVideoListView) {
            ((BaseVideoListView) sspViewInterface).setInfo(entranceInfo);
        }
    }

    public void a(MgSspSdkCallback mgSspSdkCallback) {
        this.a = mgSspSdkCallback;
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof BaseVideoListView) {
            ((BaseVideoListView) sspViewInterface).setMgSspSdkCallback(mgSspSdkCallback);
        }
    }
}
