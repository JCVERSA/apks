package com.transsion.vishaplayersdk.vkPlayer;

import android.util.Log;
import com.tencent.mmkv.MMKV;
import java.util.concurrent.atomic.AtomicInteger;

public class VkPageManager {
    private static final String MMKV_KEY_PAGE = "vk_page";
    private static final String MMKV_REFRESH_PAGE = "vk_page_refresh";
    private static final long REFRESH_INTERVAL_MS = 86400000;
    private static final String TAG = "VkPageManager";
    private long lastRefreshTime;
    private final AtomicInteger pageValue;

    public static final class InstanceHolder {
        private static final VkPageManager INSTANCE = new VkPageManager();

        private InstanceHolder() {
        }
    }

    public static VkPageManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public void checkAndRefreshIfNeeded() {
        if (System.currentTimeMillis() - this.lastRefreshTime > 86400000) {
            refreshPage();
        }
    }

    public int getPageValue() {
        return this.pageValue.get();
    }

    public int incrementAndGet() {
        Log.i(TAG, "incrementAndGet: " + getPageValue());
        checkAndRefreshIfNeeded();
        int andIncrement = this.pageValue.getAndIncrement();
        MMKV.p().t(MMKV_KEY_PAGE, getPageValue());
        return andIncrement;
    }

    public void refreshPage() {
        this.pageValue.set(1);
        long jCurrentTimeMillis = System.currentTimeMillis();
        MMKV.p().t(MMKV_KEY_PAGE, getPageValue());
        MMKV.p().u(MMKV_REFRESH_PAGE, jCurrentTimeMillis);
        this.lastRefreshTime = jCurrentTimeMillis;
    }

    private VkPageManager() {
        this.pageValue = new AtomicInteger(MMKV.p().g(MMKV_KEY_PAGE, 1));
        this.lastRefreshTime = MMKV.p().i(MMKV_REFRESH_PAGE, 0L);
        checkAndRefreshIfNeeded();
    }
}
