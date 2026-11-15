package in;

import android.content.Context;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.SimpleCache;
import androidx.media3.datasource.cache.q;
import androidx.media3.datasource.cronet.CronetDataSource;
import androidx.media3.datasource.cronet.CronetUtil;
import androidx.media3.exoplayer.b4;
import androidx.media3.exoplayer.offline.DownloadManager;
import com.transsion.player.exo.ORExoDecoderType;
import java.io.File;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

public abstract class a {

    private static androidx.media3.datasource.a.InterfaceC0085a f62188a;

    private static androidx.media3.datasource.a.InterfaceC0085a f62189b;

    private static v1.a f62190c;

    private static File f62191d;

    private static Cache f62192e;

    private static DownloadManager f62193f;

    private static androidx.media3.exoplayer.offline.k f62194g;

    static class C0762a {

        static final int[] f62195a;

        static {
            int[] iArr = new int[ORExoDecoderType.values().length];
            f62195a = iArr;
            try {
                iArr[ORExoDecoderType.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62195a[ORExoDecoderType.FFMPEG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62195a[ORExoDecoderType.AV1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static androidx.media3.datasource.cache.a.c a(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, Cache cache) {
        return new androidx.media3.datasource.cache.a.c().h(cache).i(interfaceC0085a);
    }

    public static b4 b(Context context, ORExoDecoderType oRExoDecoderType) {
        int i10;
        int i11 = C0762a.f62195a[oRExoDecoderType.ordinal()];
        if (i11 != 1) {
            i10 = 2;
            if (i11 != 2 && i11 != 3) {
                throw new IncompatibleClassChangeError();
            }
        } else {
            i10 = 1;
        }
        return new g(context.getApplicationContext(), oRExoDecoderType).o(true).p(i10).l();
    }

    private static synchronized void c(Context context) {
        if (f62193f == null) {
            DownloadManager downloadManager = new DownloadManager(context, new androidx.media3.exoplayer.offline.a(e(context)), new com.transsion.player.shorttv.preload.b(new androidx.media3.datasource.cache.a.c().h(f(context)).i(j(context)), Executors.newFixedThreadPool(6)));
            f62193f = downloadManager;
            downloadManager.u();
        }
    }

    public static synchronized androidx.media3.datasource.a.InterfaceC0085a d(Context context) {
        try {
            if (f62188a == null) {
                Context applicationContext = context.getApplicationContext();
                f62188a = a(new androidx.media3.datasource.b.a(applicationContext, j(applicationContext)), f(applicationContext));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f62188a;
    }

    private static synchronized v1.a e(Context context) {
        try {
            if (f62190c == null) {
                f62190c = new v1.b(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f62190c;
    }

    public static synchronized Cache f(Context context) {
        try {
            if (f62192e == null) {
                f62192e = new SimpleCache(new File(g(context), "downloads"), new q(314572800L), e(context));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f62192e;
    }

    private static synchronized File g(Context context) {
        try {
            if (f62191d == null) {
                File externalFilesDir = context.getExternalFilesDir(null);
                f62191d = externalFilesDir;
                if (externalFilesDir == null) {
                    f62191d = context.getFilesDir();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f62191d;
    }

    public static synchronized DownloadManager h(Context context) {
        c(context);
        return f62193f;
    }

    public static synchronized androidx.media3.exoplayer.offline.k i(Context context) {
        try {
            if (f62194g == null) {
                f62194g = new androidx.media3.exoplayer.offline.k(context, "download_channel");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f62194g;
    }

    public static synchronized androidx.media3.datasource.a.InterfaceC0085a j(Context context) {
        try {
            if (f62189b == null) {
                CronetEngine cronetEngineA = CronetUtil.a(context.getApplicationContext());
                if (cronetEngineA != null) {
                    f62189b = new CronetDataSource.b(cronetEngineA, Executors.newSingleThreadExecutor());
                }
                if (f62189b == null) {
                    CookieManager cookieManager = new CookieManager();
                    cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
                    CookieHandler.setDefault(cookieManager);
                    f62189b = new androidx.media3.datasource.c.b();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f62189b;
    }
}
