package com.cloud.tmc.integration.structure.app;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.model.StatusStore;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.ui.fragment.IFragmentManager;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;

public abstract class BaseAppContext implements AppContext {
    private static final String TAG = "Tmcintegration:BaseAppContext";
    private boolean hasShowTab;
    private FragmentActivity mActivity;
    private App mApp;
    private boolean isDestroyed = false;
    private IFragmentManager mFragmentManager = createFragmentManager();

    public BaseAppContext(App app, FragmentActivity fragmentActivity) {
        this.mApp = app;
        this.mActivity = fragmentActivity;
    }

    private void showDefaultSessionTab() {
        this.mActivity.isFinishing();
    }

    private void showTabBar(Page page) {
        if (this.mActivity.isFinishing() || this.hasShowTab) {
            return;
        }
        this.hasShowTab = true;
        ExecutorUtils.runOnMain(new Runnable() {
            @Override
            public void run() {
                BaseAppContext.this.getTabBarContainer().setVisibility(0);
            }
        });
    }

    protected abstract IFragmentManager createFragmentManager();

    @Override
    public synchronized void destroy() {
        if (this.isDestroyed) {
            return;
        }
        this.isDestroyed = true;
        onDestroy();
    }

    @Override
    public void exitPage(@NonNull Page page, boolean z10) {
        TmcLogger.d(TAG, "exitPage " + page);
        IFragmentManager iFragmentManager = this.mFragmentManager;
        if (iFragmentManager == null) {
            TmcLogger.d(TAG, "exitPage but already exited");
            return;
        }
        boolean z11 = false;
        if (iFragmentManager.findFragmentForPage(page) != null) {
            if (!this.mApp.isExited() && !((Page.AnimStore) page.getData(Page.AnimStore.class, true)).disableExit) {
                z11 = true;
            }
            this.mFragmentManager.exitPage(page, z11, z10);
            return;
        }
        if (page.isTabPage() && this.mFragmentManager.findTabFragmentByPath(page.getPagePath()) != null) {
            this.mFragmentManager.exitTabCachePage(page, false);
        }
        TmcLogger.d(TAG, "exitPage but fragment already exited!");
        this.mFragmentManager.checkInvalidPage();
    }

    protected FragmentActivity getActivity() {
        return this.mActivity;
    }

    @Override
    public Intent getActivityStartIntent() {
        return this.mActivity.getIntent();
    }

    protected App getApp() {
        return this.mApp;
    }

    @Override
    public Context getContext() {
        return this.mActivity;
    }

    public IFragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    protected abstract ViewGroup getTabBarContainer();

    @Override
    public boolean isTaskRoot() {
        return this.mActivity.isTaskRoot();
    }

    @Override
    public boolean moveToBackground() {
        return false;
    }

    protected void onDestroy() {
        App app = this.mApp;
        if (app == null || !app.getBooleanValue(TmcConstants.MINIAPP_RELOAD)) {
            FragmentActivity fragmentActivity = this.mActivity;
            if (fragmentActivity == null || fragmentActivity.isFinishing() || this.mActivity.isDestroyed()) {
                FragmentActivity fragmentActivity2 = this.mActivity;
                if (fragmentActivity2 != null && fragmentActivity2.isFinishing() && this.mActivity.isDestroyed()) {
                    TmcLogger.d(TAG, "remove task by recent ");
                    ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).removeMiniAppTaskByRecent(this.mApp.getAppId());
                }
            } else {
                TmcLogger.w(TAG, "NebulaActivity finish by AppContext.destroy()");
                if (this.mActivity.isTaskRoot()) {
                    App app2 = this.mApp;
                    if (app2 != null && app2.getAppId() != null) {
                        TmcLogger.d(TAG, "remove activity task");
                        ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).removeMiniAppTask(this.mApp.getAppId(), this.mActivity);
                    }
                } else {
                    TmcLogger.d(TAG, "activity is not task root");
                    this.mActivity.finish();
                }
                this.mActivity = null;
            }
        }
        IFragmentManager iFragmentManager = this.mFragmentManager;
        if (iFragmentManager != null) {
            iFragmentManager.release();
            this.mFragmentManager = null;
        }
        this.mApp = null;
    }

    @Override
    public boolean pushPage(@NonNull Page page) {
        if (!ExecutorUtils.isMainThread()) {
            throw new IllegalStateException("pushPage can only invoked in main thread!");
        }
        TmcLogger.d(TAG, "pushPage with page: " + page + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        if (this.mFragmentManager == null || page.isExited()) {
            TmcLogger.w(TAG, "pushPage but is exited!");
            return false;
        }
        page.getStartParams();
        TmcFragment tmcFragmentCreateFragment = this.mFragmentManager.createFragment(page);
        if (tmcFragmentCreateFragment.isAdded()) {
            tmcFragmentCreateFragment.setPage(page);
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong(TmcConstants.EXTRA_APP_INSTANCE_ID, this.mApp.getNodeId());
            bundle.putLong(TmcConstants.EXTRA_PAGE_INSTANCE_ID, page.getNodeId());
            tmcFragmentCreateFragment.setArguments(bundle);
        }
        this.mFragmentManager.pushPage(page, tmcFragmentCreateFragment, !((Page.AnimStore) page.getData(Page.AnimStore.class, true)).disableEnter, ((StatusStore) page.getData(StatusStore.class, true)).exitPage);
        return true;
    }

    @Override
    public void pushWebViewPage(@NonNull Page page) {
        if (!ExecutorUtils.isMainThread()) {
            throw new IllegalStateException("pushWebViewPage can only invoked in main thread!");
        }
        TmcLogger.d(TAG, "pushWebViewPage with page: " + page + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        Bundle bundle = new Bundle();
        bundle.putLong(TmcConstants.EXTRA_APP_INSTANCE_ID, this.mApp.getNodeId());
        bundle.putLong(TmcConstants.EXTRA_PAGE_INSTANCE_ID, page.getNodeId());
        bundle.putString(TmcConstants.EXTRA_PAGE_URI, page.getPageURI());
        bundle.putBoolean("enableAdsense", true);
        Intent intent = new Intent(getActivity(), ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).getWebViewActivity());
        intent.putExtras(bundle);
        AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, getActivity());
        getActivity().startActivity(intent);
    }

    @Override
    public void start(@NonNull Page page) {
        if (!ExecutorUtils.isMainThread()) {
            throw new IllegalStateException("pushPage can only invoked in main thread!");
        }
        TmcLogger.d(TAG, "startPage with page: " + page);
        pushPage(page);
    }

    @Override
    public void switchTab(@NonNull Page page) {
        if (!ExecutorUtils.isMainThread()) {
            throw new IllegalStateException("switchTab can only invoked in main thread!");
        }
        TmcLogger.d(TAG, "switchTab with page: " + page);
        if (this.mFragmentManager == null || page.isExited()) {
            TmcLogger.w(TAG, "pushPage but is exited!");
            return;
        }
        TmcFragment tmcFragmentFindTabFragmentByPath = this.mFragmentManager.findTabFragmentByPath(page.getPagePath());
        if (tmcFragmentFindTabFragmentByPath == null || !tmcFragmentFindTabFragmentByPath.isAdded()) {
            this.mFragmentManager.pushPage(page, tmcFragmentFindTabFragmentByPath, false, false);
        } else {
            this.mFragmentManager.switchTab(page, tmcFragmentFindTabFragmentByPath);
        }
    }
}
