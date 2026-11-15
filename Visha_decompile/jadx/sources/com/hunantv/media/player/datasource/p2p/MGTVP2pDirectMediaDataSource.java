package com.hunantv.media.player.datasource.p2p;

import com.google.gson.Gson;
import com.hunantv.media.player.h;
import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.UrlUtil;
import com.hunantv.media.utils.HttpParser;
import com.mgtv.a.a;
import com.mgtv.a.b;
import com.mgtv.a.c;
import java.io.IOException;

public class MGTVP2pDirectMediaDataSource implements IMGTVMediaDataSource {
    public static final int CB_HTTP_ERROR_TYPE_DNS_FAILED = 1;
    public static final int CB_HTTP_ERROR_TYPE_DNS_TIMEOUT = 8;
    public static final int CB_HTTP_ERROR_TYPE_HTTP_RECEIVE_ERR = 5;
    public static final int CB_HTTP_ERROR_TYPE_HTTP_REQUEST_ERR = 4;
    public static final int CB_HTTP_ERROR_TYPE_HTTP_REQUEST_TIMEOUT = 6;
    public static final int CB_HTTP_ERROR_TYPE_HTTP_RESPONSE_4XX_5XX = 7;
    public static final int CB_HTTP_ERROR_TYPE_TCP_CONNECT_ERR = 2;
    public static final int CB_HTTP_ERROR_TYPE_TCP_CONNECT_TIMEOUT = 3;
    private static final int CODE_ABORT = -1;
    private static final int CODE_BLOCKED = 1;
    private static final int CODE_NORMAL = 0;
    public static final int ERROR_TYPE_CUS_CODE = 9;
    public static final int ERR_BASE_CODE_610 = 610;
    public static final int ERR_BASE_CODE_701 = 701;
    public static final int ERR_BASE_CODE_705 = 705;
    public static final int ERR_BASE_CODE_910 = 910;
    public static final int ERR_BASE_CODE_911 = 911;
    public static final int ERR_BASE_CODE_913 = 913;
    public static final int ERR_P2P_DIRECT_WHAT = 400700;
    public static final int ERR_P2P_MGTVDS_NEGATIVE_BASECODE = 710000;
    public static final int ERR_P2P_MGTVDS_POSITIVE_BASECODE = 700000;
    public static final int ERR_P2P_STAGE_BASE_CODE = 10000000;
    public static final int ERR_P2P_STAGE_GETSIZE_FLAGCODE = 1;
    public static final int ERR_P2P_STAGE_READAT_FLAGCODE = 2;
    public static final int ERR_P2P_TYPE_BASE_CODE = 1000000;
    public static final int ERR_P2P_TYPE_BASE_FLAGCODE = 0;
    public static final int INVALID_CODE = -1;
    public static final int MAX_P2P_NOT_START_TIMEOUT_US = 10000000;
    public static final int WAIT_MS = 10;
    private Config mConfig;
    private String mDataSourceUrl;
    private IMGTVMediaDataSource.IInfoListener mInfoListener;
    private volatile CdnM3u8Entity mLastM3u8Entity;
    private h mMediaPlayer;
    private c mP2pTask;
    private int mVideoSourceType;
    private volatile boolean mRequestAbort = false;
    private volatile HttpErrorEntity mLastHttpError = null;
    private Object mLockObj = new Object();
    private String mTagStr = "";
    private a.InterfaceC0173a mOnNotifyMsgListener = new a.InterfaceC0173a() {
        private void doCallbackHttpBegin(int i, String str) {
            HttpBeginEntity httpBeginEntity = (HttpBeginEntity) new Gson().fromJson(str, HttpBeginEntity.class);
            if (httpBeginEntity == null || !validHash(httpBeginEntity.hash)) {
                return;
            }
            DebugLog.i(MGTVP2pDirectMediaDataSource.this.getLogTag(), "Begin hash:" + httpBeginEntity.hash);
            DebugLog.i(MGTVP2pDirectMediaDataSource.this.getLogTag(), "Begin url:" + httpBeginEntity.url);
        }

        private void doCallbackHttpEnd(int i, String str) {
            MGTVP2pDirectMediaDataSource.this.mLastHttpError = null;
            MGTVP2pDirectMediaDataSource.P2PDebugD(MGTVP2pDirectMediaDataSource.this.getLogTag(), "doCallbackHttpEnd " + i + "-" + str);
            HttpEndEntity httpEndEntity = (HttpEndEntity) new Gson().fromJson(str, HttpEndEntity.class);
            if (httpEndEntity == null || !validHash(httpEndEntity.hash)) {
                return;
            }
            DebugLog.i(MGTVP2pDirectMediaDataSource.this.getLogTag(), "End hash:" + httpEndEntity.hash);
            DebugLog.i(MGTVP2pDirectMediaDataSource.this.getLogTag(), "End url:" + httpEndEntity.url);
            DebugLog.i(MGTVP2pDirectMediaDataSource.this.getLogTag(), "End ip:" + httpEndEntity.ip);
        }

        private void doCallbackHttpError(int i, String str) {
            MGTVP2pDirectMediaDataSource.P2PDebugD(MGTVP2pDirectMediaDataSource.this.getLogTag(), "doCallbackHttpError " + i + "-" + str);
            HttpErrorEntity httpErrorEntity = (HttpErrorEntity) new Gson().fromJson(str, HttpErrorEntity.class);
            if (httpErrorEntity == null || !validHash(httpErrorEntity.hash)) {
                return;
            }
            MGTVP2pDirectMediaDataSource.this.mLastHttpError = httpErrorEntity;
        }

        private void doCdnM3u8Callback(int i, String str) {
            CdnM3u8Entity cdnM3u8Entity;
            DebugLog.i(MGTVP2pDirectMediaDataSource.this.getLogTag(), "httpBodySize:" + i);
            MGTVP2pDirectMediaDataSource.P2PDebugD(MGTVP2pDirectMediaDataSource.this.getLogTag(), str);
            try {
                cdnM3u8Entity = (CdnM3u8Entity) new Gson().fromJson(str, CdnM3u8Entity.class);
            } catch (Exception unused) {
                DebugLog.e(MGTVP2pDirectMediaDataSource.this.getLogTag(), "doCdnM3u8Callback error，wrong json data,'buf' = " + str);
                cdnM3u8Entity = null;
            }
            if (cdnM3u8Entity == null || !validHash(cdnM3u8Entity.hash)) {
                return;
            }
            cdnM3u8Entity.isHtml = StringUtil.isHtml(cdnM3u8Entity.data);
            cdnM3u8Entity.fileName = UrlUtil.getFileName(cdnM3u8Entity.url);
            long contentLength = HttpParser.parseContentLength(cdnM3u8Entity.data);
            if (contentLength >= 0 && contentLength != i) {
                cdnM3u8Entity.contentLength = contentLength;
                cdnM3u8Entity.httpBodySize = i;
            }
            MGTVP2pDirectMediaDataSource.this.mLastM3u8Entity = cdnM3u8Entity;
        }

        private boolean validHash(String str) {
            return !StringUtil.isEmpty(str) && str.equalsIgnoreCase(MGTVP2pDirectMediaDataSource.this.mP2pTask.a());
        }

        public void onNotify(int i, int i2, String str) {
            if (i == 18117) {
                doCallbackHttpError(i2, str);
                return;
            }
            if (i == 18119) {
                doCallbackHttpBegin(i2, str);
            } else if (i == 18120) {
                doCallbackHttpEnd(i2, str);
            } else if (i == 19304) {
                doCdnM3u8Callback(i2, str);
            }
        }
    };

    public class APIResult {
        public long costMs;
        public long ret;

        private APIResult() {
            this.ret = 0L;
            this.costMs = 0L;
        }

        public void clean() {
            this.ret = 0L;
            this.costMs = 0L;
        }
    }

    public static class Config {
        private static final int MIN_TIMEOUT_US = 100000;
        private int connectTimeOutUs = 15000000;
        private int reciveDataTimeOutUs = 15000000;

        public int getConnectTimeOutUs() {
            return this.connectTimeOutUs;
        }

        public int getReciveDataTimeOutUs() {
            return this.reciveDataTimeOutUs;
        }

        public Config setConnectTimeOutUs(int i) {
            if (i > 100000) {
                this.connectTimeOutUs = i;
            }
            return this;
        }

        public Config setReciveDataTimeOutUs(int i) {
            if (i > 100000) {
                this.reciveDataTimeOutUs = i;
            }
            return this;
        }
    }

    static {
        new Gson();
    }

    public MGTVP2pDirectMediaDataSource(h hVar, String str, int i, c cVar, Config config) {
        this.mMediaPlayer = hVar;
        this.mDataSourceUrl = str;
        this.mVideoSourceType = i;
        this.mP2pTask = cVar;
        this.mConfig = config;
        if (config == null) {
            this.mConfig = new Config();
        }
        DebugLog.i(getLogTag(), "setConfig connectTime:" + this.mConfig.getConnectTimeOutUs() + ",receiveTime:" + this.mConfig.getReciveDataTimeOutUs());
        if (this.mP2pTask != null) {
            b.d().a(this.mOnNotifyMsgListener);
        }
    }

    public static void P2PDebugD(String str, String str2) {
    }

    private int blockReadThread() {
        boolean z = false;
        while (!isRequestAbort() && !isP2pTaskStart()) {
            try {
                this.mLockObj.wait(10L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            z = true;
        }
        if (isRequestAbort()) {
            return -1;
        }
        return z ? 1 : 0;
    }

    private void callbackOnSourceInfoUpdate() {
        if (isRequestAbort() || this.mInfoListener == null) {
            return;
        }
        this.mInfoListener.onSourceInfoUpdate(b.d().a(this.mP2pTask));
    }

    private static boolean checkClass() {
        return true;
    }

    private long checkHtmlM3u8(long j, int i, String str) {
        if (this.mLastM3u8Entity == null || !this.mLastM3u8Entity.isHtml || StringUtil.isEmpty(this.mLastM3u8Entity.fileName) || !this.mLastM3u8Entity.fileName.equals(UrlUtil.getFileName(str))) {
            return j;
        }
        DebugLog.i(getLogTag(), "getSize out error_code:701");
        return convertPlayerErrorCode(i, 9, 701);
    }

    private long checkM3u8SizeError(int i, String str) {
        if (this.mLastM3u8Entity == null || !this.mLastM3u8Entity.isSizeError || StringUtil.isEmpty(this.mLastM3u8Entity.fileName) || !this.mLastM3u8Entity.fileName.equals(UrlUtil.getFileName(str))) {
            return 0L;
        }
        DebugLog.i(getLogTag(), "checkM3u8SizeError error_code:705");
        return convertPlayerErrorCode(i, 9, 705);
    }

    public static int convertErrorTypeStaticCode(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            default:
                return 8;
        }
    }

    public static int convertP2pErrorCode(int i) {
        return Math.abs(i) % 10000;
    }

    private static int convertPlayerErrorCode(int i, int i2, int i3) {
        int i4 = (i * 10000000) + (i2 * 1000000);
        return -(i3 >= 0 ? i4 + 700000 + i3 : i4 + ERR_P2P_MGTVDS_NEGATIVE_BASECODE + Math.abs(i3));
    }

    private static int convertPlayerErrorCodeGetSize(int i) {
        return convertPlayerErrorCodeGetSize(0, i);
    }

    private static int convertPlayerErrorCodeReadAt(int i) {
        return convertPlayerErrorCodeReadAt(0, i);
    }

    public static int convertTaskStatusCode(int i) {
        if (i == -1) {
            return 1;
        }
        if (i != 0) {
            return i != 1 ? 4 : 3;
        }
        return 2;
    }

    public String getLogTag() {
        StringBuilder sb = new StringBuilder();
        sb.append("P2pDirect-");
        c cVar = this.mP2pTask;
        sb.append(cVar != null ? cVar.a() : 0);
        sb.append("-");
        sb.append(hashCode());
        sb.append("-");
        sb.append(this.mTagStr);
        return sb.toString();
    }

    private static int getP2pDirectTypeCode(int i) {
        return (i / 1000000) % 10;
    }

    public static int getShortErrorCode(int i, int i2) {
        if (i == 400700) {
            return convertP2pErrorCode(i2);
        }
        return -1;
    }

    private long getSizeImpl(String str) {
        long[] jArr = new long[1];
        int[] iArr = new int[1];
        long jA = b.d().a(this.mP2pTask, str, null, 0L, 0L, jArr, iArr);
        if (0 == jA) {
            P2PDebugD(getLogTag(), "getSizeImpl out OK. size:" + jArr[0]);
            return jArr[0];
        }
        if (-555 == jA) {
            return -2018102640L;
        }
        if (-1 != jA) {
            return convertPlayerErrorCodeGetSize((int) jA);
        }
        long jConvertPlayerErrorCodeGetSize = convertPlayerErrorCodeGetSize(iArr[0]);
        P2PDebugD(getLogTag(), "getSizeImpl out E_NET_FALSE. ret:" + jConvertPlayerErrorCodeGetSize);
        return jConvertPlayerErrorCodeGetSize;
    }

    private APIResult getSizeImplProxy(String str) {
        APIResult aPIResult = new APIResult();
        long jCurrentTimeMillis = System.currentTimeMillis();
        aPIResult.ret = getSizeImpl(str);
        aPIResult.costMs = System.currentTimeMillis() - jCurrentTimeMillis;
        return aPIResult;
    }

    private boolean isDataSourcePaused() {
        return (isP2pTaskStart() || (this.mMediaPlayer.i() && this.mMediaPlayer.B())) ? false : true;
    }

    public static boolean isNoTaskByHashError(int i, int i2) {
        if (isP2pDirectError(i, i2)) {
            return i2 == 10710012 || i2 == 20710012 || i2 == 20710006 || i2 == 10710006;
        }
        return false;
    }

    public static boolean isP2pDirect913X(int i, int i2) {
        int iConvertP2pErrorCode;
        return i == 400700 && isP2pDirectCusCode(i, i2) && (iConvertP2pErrorCode = convertP2pErrorCode(i2)) >= 9130 && iConvertP2pErrorCode <= 9139;
    }

    public static boolean isP2pDirectCusCode(int i, int i2) {
        return i == 400700 && getP2pDirectTypeCode(i2) == 9;
    }

    public static boolean isP2pDirectDnsError(int i, int i2) {
        if (i != 400700) {
            return false;
        }
        int p2pDirectTypeCode = getP2pDirectTypeCode(i2);
        return p2pDirectTypeCode == 1 || p2pDirectTypeCode == 8;
    }

    public static boolean isP2pDirectError(int i, int i2) {
        return i == 400700;
    }

    public static boolean isP2pDirectHttp403(int i, int i2) {
        return i == 400700 && convertP2pErrorCode(i2) == 403;
    }

    public static boolean isP2pDirectHttp410(int i, int i2) {
        return i == 400700 && convertP2pErrorCode(i2) == 410;
    }

    public static boolean isP2pDirectHttp4XX(int i, int i2) {
        int iConvertP2pErrorCode;
        return i == 400700 && (iConvertP2pErrorCode = convertP2pErrorCode(i2)) >= 400 && iConvertP2pErrorCode <= 499;
    }

    public static boolean isP2pDirectHttp5XX(int i, int i2) {
        int iConvertP2pErrorCode;
        return i == 400700 && (iConvertP2pErrorCode = convertP2pErrorCode(i2)) >= 500 && iConvertP2pErrorCode <= 599;
    }

    public static boolean isP2pDirectTimeoutError(int i, int i2) {
        int iConvertP2pErrorCode;
        if (i == 400700) {
            return i2 == 107910 || i2 == 107911 || (iConvertP2pErrorCode = convertP2pErrorCode(i2)) == 910 || iConvertP2pErrorCode == 911 || isP2pDirect913X(i, i2);
        }
        return false;
    }

    private long readAtImpl(String str, byte[] bArr, long j, long j2) {
        int[] iArr = new int[1];
        long jA = b.d().a(this.mP2pTask, str, bArr, j, j2, new long[1], iArr);
        if (jA > 0) {
            P2PDebugD(getLogTag(), "readAtImpl out OK. size:" + jA);
            return jA;
        }
        if (-555 == jA) {
            return -2018102640L;
        }
        if (-1 != jA) {
            return convertPlayerErrorCodeReadAt((int) jA);
        }
        int i = iArr[0];
        long jConvertPlayerErrorCodeReadAt = 1 == i ? -2018102641L : convertPlayerErrorCodeReadAt(i);
        P2PDebugD(getLogTag(), "readAtImpl out E_NET_FALSE. ret:" + jConvertPlayerErrorCodeReadAt);
        return jConvertPlayerErrorCodeReadAt;
    }

    private APIResult readAtImplProxy(String str, byte[] bArr, long j, long j2) {
        APIResult aPIResult = new APIResult();
        long jCurrentTimeMillis = System.currentTimeMillis();
        aPIResult.ret = readAtImpl(str, bArr, j, j2);
        aPIResult.costMs = System.currentTimeMillis() - jCurrentTimeMillis;
        return aPIResult;
    }

    @Override
    public void close(String str) throws IOException {
    }

    public void finalize() throws Throwable {
        super.finalize();
        release();
    }

    @Override
    public String getDataSourceUrl() {
        return this.mDataSourceUrl;
    }

    public CdnM3u8Entity getLastM3u8Entity() {
        return this.mLastM3u8Entity;
    }

    @Override
    public long getSize(String str) throws IOException {
        int iBlockReadThread;
        P2PDebugD(getLogTag(), "getSize in url:" + str);
        synchronized (this.mLockObj) {
            try {
                APIResult aPIResult = new APIResult();
                long jCurrentTimeMillis = System.currentTimeMillis();
                callbackOnSourceInfoUpdate();
                while (!isRequestAbort()) {
                    long jCheckHtmlM3u8 = checkHtmlM3u8(aPIResult.ret, 1, str);
                    aPIResult.ret = jCheckHtmlM3u8;
                    if (jCheckHtmlM3u8 < 0 || (iBlockReadThread = blockReadThread()) < 0 || (aPIResult = getSizeImplProxy(str)) == null || aPIResult.ret != -2018102640) {
                        break;
                    }
                    if (iBlockReadThread == 1 || isDataSourcePaused()) {
                        P2PDebugD(getLogTag(), "getSize isDataSourcePaused");
                        jCurrentTimeMillis = System.currentTimeMillis();
                    }
                    jCurrentTimeMillis += aPIResult.costMs;
                    long jCurrentTimeMillis2 = (System.currentTimeMillis() - jCurrentTimeMillis) * 1000;
                    if (isP2pTaskStart()) {
                        if (jCurrentTimeMillis2 > this.mConfig.getReciveDataTimeOutUs()) {
                            if (this.mLastHttpError != null && !StringUtil.isEmpty(this.mLastHttpError.url)) {
                                String fileName = UrlUtil.getFileName(this.mLastHttpError.url);
                                String fileName2 = UrlUtil.getFileName(str);
                                P2PDebugD(getLogTag(), "getSize lastErrorName:" + fileName + ",targetName:" + fileName2);
                                if (!StringUtil.isEmpty(fileName) && !StringUtil.isEmpty(fileName2) && fileName.equals(fileName2)) {
                                    switch (this.mLastHttpError.error_type) {
                                        case 1:
                                        case 2:
                                        case 4:
                                        case 5:
                                        case 7:
                                            DebugLog.i(getLogTag(), "getSize out error_code:" + this.mLastHttpError.error_code);
                                            long jConvertPlayerErrorCodeGetSize = convertPlayerErrorCodeGetSize(convertErrorTypeStaticCode(this.mLastHttpError.error_type), this.mLastHttpError.error_code);
                                            callbackOnSourceInfoUpdate();
                                            return jConvertPlayerErrorCodeGetSize;
                                        case 3:
                                            DebugLog.i(getLogTag(), "getSize out error_code:910");
                                            long jConvertPlayerErrorCodeGetSize2 = convertPlayerErrorCodeGetSize(convertErrorTypeStaticCode(this.mLastHttpError.error_type), ERR_BASE_CODE_910);
                                            callbackOnSourceInfoUpdate();
                                            return jConvertPlayerErrorCodeGetSize2;
                                        case 6:
                                            DebugLog.i(getLogTag(), "getSize out error_code:911");
                                            long jConvertPlayerErrorCodeGetSize3 = convertPlayerErrorCodeGetSize(convertErrorTypeStaticCode(this.mLastHttpError.error_type), ERR_BASE_CODE_911);
                                            callbackOnSourceInfoUpdate();
                                            return jConvertPlayerErrorCodeGetSize3;
                                        case 8:
                                            DebugLog.i(getLogTag(), "getSize out error_code:610");
                                            long jConvertPlayerErrorCodeGetSize4 = convertPlayerErrorCodeGetSize(convertErrorTypeStaticCode(this.mLastHttpError.error_type), 610);
                                            callbackOnSourceInfoUpdate();
                                            return jConvertPlayerErrorCodeGetSize4;
                                    }
                                }
                            }
                            long jCheckM3u8SizeError = checkM3u8SizeError(1, str);
                            if (jCheckM3u8SizeError < 0) {
                                callbackOnSourceInfoUpdate();
                                return jCheckM3u8SizeError;
                            }
                            DebugLog.i(getLogTag(), "getSize out error_code:-2018102642");
                            callbackOnSourceInfoUpdate();
                            return -2018102642L;
                        }
                    } else if (jCurrentTimeMillis2 > 10000000) {
                        c cVar = this.mP2pTask;
                        int iConvertTaskStatusCode = (cVar != null ? convertTaskStatusCode(cVar.b()) : 9) + 9130;
                        DebugLog.i(getLogTag(), "getSize out" + iConvertTaskStatusCode);
                        long jConvertPlayerErrorCodeGetSize5 = convertPlayerErrorCodeGetSize(9, iConvertTaskStatusCode);
                        callbackOnSourceInfoUpdate();
                        return jConvertPlayerErrorCodeGetSize5;
                    }
                    try {
                        this.mLockObj.wait(10L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    aPIResult.clean();
                }
                if (isRequestAbort()) {
                    DebugLog.i(getLogTag(), "getSize out-2018111410");
                    callbackOnSourceInfoUpdate();
                    return -2018111410L;
                }
                P2PDebugD(getLogTag(), "getSize out ret:" + aPIResult.ret);
                long j = aPIResult.ret;
                callbackOnSourceInfoUpdate();
                return j;
            } catch (Throwable th) {
                callbackOnSourceInfoUpdate();
                throw th;
            }
        }
    }

    @Override
    public int getVideoSourceType() {
        return this.mVideoSourceType;
    }

    public boolean isP2pTaskStart() {
        c cVar = this.mP2pTask;
        return cVar != null && cVar.b() == 0;
    }

    public boolean isRequestAbort() {
        return this.mRequestAbort;
    }

    @Override
    public long readAt(String str, byte[] bArr, long j, long j2) throws IOException {
        long j3;
        int iBlockReadThread;
        P2PDebugD(getLogTag(), "readAt in url:" + str + ",start:" + j + ",size:" + j2 + ",buffer:" + bArr);
        synchronized (this.mLockObj) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (true) {
                    j3 = 0;
                    if (!isRequestAbort()) {
                        long jCheckHtmlM3u8 = checkHtmlM3u8(0L, 2, str);
                        if (jCheckHtmlM3u8 >= 0 && (iBlockReadThread = blockReadThread()) >= 0) {
                            jCheckHtmlM3u8 = readAtImpl(str, bArr, j, j2);
                            if (jCheckHtmlM3u8 == -2018102640) {
                                if (iBlockReadThread == 1 || isDataSourcePaused()) {
                                    P2PDebugD(getLogTag(), "readAt isDataSourcePaused");
                                    jCurrentTimeMillis = System.currentTimeMillis();
                                }
                                long jCurrentTimeMillis2 = (System.currentTimeMillis() - jCurrentTimeMillis) * 1000;
                                if (isP2pTaskStart()) {
                                    if (jCurrentTimeMillis2 > this.mConfig.getReciveDataTimeOutUs()) {
                                        if (this.mLastHttpError != null && !StringUtil.isEmpty(this.mLastHttpError.url)) {
                                            String fileName = UrlUtil.getFileName(this.mLastHttpError.url);
                                            String fileName2 = UrlUtil.getFileName(str);
                                            P2PDebugD(getLogTag(), "readAt lastErrorName:" + fileName + ",targetName:" + fileName2);
                                            if (!StringUtil.isEmpty(fileName) && !StringUtil.isEmpty(fileName2) && fileName.equals(fileName2)) {
                                                switch (this.mLastHttpError.error_type) {
                                                    case 1:
                                                    case 2:
                                                    case 4:
                                                    case 5:
                                                    case 7:
                                                        DebugLog.i(getLogTag(), "readAt out mLastHttpError.error_code:" + this.mLastHttpError.error_code);
                                                        return convertPlayerErrorCodeReadAt(convertErrorTypeStaticCode(this.mLastHttpError.error_type), this.mLastHttpError.error_code);
                                                    case 3:
                                                        DebugLog.i(getLogTag(), "readAt out mLastHttpError.error_code:910");
                                                        return convertPlayerErrorCodeReadAt(convertErrorTypeStaticCode(this.mLastHttpError.error_type), ERR_BASE_CODE_910);
                                                    case 6:
                                                        DebugLog.i(getLogTag(), "readAt out mLastHttpError.error_code:911");
                                                        return convertPlayerErrorCodeReadAt(convertErrorTypeStaticCode(this.mLastHttpError.error_type), ERR_BASE_CODE_911);
                                                    case 8:
                                                        DebugLog.i(getLogTag(), "readAt out error_code:610");
                                                        return convertPlayerErrorCodeReadAt(convertErrorTypeStaticCode(this.mLastHttpError.error_type), 610);
                                                }
                                            }
                                        }
                                        long jCheckM3u8SizeError = checkM3u8SizeError(2, str);
                                        if (jCheckM3u8SizeError >= 0) {
                                            DebugLog.i(getLogTag(), "readAt out mLastHttpError.error_code:-2018102643");
                                            return -2018102643L;
                                        }
                                        DebugLog.i(getLogTag(), "readAt out checkRet:" + jCheckM3u8SizeError);
                                        return jCheckM3u8SizeError;
                                    }
                                } else if (jCurrentTimeMillis2 > 10000000) {
                                    c cVar = this.mP2pTask;
                                    int iConvertTaskStatusCode = (cVar != null ? convertTaskStatusCode(cVar.b()) : 9) + 9130;
                                    DebugLog.i(getLogTag(), "readAt out" + iConvertTaskStatusCode);
                                    return convertPlayerErrorCodeReadAt(9, iConvertTaskStatusCode);
                                }
                                try {
                                    this.mLockObj.wait(10L);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                        j3 = jCheckHtmlM3u8;
                        break;
                    }
                    break;
                }
                if (isRequestAbort()) {
                    DebugLog.i(getLogTag(), "readAt out-2018111410");
                    return -2018111410L;
                }
                P2PDebugD(getLogTag(), "readAt out ret:" + j3);
                return j3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void release() {
        DebugLog.i(getLogTag(), "release in");
        this.mRequestAbort = true;
        synchronized (this.mLockObj) {
            this.mLockObj.notifyAll();
        }
        this.mLastHttpError = null;
        this.mLastM3u8Entity = null;
        b.d().b(this.mOnNotifyMsgListener);
        DebugLog.i(getLogTag(), "release out");
    }

    @Override
    public void setInfoListener(IMGTVMediaDataSource.IInfoListener iInfoListener) {
        this.mInfoListener = iInfoListener;
    }

    @Override
    public void setLogTag(String str) {
        this.mTagStr = str;
    }

    public void setP2pTask(c cVar) {
        this.mP2pTask = cVar;
        if (cVar != null) {
            b.d().b(this.mOnNotifyMsgListener);
            b.d().a(this.mOnNotifyMsgListener);
        }
    }

    private static int convertPlayerErrorCodeGetSize(int i, int i2) {
        return convertPlayerErrorCode(1, i, i2);
    }

    private static int convertPlayerErrorCodeReadAt(int i, int i2) {
        return convertPlayerErrorCode(2, i, i2);
    }
}
