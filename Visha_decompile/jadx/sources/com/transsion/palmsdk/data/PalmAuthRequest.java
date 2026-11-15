package com.transsion.palmsdk.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.auth.OooO00o;
import defpackage.aw7;
import defpackage.vj7;

public class PalmAuthRequest implements Parcelable {
    public static final Parcelable.Creator<PalmAuthRequest> CREATOR = new Parcelable.Creator<PalmAuthRequest>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmAuthRequest createFromParcel(Parcel parcel) {
            return new PalmAuthRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmAuthRequest[] newArray(int i) {
            return new PalmAuthRequest[i];
        }
    };
    private aw7 authManager;
    private final String authRequestId;
    private final boolean isFullSDK;
    private boolean isHostMode;
    private boolean isSilentMode;
    private final PalmAuthParam palmAuthParam;
    private final OooO00o response;

    public PalmAuthRequest(PalmAuthParam palmAuthParam, boolean z, OooO00o oooO00o) {
        this.isSilentMode = false;
        this.isHostMode = false;
        this.palmAuthParam = palmAuthParam;
        this.isFullSDK = z;
        this.response = oooO00o;
        this.authRequestId = vj7.c(8);
    }

    private void finishRequest() {
        aw7 aw7Var = this.authManager;
        if (aw7Var != null) {
            aw7Var.f(this.authRequestId);
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public PalmAuthParam getAuthParam() {
        return this.palmAuthParam;
    }

    public String getAuthRequestId() {
        return this.authRequestId;
    }

    public boolean isFullSDK() {
        return this.isFullSDK;
    }

    public boolean isHostMode() {
        return this.isHostMode;
    }

    public boolean isSilentMode() {
        return this.isSilentMode;
    }

    public void onCancel() {
        try {
            OooO00o oooO00o = this.response;
            if (oooO00o != null) {
                oooO00o.onCancel();
            }
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
        finishRequest();
    }

    public void setAuthManager(aw7 aw7Var) {
        this.authManager = aw7Var;
    }

    public void setException(int i, String str) {
        try {
            if (this.isHostMode) {
                i = 49999;
            }
            if (this.response != null) {
                Bundle bundle = new Bundle();
                bundle.putInt("error_code", i);
                bundle.putString(TrackingKey.ERROR_MESSAGE, str);
                this.response.OooO00o(bundle);
            }
        } catch (RemoteException e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
        finishRequest();
    }

    public void setHostMode(boolean z) {
        this.isHostMode = z;
    }

    public void setResult(Bundle bundle) {
        try {
            OooO00o oooO00o = this.response;
            if (oooO00o != null) {
                oooO00o.OooO00o(bundle);
            }
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
        finishRequest();
    }

    public void setSilentMode(boolean z) {
        this.isSilentMode = z;
    }

    public boolean showPrevLogin() {
        return !this.isHostMode && this.palmAuthParam.isShowPrevLogin();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.authRequestId);
        parcel.writeInt(this.isFullSDK ? 1 : 0);
        parcel.writeInt(this.isSilentMode ? 1 : 0);
        parcel.writeParcelable(this.palmAuthParam, i);
        parcel.writeStrongBinder(this.response.asBinder());
        parcel.writeInt(this.isHostMode ? 1 : 0);
    }

    public PalmAuthRequest(Parcel parcel) {
        this.isSilentMode = false;
        this.isHostMode = false;
        this.authRequestId = parcel.readString();
        this.isFullSDK = parcel.readInt() == 1;
        this.isSilentMode = parcel.readInt() == 1;
        this.palmAuthParam = (PalmAuthParam) parcel.readParcelable(PalmAuthParam.class.getClassLoader());
        this.response = OooO00o.AbstractBinderC0239OooO00o.OooO00o(parcel.readStrongBinder());
        this.isHostMode = parcel.readInt() == 1;
    }
}
