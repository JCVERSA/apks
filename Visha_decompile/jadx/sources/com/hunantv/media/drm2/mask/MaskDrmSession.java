package com.hunantv.media.drm2.mask;

import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.drm.IDrmProxy;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.drm.MgtvDrmSession;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.report.a.b;
import com.hunantv.media.utils.NumericUtil;
import java.util.List;

public class MaskDrmSession extends MgtvDrmSession {
    public static final int MAX_ERROR_MSG_SIZE = 100;
    MaskCoreDrmSession coreSession;
    private int lic = 0;
    private String dpt = "n";
    private int drmType = 10;

    public MaskDrmSession(IDrmManager.SessionConfig sessionConfig) {
        this.mSessionConfig = sessionConfig;
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
                MaskCoreDrmSession maskCoreDrmSession = this.coreSession;
                if (maskCoreDrmSession != null) {
                    maskCoreDrmSession.close();
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

    @Override
    public String getDrmt() {
        return this.drmType + "";
    }

    @Override
    public String getErrorCode() {
        return this.ec + "";
    }

    public int getFirm() {
        MaskCoreDrmSession maskCoreDrmSession = this.coreSession;
        if (maskCoreDrmSession == null || maskCoreDrmSession.getSelectedDrmInfo() == null) {
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
        super.publishProvisionError(i);
    }

    @Override
    public synchronized void publishProvisionSuccess() {
        super.publishProvisionSuccess();
    }

    public void realProvision(byte[] bArr) {
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
                    MaskCoreDrmSession maskCoreDrmSession = new MaskCoreDrmSession(bArr, this.mSessionConfig.drmInfoList, new MaskCoreDrmSession.OnDoLicenseListener() {
                        @Override
                        public void onFailed(int i, int i2, String str) {
                            if (str != null && str.length() > 100) {
                                str = str.substring(0, 100);
                            }
                            ((MgtvDrmSession) MaskDrmSession.this).sf = 4;
                            MaskDrmSession.this.dpt = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                            ((MgtvDrmSession) MaskDrmSession.this).ec_msg = str;
                            ((MgtvDrmSession) MaskDrmSession.this).error_what = i;
                            DebugLog.e("MaskDrmSession", "realProvision onFailed error=" + i2 + ",msg=" + str);
                            MaskDrmSession.this.publishProvisionError(i2, str);
                            MaskDrmSession.this.sendDrmExReport(String.valueOf(i2), "error request license", "3", MaskDrmSession.this.getFirm());
                        }

                        @Override
                        public void onSuccess(int i) {
                            ((MgtvDrmSession) MaskDrmSession.this).sf = 3;
                            MaskDrmSession.this.lic = i;
                            MaskDrmSession.this.dpt = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                            MaskDrmSession.this.sendDrmExReport("0", "", i + "", MaskDrmSession.this.getFirm());
                            MaskDrmSession.this.publishProvisionSuccess();
                        }
                    });
                    this.coreSession = maskCoreDrmSession;
                    this.sf = 2;
                    maskCoreDrmSession.bindMediaPlayer(this.mPlayer);
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
            this.mPlayer.E();
        }
    }
}
