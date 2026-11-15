package com.mgtv.easydatasource;

import android.text.TextUtils;
import android.util.Log;

public class FlowReporter {
    private static final String TAG = "MGDS";
    private static boolean _loaded = false;
    public static final int kInfoFromPlayer = 1;
    public static final int kInfoFromYunFan = 2;
    public static final int kProviderCDN = 1;
    public static final int kProviderP2P = 2;
    public static final int kProviderPCDN = 3;
    public static final int kReportModeBatch = 1;
    public static final int kReportModeSingle = 2;
    public static final int kVideoDefBD = 4;
    public static final int kVideoDefFHD = 3;
    public static final int kVideoDefFast = 0;
    public static final int kVideoDefHD = 2;
    public static final int kVideoDefSD = 1;
    private static onReportCallBack reportCall;
    private long _nativeReporter;

    public interface onReportCallBack {
        void onReportInfo(String str);
    }

    public FlowReporter(String str, int i, String str2) {
        this._nativeReporter = -1L;
        if (_loaded) {
            this._nativeReporter = _createReporter(str, i, str2);
        }
    }

    private native long _createReporter(String str, int i, String str2);

    private native void _destoryReporter(long j);

    private static native void _enableHttpsReport(boolean z);

    private native void _forceTrigger();

    private static native String _getTsFlowTagWithUrl(String str, int i);

    private static native String _getVersion();

    private static native String _packSecondLayerUrl(String str, int i);

    private static native String _packThirdLayerUrl(String str, int i);

    private native void _pushFlowInfo(String str, int i, int i2);

    private static native void _setGlobalConfig(String str);

    private native void _setVideoMetadata(int i, int i2, String str);

    private native void _start(String str);

    private native void _stop();

    public static void enableHttpsReport(boolean z) {
        if (_loaded) {
            _enableHttpsReport(z);
        }
    }

    private static String genErrorTicket() {
        StringBuilder sb = new StringBuilder();
        String packageName = ContextUtils.getPackageName();
        sb.append("crt=999");
        if (packageName != null && packageName.length() > 0) {
            String strReplace = packageName.replace('.', '_');
            sb.append("&cpid=");
            sb.append(strReplace);
        }
        return sb.toString();
    }

    public static onReportCallBack getReportCallBack() {
        return reportCall;
    }

    public static String getTsFlowTagWithUrl(String str, int i) {
        return !_loaded ? "unloaded_androidO9" : _getTsFlowTagWithUrl(str, i);
    }

    public static String getVersion() {
        if (_loaded) {
            return _getVersion();
        }
        Log.e(TAG, "please call init first!!!");
        return "0.0.-404";
    }

    public static synchronized boolean init() {
        try {
            boolean z = _loaded;
            if (z) {
                return z;
            }
            try {
                try {
                    System.loadLibrary("FlowReporter");
                    _loaded = true;
                    Log.d(TAG, "Load library success!");
                } catch (UnsatisfiedLinkError e) {
                    Log.e(TAG, "Could not load library! >" + e.getMessage());
                    e.printStackTrace();
                }
            } catch (Exception e2) {
                Log.e(TAG, e2.getMessage());
                e2.printStackTrace();
            } catch (Throwable th) {
                Log.e(TAG, th.getMessage());
                th.printStackTrace();
            }
            return _loaded;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static boolean isInited() {
        return _loaded;
    }

    public static String packSecondLayerUrl(String str, int i) {
        return !_loaded ? urlAppendParamPair(str, genErrorTicket()) : _packSecondLayerUrl(str, i);
    }

    public static String packThirdLayerUrl(String str, int i) {
        return !_loaded ? urlAppendParamPair(str, genErrorTicket()) : _packThirdLayerUrl(str, i);
    }

    public static void sendReportInfo(String str) {
        if (getReportCallBack() == null || str == null) {
            return;
        }
        getReportCallBack().onReportInfo(str);
    }

    public static void setGlobalConfig(String str) {
        if (_loaded) {
            _setGlobalConfig(str);
        }
    }

    public static void setReportCallBack(onReportCallBack onreportcallback) {
        if (!_loaded) {
            init();
        }
        try {
            if (onreportcallback == null) {
                setReportInfo(0);
            } else {
                reportCall = onreportcallback;
                setReportInfo(1);
            }
        } catch (Throwable th) {
            Log.e(TAG, "e = " + th.toString());
        }
    }

    private static native void setReportInfo(int i);

    private static String urlAppendParamPair(String str, String str2) {
        if (str2.isEmpty()) {
            return str;
        }
        if (str.indexOf("?") != -1) {
            return str + "&" + str2;
        }
        return str + "?" + str2;
    }

    public void finalize() throws Throwable {
        if (_loaded) {
            _destoryReporter(this._nativeReporter);
        }
        super.finalize();
    }

    public void forceTrigger() {
        if (_loaded) {
            _forceTrigger();
        }
    }

    public void pushFlowInfo(String str, int i, int i2) {
        if (_loaded) {
            _pushFlowInfo(str, i, i2);
        }
    }

    public void setBusinessSuuid(String str) {
        if (_loaded) {
            TextUtils.isEmpty(str);
        }
    }

    public void setPlayerSuuid(String str) {
        if (_loaded) {
            TextUtils.isEmpty(str);
        }
    }

    public void setVideoMetadata(int i, int i2, String str) {
        if (_loaded) {
            _setVideoMetadata(i, i2, str);
        }
    }

    public void start(String str) {
        if (_loaded) {
            _start(str);
        }
    }

    public void stop() {
        if (_loaded) {
            _stop();
        }
    }
}
