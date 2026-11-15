package com.hunantv.media.drm.cenc;

import android.media.MediaDrm;
import android.util.Base64;
import androidx.media3.common.MimeTypes;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmConstans;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.report.b.a;
import com.hunantv.media.utils.ByteUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class CencCoreDrmSession {
    public static final int STATUS_FAILED = 1;
    public static final int STATUS_NONE = 0;
    private static final String TAG = "CencCoreDrmSession";
    private static final Set<UUID> sCandidateDRMSet = new HashSet<UUID>() {
        {
            add(MgtvDrmConstans.CHINADRM_UUID);
        }
    };
    MediaDrm drm;
    List<MgtvDrmParams.DrmInfo> drmInfoList;
    byte[] drmSessionId;
    private OnDoLicenseListener licenseListener;
    Map<UUID, MgtvDrmUtils.PSSH> psshMap;
    String selectedLicenseUrl;
    MgtvDrmUtils.PSSH selectedPssh;
    UUID selectedUUID;
    Object locker = new Object();
    volatile int status = 0;

    public interface OnDoLicenseListener {
        void onFailed(int i, String str);

        void onSuccess();
    }

    public CencCoreDrmSession(Map<UUID, MgtvDrmUtils.PSSH> map, List<MgtvDrmParams.DrmInfo> list) {
        this.psshMap = map;
        this.drmInfoList = list;
        selectDrmSolution(map, list);
    }

    public synchronized void doLicenseListenerFailed(int i, String str) {
        if (this.status != 1) {
            this.status = 1;
            OnDoLicenseListener onDoLicenseListener = this.licenseListener;
            if (onDoLicenseListener != null) {
                onDoLicenseListener.onFailed(i, str);
            }
        }
    }

    private static String getContentType(UUID uuid) {
        if (MgtvDrmConstans.PLAYREADY_UUID.equals(uuid)) {
            return "text/xml";
        }
        return (MgtvDrmConstans.CLEARKEY_UUID.equals(uuid) || MgtvDrmConstans.CHINADRM_UUID.equals(uuid)) ? "application/json" : "application/octet-stream";
    }

    private String getLicenseUrl(UUID uuid) {
        for (MgtvDrmParams.DrmInfo drmInfo : this.drmInfoList) {
            if (drmInfo != null && MgtvDrmUtils.sCommercialDrmSolutionValueMap.get(uuid).equalsIgnoreCase(drmInfo.drmSolution)) {
                return drmInfo.licenseUrl;
            }
        }
        return null;
    }

    private void selectDrmSolution(Map<UUID, MgtvDrmUtils.PSSH> map, List<MgtvDrmParams.DrmInfo> list) {
        int i;
        String str;
        if (map == null || map.size() <= 0) {
            i = IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY;
            str = "pssh empty";
        } else {
            if (map.containsKey(MgtvDrmConstans.MARLIN_UUID)) {
                DebugLog.i(TAG, "pssh contains marlin uuid");
            }
            if (map.containsKey(MgtvDrmConstans.CHINADRM_UUID)) {
                DebugLog.i(TAG, "pssh contains chinadrm uuid");
            }
            if (map.containsKey(MgtvDrmConstans.WIDEVINE_UUID)) {
                DebugLog.i(TAG, "pssh contains widevine uuid");
            }
            for (UUID uuid : sCandidateDRMSet) {
                if (map.containsKey(uuid) && MgtvDrmUtils.isCryptoSchemeSupported(uuid)) {
                    String licenseUrl = getLicenseUrl(uuid);
                    if (!StringUtil.isEmpty(licenseUrl)) {
                        this.selectedUUID = uuid;
                        this.selectedPssh = map.get(uuid);
                        this.selectedLicenseUrl = licenseUrl;
                        DebugLog.i(TAG, "pssh select" + uuid);
                        return;
                    }
                }
            }
            i = IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT;
            str = "pssh not support";
        }
        doLicenseListenerFailed(i, str);
    }

    public void close() {
        DebugLog.i(TAG, "close in");
        synchronized (this.locker) {
            try {
                MediaDrm mediaDrm = this.drm;
                if (mediaDrm != null) {
                    byte[] bArr = this.drmSessionId;
                    if (bArr != null && bArr.length > 0) {
                        mediaDrm.closeSession(bArr);
                    }
                    this.drm.release();
                    this.licenseListener = null;
                    this.drm = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        DebugLog.i(TAG, "close out");
    }

    public void doLicense() {
        String str;
        MgtvDrmUtils.PSSH pssh;
        List list;
        DebugLog.i(TAG, "doLicense in");
        synchronized (this.locker) {
            try {
                if (this.status == 1) {
                    return;
                }
                UUID uuid = this.selectedUUID;
                if (uuid == null || this.selectedPssh == null) {
                    DebugLog.e(TAG, "drm selected null");
                    doLicenseListenerFailed(203, "");
                    return;
                }
                try {
                    if (MediaDrm.isCryptoSchemeSupported(uuid)) {
                        MediaDrm mediaDrm = new MediaDrm(this.selectedUUID);
                        this.drm = mediaDrm;
                        byte[] bArrOpenSession = mediaDrm.openSession();
                        this.drmSessionId = bArrOpenSession;
                        MediaDrm.KeyRequest keyRequest = this.drm.getKeyRequest(bArrOpenSession, this.selectedPssh.rawData, MimeTypes.VIDEO_MP4, 1, new HashMap<>());
                        if (keyRequest == null) {
                            DebugLog.e(TAG, "doLicense keyRequest is null");
                            doLicenseListenerFailed(IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL, "");
                            return;
                        }
                        HashMap map = new HashMap();
                        if (!MgtvDrmConstans.CHINADRM_UUID.equals(this.selectedUUID) || (pssh = this.selectedPssh) == null || (list = pssh.key_ids) == null || list.size() <= 0) {
                            str = null;
                        } else {
                            str = new String(Base64.decode((String) this.selectedPssh.key_ids.get(0), 0));
                            map.put("key", str);
                        }
                        String contentType = getContentType(this.selectedUUID);
                        DebugLog.i(TAG, "doLicense selectedUrl:" + this.selectedLicenseUrl + " ,key=" + str);
                        a.a(this.selectedLicenseUrl, map, contentType, keyRequest.getData(), true, new a.InterfaceC0140a() {
                            @Override
                            public void onFailed(String str2, int i) {
                                DebugLog.e(CencCoreDrmSession.TAG, "request license onFailed err:" + i);
                                CencCoreDrmSession.this.doLicenseListenerFailed(i, "url:" + str2);
                            }

                            @Override
                            public void onSuccess(String str2, int i, byte[] bArr) {
                                synchronized (CencCoreDrmSession.this.locker) {
                                    DebugLog.i(CencCoreDrmSession.TAG, "request license onSuccess code:" + i);
                                    if (ByteUtil.isEmpty(bArr)) {
                                        DebugLog.e(CencCoreDrmSession.TAG, "error: response license empty");
                                        CencCoreDrmSession.this.doLicenseListenerFailed(201, "url:" + str2);
                                    } else {
                                        CencCoreDrmSession cencCoreDrmSession = CencCoreDrmSession.this;
                                        MediaDrm mediaDrm2 = cencCoreDrmSession.drm;
                                        if (mediaDrm2 != null) {
                                            try {
                                                mediaDrm2.provideKeyResponse(cencCoreDrmSession.drmSessionId, bArr);
                                                if (CencCoreDrmSession.this.licenseListener != null) {
                                                    CencCoreDrmSession.this.licenseListener.onSuccess();
                                                }
                                            } catch (Exception e) {
                                                DebugLog.e(CencCoreDrmSession.TAG, "error: provideKeyResponse exception " + e.getMessage());
                                                CencCoreDrmSession.this.doLicenseListenerFailed(202, e.getMessage() + " url:" + str2);
                                            }
                                        } else {
                                            cencCoreDrmSession.doLicenseListenerFailed(IDrmSession.ERROR_SESSION_DRM_NULL, "url:" + str2);
                                        }
                                    }
                                }
                            }
                        });
                    } else {
                        DebugLog.e(TAG, "error: request license not support yet");
                        doLicenseListenerFailed(IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, "");
                    }
                } catch (Exception e) {
                    DebugLog.e(TAG, "error: dolicense exception " + e.getMessage());
                    doLicenseListenerFailed(200, e.getMessage());
                }
                DebugLog.i(TAG, "doLicense out");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public byte[] getDrmSessionId() {
        return this.drmSessionId;
    }

    public UUID getSelectedUUID() {
        return this.selectedUUID;
    }

    public void setOnDoLicenseListener(OnDoLicenseListener onDoLicenseListener) {
        synchronized (this.locker) {
            this.licenseListener = onDoLicenseListener;
        }
    }

    public CencCoreDrmSession(Map<UUID, MgtvDrmUtils.PSSH> map, List<MgtvDrmParams.DrmInfo> list, OnDoLicenseListener onDoLicenseListener) {
        this.psshMap = map;
        this.drmInfoList = list;
        this.licenseListener = onDoLicenseListener;
        selectDrmSolution(map, list);
    }
}
