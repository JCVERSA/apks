package com.hunantv.media.drm;

import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public abstract class MgtvDrmSession implements IDrmSession {
    protected IDrmSession.OnReportListener mOnReportListener;
    protected h mPlayer;
    protected IDrmManager.SessionConfig mSessionConfig;
    protected volatile boolean isProvisionDone = false;
    protected volatile int mStatus = 0;
    protected Set<IDrmSession.OnProvisionSuccessListener> mOnProvisionSuccessListenerSet = Collections.synchronizedSet(new HashSet());
    protected Set<IDrmSession.OnProvisionErrorListener> mOnProvisionErrorListenerSet = Collections.synchronizedSet(new HashSet());
    protected Set<IDrmSession.OnInfoListener> mOnInfoListenerSet = Collections.synchronizedSet(new HashSet());
    protected Object mListenerLocker = new Object();
    protected Object mSessionLocker = new Object();
    protected volatile boolean mRequestClose = false;
    protected int ec = 0;
    protected int sf = 0;
    protected String ec_msg = "";
    protected int error_what = MgtvMediaPlayer.MGTVMEDIA_ERROR_400802;
    protected boolean isInnerSession = false;

    @Override
    public void addOnInfoListener(IDrmSession.OnInfoListener onInfoListener) {
        synchronized (this.mListenerLocker) {
            try {
                if (this.mRequestClose) {
                    return;
                }
                this.mOnInfoListenerSet.add(onInfoListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void addOnProvisionErrorListener(IDrmSession.OnProvisionErrorListener onProvisionErrorListener) {
        synchronized (this.mListenerLocker) {
            try {
                if (this.mRequestClose) {
                    return;
                }
                this.mOnProvisionErrorListenerSet.add(onProvisionErrorListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void addOnProvisionSuccessListener(IDrmSession.OnProvisionSuccessListener onProvisionSuccessListener) {
        synchronized (this.mListenerLocker) {
            try {
                if (this.mRequestClose) {
                    return;
                }
                this.mOnProvisionSuccessListenerSet.add(onProvisionSuccessListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void bind(h hVar) {
        this.mPlayer = hVar;
    }

    @Override
    public int getErrorWhat() {
        return this.error_what;
    }

    @Override
    public IDrmManager.SessionConfig getSessionConfig() {
        return this.mSessionConfig;
    }

    @Override
    public boolean isInnerSession() {
        return this.isInnerSession;
    }

    @Override
    public boolean isProvisionDone() {
        return this.isProvisionDone;
    }

    public synchronized void publishProvisionError(int i) {
        publishProvisionError(i, "");
    }

    public synchronized void publishProvisionSuccess() {
        this.sf = 4;
        synchronized (this.mListenerLocker) {
            try {
                this.mStatus = 2;
                for (IDrmSession.OnProvisionSuccessListener onProvisionSuccessListener : this.mOnProvisionSuccessListenerSet) {
                    if (onProvisionSuccessListener != null) {
                        onProvisionSuccessListener.onSuccess(this);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void removeOnInfoListener(IDrmSession.OnInfoListener onInfoListener) {
        synchronized (this.mListenerLocker) {
            this.mOnInfoListenerSet.remove(onInfoListener);
        }
    }

    @Override
    public void removeOnProvisionErrorListener(IDrmSession.OnProvisionErrorListener onProvisionErrorListener) {
        synchronized (this.mListenerLocker) {
            this.mOnProvisionErrorListenerSet.remove(onProvisionErrorListener);
        }
    }

    @Override
    public void removeOnProvisionSuccessListener(IDrmSession.OnProvisionSuccessListener onProvisionSuccessListener) {
        synchronized (this.mListenerLocker) {
            this.mOnProvisionSuccessListenerSet.remove(onProvisionSuccessListener);
        }
    }

    public synchronized void sendDrmExReport(String str, String str2, String str3, int i) {
        IDrmSession.OnReportListener onReportListener = this.mOnReportListener;
        if (onReportListener != null) {
            onReportListener.onExReport(str, str2, str3, i);
        }
    }

    public synchronized void sendDrmReport(String str, String str2, String str3) {
        IDrmSession.OnReportListener onReportListener = this.mOnReportListener;
        if (onReportListener != null) {
            onReportListener.onReport(str, str2, str3);
        }
    }

    @Override
    public void setIsInnerSession(boolean z) {
        this.isInnerSession = z;
    }

    @Override
    public void setOnReportListener(IDrmSession.OnReportListener onReportListener) {
        this.mOnReportListener = onReportListener;
    }

    public synchronized void publishProvisionError(int i, String str) {
        synchronized (this.mListenerLocker) {
            try {
                this.mStatus = 3;
                this.ec = i;
                this.ec_msg = str;
                for (IDrmSession.OnProvisionErrorListener onProvisionErrorListener : this.mOnProvisionErrorListenerSet) {
                    if (onProvisionErrorListener != null) {
                        onProvisionErrorListener.onError(this, i, str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
