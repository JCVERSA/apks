package com.hunantv.media.drm2.mask;

import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.drm.utils.Hex;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.h;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.report.b.a;
import com.hunantv.media.utils.ByteUtil;
import com.mgtv.drm.ILightPlayDrmSession;
import com.mgtv.drm.LightPlayDrmManager;
import java.util.HashMap;
import java.util.List;

public class MaskCoreDrmSession {
    public static final int STATUS_CLOSE = 9;
    public static final int STATUS_FAILED = 1;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_SUCCESS = 2;
    private static final String TAG = "MaskCoreDrmSession";
    ILightPlayDrmSession currentLightPlaySession;
    List<MgtvDrmParams.DrmInfo> drmInfoList;
    private byte[] keyId;
    private OnDoLicenseListener licenseListener;
    h mPlayer;
    MgtvDrmParams.DrmInfo selectedDrmInfo;
    String selectedLicenseUrl;
    Object locker = new Object();
    volatile int status = 0;

    public interface OnDoLicenseListener {
        void onFailed(int i, int i2, String str);

        void onSuccess(int i);
    }

    public MaskCoreDrmSession(byte[] bArr, List<MgtvDrmParams.DrmInfo> list) {
        this.keyId = bArr;
        this.drmInfoList = list;
        init();
    }

    public void doLicenseInner(boolean z) {
        if (this.status == 1 || this.status == 9) {
            return;
        }
        if (!"6".equals(this.selectedDrmInfo.drmSolution)) {
            doLicenseListenerFailed(IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, "", 0);
            return;
        }
        DebugLog.i(TAG, "lightplay selected");
        if (LightPlayDrmManager.getInstance().isProvisioned()) {
            doLicenseLightPlay(false);
        } else {
            doProvisionLightPlay();
        }
    }

    private void doLicenseLightPlay(boolean z) {
        try {
            HashMap map = new HashMap();
            byte[] bArr = this.keyId;
            if (bArr != null && bArr.length > 0) {
                String str = new String(Hex.encodeHex(bArr));
                map.put("keyid", str);
                ILightPlayDrmSession iLightPlayDrmSessionOpenSession = LightPlayDrmManager.getInstance().openSession();
                this.currentLightPlaySession = iLightPlayDrmSessionOpenSession;
                byte[] licenseRequest = iLightPlayDrmSessionOpenSession.getLicenseRequest();
                String contentType = getContentType();
                DebugLog.i(TAG, "doLicenseLightPlay selectedUrl:" + this.selectedLicenseUrl + " ,keyid=" + str);
                if (StringUtil.isEmpty(this.selectedLicenseUrl)) {
                    doLicenseListenerFailed(MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_LICENSE_URL_INVALID, "", 0);
                    return;
                } else {
                    a.a(this.selectedLicenseUrl, map, contentType, licenseRequest, true, new a.InterfaceC0140a() {
                        @Override
                        public void onFailed(String str2, int i) {
                            DebugLog.e(MaskCoreDrmSession.TAG, "request license onFailed err:" + i);
                            MaskCoreDrmSession.this.doLicenseListenerFailed(i, "url:" + str2, 2);
                        }

                        @Override
                        public void onSuccess(String str2, int i, byte[] bArr2) {
                            synchronized (MaskCoreDrmSession.this.locker) {
                                try {
                                    DebugLog.i(MaskCoreDrmSession.TAG, "request license onSuccess code:" + i);
                                    if (MaskCoreDrmSession.this.currentLightPlaySession == null) {
                                        DebugLog.i(MaskCoreDrmSession.TAG, "session already close. only return");
                                        return;
                                    }
                                    if (ByteUtil.isEmpty(bArr2)) {
                                        DebugLog.e(MaskCoreDrmSession.TAG, "error: response license empty");
                                        MaskCoreDrmSession.this.doLicenseListenerFailed(201, "url:" + str2, 2);
                                    } else {
                                        int iProvideLicenseResponse = MaskCoreDrmSession.this.currentLightPlaySession.provideLicenseResponse(bArr2);
                                        if (iProvideLicenseResponse == 0) {
                                            DebugLog.i(MaskCoreDrmSession.TAG, "provideLicenseResponse success ");
                                            if (MaskCoreDrmSession.this.licenseListener != null) {
                                                MaskCoreDrmSession.this.licenseListener.onSuccess(1);
                                            }
                                        } else {
                                            DebugLog.e(MaskCoreDrmSession.TAG, "provideLicenseResponse error ret:" + iProvideLicenseResponse);
                                            MaskCoreDrmSession.this.doLicenseListenerFailed(iProvideLicenseResponse, "url:" + str2, 2);
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    });
                    return;
                }
            }
            DebugLog.e(TAG, "doLicenseLightPlay keyid invalid:" + this.keyId);
            doLicenseListenerFailed(IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, "", 2);
        } catch (Exception e) {
            e.printStackTrace();
            doLicenseListenerFailed(200, e.getMessage(), 2);
        }
    }

    public synchronized void doLicenseListenerFailed(int i, String str, int i2) {
        int i3;
        if (this.status != 1) {
            this.status = 1;
            if (i2 != 1) {
                i3 = i2 != 2 ? MgtvMediaPlayer.MGTVMEDIA_ERROR_400802 : MgtvMediaPlayer.MGTVMEDIA_ERROR_400804;
            } else {
                i3 = MgtvMediaPlayer.MGTVMEDIA_ERROR_400803;
            }
            OnDoLicenseListener onDoLicenseListener = this.licenseListener;
            if (onDoLicenseListener != null) {
                onDoLicenseListener.onFailed(i3, i, str);
            }
        }
    }

    private static String getContentType() {
        return "application/json";
    }

    private MgtvDrmParams.DrmInfo getDrmInfo(String str) {
        for (MgtvDrmParams.DrmInfo drmInfo : this.drmInfoList) {
            DebugLog.i(TAG, "getDrmInfo:" + drmInfo);
            if (str.equals(drmInfo.drmSolution)) {
                return drmInfo;
            }
        }
        return null;
    }

    private void releaseDRM() {
        ILightPlayDrmSession iLightPlayDrmSession = this.currentLightPlaySession;
        if (iLightPlayDrmSession != null) {
            iLightPlayDrmSession.close();
            this.currentLightPlaySession = null;
        }
    }

    public void autoSelectDrmSolution() {
        int i;
        String str;
        DebugLog.i(TAG, "pssh auto select drm solution in. ");
        List<MgtvDrmParams.DrmInfo> list = this.drmInfoList;
        if (list == null || list.size() <= 0) {
            i = IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY;
            str = "drm info empty";
        } else {
            MgtvDrmParams.DrmInfo drmInfo = getDrmInfo("6");
            if (drmInfo != null) {
                this.selectedDrmInfo = drmInfo;
                this.selectedLicenseUrl = drmInfo.licenseUrl;
                DebugLog.i(TAG, "autoSelectDrmSolution selectedLicenseUrl=" + this.selectedLicenseUrl);
                return;
            }
            i = IDrmSession.ERROR_SESSION_DRM_INFO_INVALID;
            str = "drm info invalid";
        }
        doLicenseListenerFailed(i, str, 0);
    }

    public void bindMediaPlayer(h hVar) {
        this.mPlayer = hVar;
    }

    public void close() {
        DebugLog.i(TAG, "close in");
        synchronized (this.locker) {
            this.status = 9;
            releaseDRM();
            this.licenseListener = null;
        }
        DebugLog.i(TAG, "close out");
    }

    public void doLicense() {
        DebugLog.i(TAG, "doLicense in");
        synchronized (this.locker) {
            doLicenseInner(true);
        }
        DebugLog.i(TAG, "doLicense out");
    }

    public void doProvisionLightPlay() {
        if (this.status == 1 || this.status == 9) {
            return;
        }
        byte[] provisionRequest = LightPlayDrmManager.getInstance().getProvisionRequest();
        if (provisionRequest == null) {
            doLicenseListenerFailed(210, "provision", 1);
            return;
        }
        HashMap map = new HashMap();
        String contentType = getContentType();
        String str = this.selectedLicenseUrl;
        DebugLog.i(TAG, "doProvision provisionUrl:" + str);
        if (StringUtil.isEmpty(this.selectedLicenseUrl)) {
            doLicenseListenerFailed(MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_LICENSE_URL_INVALID, "", 0);
        } else {
            a.a(str, map, contentType, provisionRequest, true, new a.InterfaceC0140a() {
                @Override
                public void onFailed(String str2, int i) {
                    DebugLog.e(MaskCoreDrmSession.TAG, "doProvision err:" + i);
                    MaskCoreDrmSession.this.doLicenseListenerFailed(i, "url:" + str2, 1);
                }

                @Override
                public void onSuccess(String str2, int i, byte[] bArr) {
                    synchronized (MaskCoreDrmSession.this.locker) {
                        try {
                            DebugLog.i(MaskCoreDrmSession.TAG, "doProvision response success");
                            if (ByteUtil.isEmpty(bArr)) {
                                DebugLog.e(MaskCoreDrmSession.TAG, "error: response license empty");
                                MaskCoreDrmSession.this.doLicenseListenerFailed(201, "url:" + str2, 1);
                            } else {
                                try {
                                    int iProvideProvisionResponse = LightPlayDrmManager.getInstance().provideProvisionResponse(bArr);
                                    if (iProvideProvisionResponse == 0) {
                                        DebugLog.i(MaskCoreDrmSession.TAG, "LightPlayDrmManager provideProvisionResponse success");
                                        MaskCoreDrmSession.this.doLicenseInner(false);
                                    } else {
                                        String str3 = "";
                                        if (bArr != null) {
                                            str3 = bArr.length > 100 ? new String(bArr, 0, 100) : new String(bArr);
                                        }
                                        DebugLog.e(MaskCoreDrmSession.TAG, "LightPlayDrmManager  provideProvisionResponse error :" + iProvideProvisionResponse);
                                        MaskCoreDrmSession.this.doLicenseListenerFailed(iProvideProvisionResponse, str3, 1);
                                    }
                                } catch (Exception e) {
                                    DebugLog.e(MaskCoreDrmSession.TAG, "error: provideKeyResponse exception " + e.getMessage());
                                    MaskCoreDrmSession.this.doLicenseListenerFailed(IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, e.getMessage() + " url:" + str2, 1);
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
    }

    public MgtvDrmParams.DrmInfo getSelectedDrmInfo() {
        return this.selectedDrmInfo;
    }

    public void init() {
        if (ImgoLibLoader.getInstance().isMgtvDrmLibLoaded()) {
            return;
        }
        DebugLog.i(TAG, "mgtvdrm lib load failed. not use");
    }

    public void setOnDoLicenseListener(OnDoLicenseListener onDoLicenseListener) {
        synchronized (this.locker) {
            this.licenseListener = onDoLicenseListener;
        }
    }

    public MaskCoreDrmSession(byte[] bArr, List<MgtvDrmParams.DrmInfo> list, OnDoLicenseListener onDoLicenseListener) {
        this.keyId = bArr;
        this.drmInfoList = list;
        this.licenseListener = onDoLicenseListener;
        init();
    }
}
