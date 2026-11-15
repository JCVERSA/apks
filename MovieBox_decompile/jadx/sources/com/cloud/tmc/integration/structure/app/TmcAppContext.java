package com.cloud.tmc.integration.structure.app;

import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.proxy.IFragmentManagerFactory;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.ui.fragment.IFragmentManager;
import com.cloud.tmc.integration.utils.CommonUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import java.util.HashMap;
import java.util.Map;

public class TmcAppContext extends BaseAppContext {
    private static final String TAG = "Tmcintegration:AppContext";
    private Map<Class, Object> mData;
    protected ViewGroup mPageContainer;
    protected ViewGroup mTabContainer;

    public TmcAppContext(App app, ViewGroup viewGroup, ViewGroup viewGroup2, FragmentActivity fragmentActivity) {
        super(app, fragmentActivity);
        this.mData = new HashMap();
        this.mPageContainer = viewGroup;
        this.mTabContainer = viewGroup2;
    }

    public <T> void addData(Class<T> cls, T t10) {
        this.mData.put(cls, t10);
    }

    public void applyTabBarTransparent(boolean z10) {
        RelativeLayout.LayoutParams layoutParams;
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mPageContainer.getLayoutParams();
        if (z10) {
            layoutParams = new RelativeLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
            layoutParams.addRule(12);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
        }
        this.mPageContainer.setLayoutParams(layoutParams);
    }

    @Override
    protected IFragmentManager createFragmentManager() {
        return ((IFragmentManagerFactory) TmcProxy.get(IFragmentManagerFactory.class)).createFragmentManager(getActivity());
    }

    public <T> T getData(Class<T> cls) {
        try {
            T t10 = (T) this.mData.get(cls);
            if (t10 != null) {
                return t10;
            }
            return null;
        } catch (Exception e10) {
            TmcLogger.e(TAG, "getData error", e10);
            return null;
        }
    }

    @Override
    protected ViewGroup getTabBarContainer() {
        return this.mTabContainer;
    }

    @Override
    public boolean moveToBackground() {
        return (CommonUtils.enableKeepAlive(getApp()) && getActivity() != null && getActivity().isTaskRoot()) ? getActivity().moveTaskToBack(false) : super.moveToBackground();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    public boolean pushPage(@NonNull Page page) {
        return super.pushPage(page);
    }

    @Override
    public void start(@NonNull Page page) {
        super.start(page);
    }
}
