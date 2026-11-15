package com.hunantv.media.drm.cenc;

import android.media.MediaCrypto;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.drm.IDrmProxy;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.drm.MgtvDrmSession;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.player.h;
import com.hunantv.media.report.a.b;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class CencDrmSession extends MgtvDrmSession {
    CencCoreDrmSession coreSession;
    private int lic = 0;
    private String dpt = "n";
    private int drmType = 2;

    public CencDrmSession(IDrmManager.SessionConfig sessionConfig) {
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
                CencCoreDrmSession cencCoreDrmSession = this.coreSession;
                if (cencCoreDrmSession != null) {
                    cencCoreDrmSession.close();
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

    @Override
    public boolean provision() {
        return true;
    }

    @Override
    public void provisionAsync() {
    }

    @Override
    public synchronized void publishProvisionError(int i) {
        CencDrmStrategy.notifyError();
        super.publishProvisionError(i);
    }

    @Override
    public synchronized void publishProvisionSuccess() {
        CencDrmStrategy.notifySuccess();
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
                    sendDrmReport(String.valueOf(100), "error config null", "3");
                } else {
                    CencCoreDrmSession cencCoreDrmSession = new CencCoreDrmSession(map, this.mSessionConfig.drmInfoList, new CencCoreDrmSession.OnDoLicenseListener() {
                        @Override
                        public void onFailed(int i, String str) {
                            ((MgtvDrmSession) CencDrmSession.this).sf = 4;
                            CencDrmSession.this.dpt = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                            ((MgtvDrmSession) CencDrmSession.this).ec_msg = str;
                            CencDrmSession.this.publishProvisionError(i);
                            CencDrmSession.this.sendDrmReport(String.valueOf(i), "error request license", "3");
                        }

                        @Override
                        public void onSuccess() {
                            ((MgtvDrmSession) CencDrmSession.this).sf = 3;
                            CencDrmSession.this.dpt = (System.currentTimeMillis() - jCurrentTimeMillis) + "";
                            CencDrmSession.this.sendDrmReport("0", "", "1");
                            CencDrmSession.this.publishProvisionSuccess();
                        }
                    });
                    this.coreSession = cencCoreDrmSession;
                    this.sf = 2;
                    cencCoreDrmSession.doLicense();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setDrmLicensePrepared() {
        synchronized (this.mSessionLocker) {
            if (this.coreSession != null) {
                try {
                    h hVar = this.mPlayer;
                    if (hVar != null) {
                        hVar.a(new MediaCrypto(this.coreSession.getSelectedUUID(), this.coreSession.getDrmSessionId()));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
