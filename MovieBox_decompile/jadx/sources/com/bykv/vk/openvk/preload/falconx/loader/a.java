package com.bykv.vk.openvk.preload.falconx.loader;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.f.b;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class a implements ILoader {

    private b f19952a;

    private AtomicBoolean f19953b = new AtomicBoolean(false);

    public a(Context context, String str, File file) {
        if (context == null) {
            throw new RuntimeException("context == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        if (file == null) {
            throw new RuntimeException("resRootDir == null");
        }
        this.f19952a = new b(context, str, file);
    }

    public final int a(String str) throws Exception {
        if (this.f19953b.get()) {
            throw new RuntimeException("released!");
        }
        return this.f19952a.b(str);
    }

    @Override
    public boolean exist(String str) throws Exception {
        if (this.f19953b.get()) {
            throw new RuntimeException("released!");
        }
        return this.f19952a.c(str);
    }

    @Override
    public Map<String, Long> getChannelVersion() {
        return this.f19952a.b();
    }

    @Override
    public InputStream getInputStream(String str) throws Exception {
        if (this.f19953b.get()) {
            throw new RuntimeException("released!");
        }
        GeckoLogger.d("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
        return this.f19952a.a(str);
    }

    @Override
    public String getResRootDir() {
        return this.f19952a.a();
    }

    @Override
    public void release() throws Exception {
        if (this.f19953b.getAndSet(true)) {
            return;
        }
        this.f19952a.c();
    }
}
