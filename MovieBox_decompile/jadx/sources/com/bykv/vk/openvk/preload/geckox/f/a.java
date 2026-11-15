package com.bykv.vk.openvk.preload.geckox.f;

import com.bykv.vk.openvk.preload.geckox.f.a.c;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.utils.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

final class a {

    private String f20067a;

    private String f20068b;

    private volatile File f20069c;

    private volatile Long f20070d;

    private volatile com.bykv.vk.openvk.preload.geckox.f.a.a f20071e;

    private AtomicBoolean f20072f = new AtomicBoolean(false);

    a(String str, String str2) {
        this.f20067a = str;
        this.f20068b = str2;
    }

    private synchronized com.bykv.vk.openvk.preload.geckox.f.a.a d(String str) throws Exception {
        if (this.f20071e != null) {
            return this.f20071e;
        }
        File fileE = e(str);
        if (fileE == null) {
            throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
        }
        File file = new File(fileE, "res.macv");
        File file2 = new File(fileE, "res");
        if (file2.exists() && file2.isDirectory()) {
            this.f20071e = new c(fileE);
        } else {
            if (!file.exists() || !file.isFile()) {
                throw new RuntimeException("can not find res, dir:" + fileE.getAbsolutePath());
            }
            this.f20071e = new com.bykv.vk.openvk.preload.geckox.f.a.b(fileE);
        }
        return this.f20071e;
    }

    private synchronized File e(String str) throws Exception {
        if (this.f20069c != null) {
            return this.f20069c;
        }
        if (this.f20070d != null && this.f20070d.longValue() == -1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f20067a);
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append(str);
        sb2.append(str2);
        sb2.append("select.lock");
        com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(sb2.toString());
        try {
            if (this.f20070d == null) {
                this.f20070d = g.a(new File(this.f20067a, str));
            }
            if (this.f20070d == null) {
                this.f20070d = -1L;
                bVarA.a();
                return null;
            }
            File file = new File(this.f20067a, str2 + str + str2 + this.f20070d + str2 + "using.lock");
            this.f20069c = file.getParentFile();
            com.bykv.vk.openvk.preload.geckox.g.c.a(file.getAbsolutePath());
            File file2 = this.f20069c;
            bVarA.a();
            return file2;
        } catch (Throwable th2) {
            bVarA.a();
            throw th2;
        }
    }

    final InputStream a(String str) throws Exception {
        return d(this.f20068b).a(a(this.f20068b, str));
    }

    final boolean b(String str) throws Exception {
        return d(this.f20068b).b(a(this.f20068b, str));
    }

    public final int c(String str) {
        int length;
        try {
            File file = new File(e(str), "res");
            if (file.exists() && file.isDirectory() && (length = file.listFiles().length) > 0) {
                return length - 1;
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    private static String a(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    final String b() {
        return this.f20068b;
    }

    final Long a() {
        return this.f20070d;
    }

    final void c() throws Exception {
        if (this.f20072f.getAndSet(true)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f20067a);
        String str = File.separator;
        sb2.append(str);
        sb2.append(this.f20068b);
        sb2.append(str);
        sb2.append("select.lock");
        com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(sb2.toString());
        GeckoLogger.d("gecko-file-lock", "channel version loader clean");
        try {
            if (this.f20069c == null) {
                bVarA.a();
                return;
            }
            com.bykv.vk.openvk.preload.geckox.g.c.b(this.f20069c.getAbsolutePath() + str + "using.lock");
            bVarA.a();
            com.bykv.vk.openvk.preload.geckox.a.c.a(this.f20067a + str + this.f20068b);
        } catch (Throwable th2) {
            bVarA.a();
            throw th2;
        }
    }
}
