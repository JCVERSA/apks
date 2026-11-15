package com.hunantv.media.drm.cbcs;

import android.media.MediaCrypto;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.drm.IDrmProxy;
import com.hunantv.media.drm.MgtvDrmConstans;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.drm.MgtvDrmSession;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.report.a.b;
import com.hunantv.media.utils.NumericUtil;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class CbcsDrmSession extends MgtvDrmSession {
    CbcsCoreDrmSession coreSession;
    private IDrmManager wasabiDrmManager;
    private int lic = 0;
    private String dpt = "n";
    private int drmType = 3;

    public CbcsDrmSession(IDrmManager.SessionConfig sessionConfig) {
        this.mSessionConfig = sessionConfig;
    }

    public void bindWasabiDrmManager(IDrmManager iDrmManager) {
        this.wasabiDrmManager = iDrmManager;
    }

    @Override
    public int close() {
        synchronized (this.mListenerLocker) {
            this.mRequestClose = true;
            this.mOnProvisionSuccessListenerSet.clear();
            this.mOnProvisionErrorListenerSet.clear();
            this.mOnInfoListenerSet.clear();
        }
        synchronized (this.mSessionLocker) {
            try {
                CbcsCoreDrmSession cbcsCoreDrmSession = this.coreSession;
                if (cbcsCoreDrmSession != null) {
                    cbcsCoreDrmSession.close();
                    this.coreSession = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return 0;
    }

    @Override
    public IDrmProxy createProxy() {
        return null;
    }

    public void finalize() throws Throwable {
        close();
        super.finalize();
    }

    @Override
    public int getCurrentStatus() {
        return this.mStatus;
    }

    @Override
    public int getDrmType() {
        return this.drmType;
    }

    @Override
    public String getDrmdi() {
        b bVar = new b("__");
        bVar.a("lic", this.lic + "");
        bVar.a(CmcdConfiguration.KEY_STREAMING_FORMAT, this.sf + "");
        bVar.a("ec", this.ec + "");
        bVar.a("dpt", this.dpt);
        bVar.a(NotificationCompat.CATEGORY_MESSAGE, this.ec_msg);
        return bVar.toString();
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0072  */
    /* JADX WARN: Code duplicated, block: B:41:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0088  */
    @Override
    public String getDrmt() {
        byte b = 0;
        CbcsCoreDrmSession cbcsCoreDrmSession = this.coreSession;
        if (cbcsCoreDrmSession != null) {
            MgtvDrmParams.DrmInfo selectedDrmInfo = cbcsCoreDrmSession.getSelectedDrmInfo();
            if (selectedDrmInfo != null) {
                String str = selectedDrmInfo.drmSolution;
                str.hashCode();
                switch (str.hashCode()) {
                    case 48:
                        if (!str.equals("0")) {
                            b = -1;
                        }
                        break;
                    case 49:
                    case 51:
                    default:
                        b = -1;
                        break;
                    case 50:
                        b = !str.equals("2") ? (byte) -1 : (byte) 1;
                        break;
                    case 52:
                        b = !str.equals("4") ? (byte) -1 : (byte) 2;
                        break;
                    case 53:
                        b = !str.equals("5") ? (byte) -1 : (byte) 3;
                        break;
                    case 54:
                        b = !str.equals("6") ? (byte) -1 : (byte) 4;
                        break;
                }
                switch (b) {
                    case 0:
                        this.drmType = 1;
                        break;
                    case 1:
                        this.drmType = 4;
                        break;
                    case 2:
                        this.drmType = 2;
                        break;
                    case 3:
                        this.drmType = 3;
                        break;
                    case 4:
                        this.drmType = 10;
                        break;
                }
            }
        } else {
            UUID[] multiDrmOrder = CbcsCoreDrmSession.getMultiDrmOrder();
            if (multiDrmOrder != null && multiDrmOrder.length > 0) {
                UUID uuid = multiDrmOrder[0];
                if (MgtvDrmConstans.WIDEVINE_UUID.equals(uuid)) {
                    this.drmType = 4;
                } else if (MgtvDrmConstans.MARLIN_UUID.equals(uuid)) {
                    this.drmType = 3;
                } else if (MgtvDrmConstans.CHINADRM_UUID.equals(uuid)) {
                    this.drmType = 10;
                }
            }
        }
        return this.drmType + "";
    }

    @Override
    public String getErrorCode() {
        return this.ec + "";
    }

    public int getFirm() {
        CbcsCoreDrmSession cbcsCoreDrmSession = this.coreSession;
        if (cbcsCoreDrmSession == null || cbcsCoreDrmSession.getSelectedDrmInfo() == null) {
            return 0;
        }
        return NumericUtil.parseInt(this.coreSession.getSelectedDrmInfo().drmFirm);
    }

    @Override
    public boolean provision() {
        return true;
    }

    @Override
    public void provisionAsync() {
    }

    @Override
    public synchronized void publishProvisionError(int i) {
        CbcsDrmStrategy.notifyError();
        super.publishProvisionError(i);
    }

    @Override
    public synchronized void publishProvisionSuccess() {
        CbcsDrmStrategy.notifySuccess();
        super.publishProvisionSuccess();
    }

    public void realProvision(Map<UUID, MgtvDrmUtils.PSSH> map) {
        List<MgtvDrmParams.DrmInfo> list;
        synchronized (this.mSessionLocker) {
            try {
                this.sf = 1;
                final long jCurrentTimeMillis = System.currentTimeMillis();
                IDrmManager.SessionConfig sessionConfig = this.mSessionConfig;
                if (sessionConfig == null || (list = sessionConfig.drmInfoList) == null || list.size() <= 0) {
                    this.dpt = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                    publishProvisionError(100);
                    sendDrmExReport(String.valueOf(100), "error config null", "3", getFirm());
                } else {
                    CbcsCoreDrmSession cbcsCoreDrmSession = new CbcsCoreDrmSession(map, this.mSessionConfig.drmInfoList, new CbcsCoreDrmSession.OnDoLicenseListener() {
                        @Override
                        public void onFailed(int i, String str) {
                            ((MgtvDrmSession) CbcsDrmSession.this).sf = 4;
                            CbcsDrmSession.this.dpt = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                            ((MgtvDrmSession) CbcsDrmSession.this).ec_msg = str;
                            CbcsDrmSession.this.publishProvisionError(i);
                            CbcsDrmSession.this.sendDrmExReport(String.valueOf(i), "error request license", "3", CbcsDrmSession.this.getFirm());
                        }

                        @Override
                        public void onSuccess(int i) {
                            ((MgtvDrmSession) CbcsDrmSession.this).sf = 3;
                            CbcsDrmSession.this.lic = i;
                            CbcsDrmSession.this.dpt = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                            CbcsDrmSession.this.sendDrmExReport("0", "", i + "", CbcsDrmSession.this.getFirm());
                            CbcsDrmSession.this.publishProvisionSuccess();
                        }
                    });
                    this.coreSession = cbcsCoreDrmSession;
                    this.sf = 2;
                    cbcsCoreDrmSession.bindMediaPlayer(this.mPlayer);
                    this.coreSession.bindWasabiDrmManager(this.wasabiDrmManager);
                    this.coreSession.autoSelectDrmSolution();
                    this.coreSession.doLicense();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setDrmLicensePrepared() {
        synchronized (this.mSessionLocker) {
            try {
                CbcsCoreDrmSession cbcsCoreDrmSession = this.coreSession;
                if (cbcsCoreDrmSession != null) {
                    try {
                        if (this.mPlayer != null) {
                            if (MgtvDrmConstans.MARLIN_UUID.equals(cbcsCoreDrmSession.getSelectedUUID())) {
                                this.mPlayer.e(2);
                            } else if (this.coreSession.getSelectedDrmInfo() == null || !"6".equals(this.coreSession.getSelectedDrmInfo().drmSolution)) {
                                this.mPlayer.a(new MediaCrypto(this.coreSession.getSelectedUUID(), this.coreSession.getDrmSessionId()));
                            } else {
                                this.mPlayer.e(3);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
