package com.hunantv.media.player.loader;

import android.content.Context;
import com.hunantv.media.player.helper.BuildHelper;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.pragma.PlayerConfig;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.SystemUtil;
import java.io.File;

public class ImgoLibLoader {
    private static final String LIB_NAME_CACHE = "ImgoCache";
    private static final String LIB_NAME_CPP_SHARED = "c++_shared";
    private static final String LIB_NAME_DS = "Imgods";
    private static final String LIB_NAME_EXS = "Imgoexs";
    private static final String LIB_NAME_FFMEPG = "ImgoFfmpeg";
    private static final String LIB_NAME_FFMEPG4 = "ImgoFfmpeg4";
    private static final String LIB_NAME_HELP = "ImgoHelp";
    private static final String LIB_NAME_IMGOHAND = "ImgoHand";
    private static final String LIB_NAME_IMGOHAND_JNI = "ImgoHand_jni";
    private static final String LIB_NAME_IMGOVSR = "ImgoVsr";
    private static final String LIB_NAME_MGTV_DRM = "mgtvdrm";
    private static final String LIB_NAME_OPENSSL_CRYPT_1_0 = "crypto";
    private static final String LIB_NAME_OPENSSL_CRYPT_1_1 = "crypto.1.1";
    private static final String LIB_NAME_OPENSSL_SSL_1_0 = "ssl";
    private static final String LIB_NAME_OPENSSL_SSL_1_1 = "ssl.1.1";
    private static final String LIB_NAME_PLAYER_DRM_PRE = "ImgoMediaPlayer_drm_";
    private static final String LIB_NAME_PLAYER_NODRM_PRE = "ImgoMediaPlayer_nodrm_";
    private static final String LIB_NAME_PLAYER_NODS_PRE = "ImgoMediaPlayer_nods_";
    private static final String LIB_NAME_PLAYER_PRE = "ImgoMediaPlayer_";
    private static final String LIB_NAME_WANOS_DECODER = "wanosdecoder";
    private static final String LIB_NAME_WANOS_VIRTUAL = "wanosvirtual";
    private static final String LIB_NAME_WANOS_VIRTUALV2 = "wanosvirtualV2";
    private static final String LIB_NAME_WASABI_DRM = "WasabiJni";
    private static final String TAG = "ImgoLibLoader";
    private static volatile String sInjectLibDirectory = null;
    private static IInjectorCallback sInjectorCallback = null;
    private static ImgoLibLoader sInstance = null;
    private static int useOpensslVersion = 2;
    private String mDsLibLoadErrorMsg;
    private volatile boolean mIsAllPlayerLibLoaded = false;
    private volatile boolean mIsHelpLibLoaded = false;
    private volatile boolean mIsDsLibLoaded = false;
    private volatile boolean mIsCacheLibLoaded = false;
    private volatile boolean mIsWanosDecoderLibLoaded = false;
    private volatile boolean mIsWanosVirtualLibLoaded = false;
    private volatile boolean mIsFFmpegLibLoaded = false;
    private volatile boolean mIsExsLibLoaded = false;
    private volatile boolean mIsWasabiDrmLibLoaded = false;
    private volatile boolean mIsMgtvDrmLibLoaded = false;
    private volatile boolean mIsOpenSSLLibLoaded = false;
    private volatile boolean mIsCPPSharedLibLoaded = false;
    private volatile boolean mIsImgoVsrLibLoaded = false;
    private volatile boolean mIsImgoHandLibLoaded = false;
    private volatile boolean mIsImgoHandJniLibLoaded = false;
    private volatile boolean mIsPlayerLibLoaded = false;
    private volatile boolean mDsLibLoadError = false;
    private boolean mDsLibLoadErrorMsgReport = false;
    private String mDrmLibLoadErrorMsg = "n";
    private String mWanosLibLoadErrorMsg = "n";
    private String mCPPSharedLibLoadErrorMsg = "n";
    private String mImgoVsrLibLoadErrorMsg = "n";
    private Object mSync = new Object();
    private boolean mIsBackUpLoaderSuccess = false;
    private String mBackUpLoaderSoMsg = "";

    public interface IInjectorCallback {
        String onInjectLibDirectory();

        void onLoadedLibMeta(String str);
    }

    private ImgoLibLoader() {
    }

    public static void exLoadLibrary(Context context, String str) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        StringBuilder sb;
        String str2;
        DebugLog.i(TAG, "exLoadLibrary: " + str);
        String string = "";
        try {
            context.getApplicationInfo();
            if (preInjectLoad(SystemUtil.getPrimaryCpuAbi(context), str)) {
                return;
            }
        } catch (Exception e) {
            e = e;
            sb = new StringBuilder();
            sb.append("");
            str2 = "preInjectLoad Exception ";
            sb.append(str2);
            sb.append(b.a(e));
            string = sb.toString();
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
            sb = new StringBuilder();
            sb.append("");
            str2 = "preInjectLoad UnsatisfiedLinkError ";
            sb.append(str2);
            sb.append(b.a(e));
            string = sb.toString();
        } catch (Throwable th) {
            e = th;
            sb = new StringBuilder();
            sb.append("");
            str2 = "preInjectLoad Throwable ";
            sb.append(str2);
            sb.append(b.a(e));
            string = sb.toString();
        }
        if (!StringUtil.isEmpty(string)) {
            DebugLog.e(TAG, string);
        }
        DebugLog.i(TAG, "no preInjectLoad,use System.loadLibrary");
        try {
            if (b.a(context, str) == 2) {
                getInstance().mIsBackUpLoaderSuccess = true;
                StringBuilder sb2 = new StringBuilder();
                ImgoLibLoader imgoLibLoader = getInstance();
                sb2.append(imgoLibLoader.mBackUpLoaderSoMsg);
                sb2.append(str);
                sb2.append("_");
                imgoLibLoader.mBackUpLoaderSoMsg = sb2.toString();
            }
        } catch (UnsatisfiedLinkError e3) {
            throw new c(e3.getMessage(), mapID(str));
        }
    }

    public static synchronized ImgoLibLoader getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new ImgoLibLoader();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    private static boolean isLegalFilePath(String str) throws SecurityException {
        if (str == null || "".equals(str.trim())) {
            return false;
        }
        File file = new File(str);
        return file.exists() && !file.isDirectory();
    }

    private static int mapID(String str) {
        if (str != null && !str.trim().equals("")) {
            if (str.startsWith(LIB_NAME_FFMEPG)) {
                return 100;
            }
            if (str.startsWith(LIB_NAME_HELP)) {
                return 101;
            }
            if (str.startsWith(LIB_NAME_DS)) {
                return 102;
            }
            if (str.startsWith(LIB_NAME_PLAYER_NODS_PRE)) {
                return 103;
            }
            if (str.startsWith(LIB_NAME_PLAYER_PRE)) {
                return 104;
            }
            if (str.startsWith("ImgoCache")) {
                return 105;
            }
            if (str.startsWith(LIB_NAME_PLAYER_NODRM_PRE)) {
                return 106;
            }
            if (str.startsWith(LIB_NAME_WANOS_DECODER)) {
                return 107;
            }
            if (str.startsWith(LIB_NAME_WANOS_VIRTUAL)) {
                return 108;
            }
            if (str.startsWith(LIB_NAME_WASABI_DRM)) {
                return 109;
            }
            if (str.startsWith(LIB_NAME_WANOS_VIRTUALV2)) {
                return 110;
            }
        }
        return 0;
    }

    private static boolean preInjectLoad(String str, String str2) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (sInjectLibDirectory != null && !sInjectLibDirectory.trim().isEmpty()) {
            File file = new File(sInjectLibDirectory);
            if (file.exists() && file.isDirectory()) {
                String str3 = file.getAbsolutePath() + "/" + str + "/" + System.mapLibraryName(str2);
                if (isLegalFilePath(str3)) {
                    System.load(str3);
                    DebugLog.i(TAG, "preInjectLoad load success:" + str3);
                    return true;
                }
                DebugLog.i(TAG, "preInjectLoad load failed:" + str3);
            }
        }
        return false;
    }

    public static void setsInjectorCallback(IInjectorCallback iInjectorCallback) {
        sInjectorCallback = iInjectorCallback;
    }

    private boolean tryLoadAllLibraries(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (!this.mIsAllPlayerLibLoaded) {
            if (sInjectorCallback != null && sInjectLibDirectory == null) {
                sInjectLibDirectory = sInjectorCallback.onInjectLibDirectory();
            }
            tryLoadOpenSSLLib(context);
            tryLoadFFmpegLib(context);
            tryLoadHelpLib(context);
            tryLoadExsLib(context);
            try {
                tryLoadWanosDecoderLib(context);
                tryLoadWanosVirtualLib(context);
            } catch (Throwable th) {
                this.mWanosLibLoadErrorMsg = th.getMessage();
            }
            tryLoadPlayerLib(context);
            this.mIsAllPlayerLibLoaded = true;
            if (sInjectorCallback != null) {
                String str = "libmediaplayer:" + PlayerConfig.getLibFullVersion();
                DebugLog.i(TAG, "onLoadedLibMeta libmediaplayer:" + PlayerConfig.getLibFullVersion());
                sInjectorCallback.onLoadedLibMeta(str);
            }
        }
        return this.mIsAllPlayerLibLoaded;
    }

    private void tryLoadCPPSharedLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsCPPSharedLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_CPP_SHARED);
        this.mIsCPPSharedLibLoaded = true;
    }

    private void tryLoadCacheLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsCacheLibLoaded) {
            return;
        }
        exLoadLibrary(context, "ImgoCache");
        this.mIsCacheLibLoaded = true;
    }

    private void tryLoadDsLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsDsLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_DS);
        this.mIsDsLibLoaded = true;
    }

    private void tryLoadExsLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsExsLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_EXS);
        this.mIsExsLibLoaded = true;
    }

    private void tryLoadFFmpeg20Lib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsFFmpegLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_FFMEPG4);
        this.mIsFFmpegLibLoaded = true;
    }

    private void tryLoadFFmpegLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        tryLoadFFmpeg20Lib(context);
    }

    private void tryLoadHelpLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsHelpLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_HELP);
        this.mIsHelpLibLoaded = true;
    }

    private void tryLoadImgoHandJniLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsImgoHandJniLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_IMGOHAND_JNI);
        this.mIsImgoHandJniLibLoaded = true;
    }

    private void tryLoadImgoHandLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsImgoHandLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_IMGOHAND);
        this.mIsImgoHandLibLoaded = true;
    }

    private void tryLoadImgoVsrLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsImgoVsrLibLoaded) {
            return;
        }
        if (BuildHelper.supportX86()) {
            DebugLog.e(TAG, "is X86, don't tryLoadImgoVsrLib!");
        } else {
            exLoadLibrary(context, LIB_NAME_IMGOVSR);
            this.mIsImgoVsrLibLoaded = true;
        }
    }

    private boolean tryLoadMgtvDrmLib(Context context) {
        if (useOpensslVersion == 2 && this.mIsOpenSSLLibLoaded && !this.mIsMgtvDrmLibLoaded) {
            exLoadLibrary(context, LIB_NAME_MGTV_DRM);
            this.mIsMgtvDrmLibLoaded = true;
        }
        return this.mIsMgtvDrmLibLoaded;
    }

    private void tryLoadMgtvDrmLibNoThrow(Context context) {
        try {
            tryLoadMgtvDrmLib(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void tryLoadOpenSSLLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        String str;
        if (this.mIsOpenSSLLibLoaded) {
            return;
        }
        if (useOpensslVersion == 1) {
            exLoadLibrary(context, LIB_NAME_OPENSSL_CRYPT_1_0);
            str = LIB_NAME_OPENSSL_SSL_1_0;
        } else {
            exLoadLibrary(context, LIB_NAME_OPENSSL_CRYPT_1_1);
            str = LIB_NAME_OPENSSL_SSL_1_1;
        }
        exLoadLibrary(context, str);
        this.mIsOpenSSLLibLoaded = true;
    }

    private void tryLoadPlayer20Lib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsPlayerLibLoaded) {
            return;
        }
        exLoadLibrary(context, "ImgoMediaPlayer_5.5.3");
        this.mIsPlayerLibLoaded = true;
    }

    private void tryLoadPlayerLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        tryLoadPlayer20Lib(context);
    }

    private void tryLoadWanosDecoderLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsWanosDecoderLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_WANOS_DECODER);
        this.mIsWanosDecoderLibLoaded = true;
    }

    private void tryLoadWanosVirtualLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsWanosVirtualLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_WANOS_VIRTUAL);
        this.mIsWanosVirtualLibLoaded = true;
    }

    private void tryLoadWasabiDrmLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        if (this.mIsWasabiDrmLibLoaded) {
            return;
        }
        exLoadLibrary(context, LIB_NAME_WASABI_DRM);
        this.mIsWasabiDrmLibLoaded = true;
    }

    public String getBackUpLoaderSoMsg() {
        return this.mBackUpLoaderSoMsg;
    }

    public String getDrmLibLoadErrorMsg() {
        return this.mDrmLibLoadErrorMsg;
    }

    public String getDsLibLoadErrorMsg() {
        return this.mDsLibLoadErrorMsg;
    }

    public boolean isAllPlayerLibLoaded() {
        return this.mIsAllPlayerLibLoaded;
    }

    public boolean isBackUpLoaderSuccess() {
        return this.mIsBackUpLoaderSuccess;
    }

    public boolean isCacheLibLoaded() {
        return this.mIsCacheLibLoaded;
    }

    public boolean isDsLibLoadError() {
        return this.mDsLibLoadError;
    }

    public boolean isDsLibLoadErrorMsgReport() {
        return this.mDsLibLoadErrorMsgReport;
    }

    public boolean isDsLibLoaded() {
        return this.mIsDsLibLoaded;
    }

    public boolean isFFmpegLibLoaded() {
        return this.mIsFFmpegLibLoaded;
    }

    public boolean isHelpLibLoaded() {
        return this.mIsHelpLibLoaded;
    }

    public boolean isMgtvDrmLibLoaded() {
        return this.mIsMgtvDrmLibLoaded;
    }

    public boolean isMgtvHandLibLoaded() {
        return this.mIsImgoHandJniLibLoaded;
    }

    public boolean isPlayerLibLoaded() {
        return this.mIsPlayerLibLoaded;
    }

    public boolean isWasabiDrmLibLoaded() {
        return this.mIsWasabiDrmLibLoaded;
    }

    public void setBackUpLoaderSuccess(boolean z) {
        this.mIsBackUpLoaderSuccess = z;
    }

    public void setDsLibLoadErrorMsgReport(boolean z) {
        this.mDsLibLoadErrorMsgReport = z;
    }

    public boolean syncTryLoadAllLibraries(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        boolean zTryLoadAllLibraries;
        synchronized (this.mSync) {
            zTryLoadAllLibraries = tryLoadAllLibraries(context);
        }
        return zTryLoadAllLibraries;
    }

    public boolean syncTryLoadDrmLib(Context context) {
        synchronized (this.mSync) {
            try {
                try {
                    tryLoadWasabiDrmLib(context);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error e) {
                e = e;
                e.printStackTrace();
                return false;
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return false;
            } catch (Throwable th2) {
                e = th2;
                e.printStackTrace();
                return false;
            }
        }
    }

    public void syncTryLoadExsLib(Context context) {
        synchronized (this.mSync) {
            try {
                tryLoadExsLib(context);
            } catch (Error e) {
                e = e;
                try {
                    e.printStackTrace();
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
            } catch (Throwable th2) {
                e = th2;
                e.printStackTrace();
            }
        }
    }

    public boolean syncTryLoadFFmpegLib(Context context) {
        synchronized (this.mSync) {
            try {
                try {
                    tryLoadFFmpegLib(context);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error e) {
                e = e;
                e.printStackTrace();
                return false;
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return false;
            } catch (Throwable th2) {
                e = th2;
                e.printStackTrace();
                return false;
            }
        }
    }

    public void syncTryLoadHandLib(Context context) {
        synchronized (this.mSync) {
            try {
                tryLoadImgoHandLib(context);
                tryLoadImgoHandJniLib(context);
            } catch (Error | Exception e) {
                try {
                    e.printStackTrace();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void syncTryLoadHelpLib(Context context) {
        synchronized (this.mSync) {
            try {
                tryLoadHelpLib(context);
            } catch (Error e) {
                e = e;
                try {
                    e.printStackTrace();
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
            } catch (Throwable th2) {
                e = th2;
                e.printStackTrace();
            }
        }
    }

    public boolean syncTryLoadMgtvDRMLib(Context context) {
        synchronized (this.mSync) {
            try {
                try {
                    tryLoadOpenSSLLib(context);
                    tryLoadMgtvDrmLib(context);
                    return this.mIsMgtvDrmLibLoaded;
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error e) {
                e = e;
                e.printStackTrace();
                return false;
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return false;
            } catch (Throwable th2) {
                e = th2;
                e.printStackTrace();
                return false;
            }
        }
    }

    public boolean syncTryLoadPlayerLib(Context context) {
        synchronized (this.mSync) {
            try {
                try {
                    tryLoadPlayerLib(context);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error e) {
                e = e;
                e.printStackTrace();
                return false;
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return false;
            } catch (Throwable th2) {
                e = th2;
                e.printStackTrace();
                return false;
            }
        }
    }
}
