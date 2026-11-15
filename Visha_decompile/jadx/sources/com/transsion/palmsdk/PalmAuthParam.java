package com.transsion.palmsdk;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.transsion.livecaption.constant.ICode;
import defpackage.vj7;
import defpackage.w29;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class PalmAuthParam implements Parcelable {
    public static final Parcelable.Creator<PalmAuthParam> CREATOR = new b();
    private String mAppProcess;
    private String mAppSign;
    private String mAppid;
    private boolean mBindTransID;
    private boolean mIgnorePalmApp;
    private String mIntentActivity;
    private boolean mOnlyPhoneNum;
    private String mPkgName;
    private String mRedirectUri;
    private boolean mReqToken;
    private String mScopes;
    private int mServerMode;
    private boolean mShowPrevLogin;
    private boolean mShowTPLogin;
    private String mState;
    private String mTudcSpName;

    public static class a {
        public String a;
        public String[] b;
        public String c;
        public boolean d = false;
        public boolean e = false;
        public boolean f = true;
        public int g = 4;
        public String h = null;
        public boolean i = false;
        public boolean j = true;
        public String k = null;
        public String l = null;
        public boolean m = true;

        public PalmAuthParam n() {
            return new PalmAuthParam(this, null);
        }

        public a o() {
            this.d = true;
            return this;
        }

        public a p(String str) {
            this.a = str;
            return this;
        }

        public a q(String[] strArr) {
            this.b = strArr;
            return this;
        }

        public a r(int i) {
            this.g = i;
            return this;
        }

        public a s(boolean z) {
            this.j = z;
            return this;
        }

        public a t(boolean z) {
            this.f = z;
            return this;
        }
    }

    public class b implements Parcelable.Creator {
        @Override
        public Object createFromParcel(Parcel parcel) {
            return new PalmAuthParam(parcel);
        }

        @Override
        public Object[] newArray(int i) {
            return new PalmAuthParam[i];
        }
    }

    public PalmAuthParam(a aVar, b bVar) {
        this(aVar);
    }

    public PalmAuthParam copy() {
        PalmAuthParam palmAuthParam = new PalmAuthParam();
        palmAuthParam.mAppid = this.mAppid;
        palmAuthParam.mScopes = this.mScopes;
        palmAuthParam.mState = this.mState;
        palmAuthParam.mAppSign = this.mAppSign;
        palmAuthParam.mPkgName = this.mPkgName;
        palmAuthParam.mReqToken = true;
        palmAuthParam.mShowTPLogin = this.mShowTPLogin;
        palmAuthParam.mRedirectUri = "https://account.palm.tech/client/callback";
        palmAuthParam.mOnlyPhoneNum = this.mOnlyPhoneNum;
        palmAuthParam.mShowPrevLogin = this.mShowPrevLogin;
        palmAuthParam.mIntentActivity = this.mIntentActivity;
        palmAuthParam.mBindTransID = this.mBindTransID;
        return palmAuthParam;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAppProcess() {
        return this.mAppProcess;
    }

    public String getAppSign() {
        return this.mAppSign;
    }

    public String getAppid() {
        return this.mAppid;
    }

    public String getIntentActivity() {
        return this.mIntentActivity;
    }

    public String getPkgName() {
        return this.mPkgName;
    }

    public String getRedirectUri() {
        return this.mRedirectUri;
    }

    public String getScopes() {
        return this.mScopes;
    }

    public int getServerMode() {
        return this.mServerMode;
    }

    public String getState() {
        return this.mState;
    }

    public String getTudcSpName() {
        return this.mTudcSpName;
    }

    public boolean hasTudc() {
        return this.mTudcSpName != null;
    }

    public boolean ignorePalmApp() {
        return this.mIgnorePalmApp;
    }

    public boolean isBindTransID() {
        return this.mBindTransID;
    }

    public boolean isOnlyPhoneNum() {
        return this.mOnlyPhoneNum;
    }

    public boolean isReqToken() {
        return this.mReqToken && TextUtils.equals(this.mRedirectUri, "https://account.palm.tech/client/callback");
    }

    public boolean isShowPrevLogin() {
        return this.mShowPrevLogin;
    }

    public boolean isShowTPLogin() {
        return this.mShowTPLogin;
    }

    public void setIgnorePalmApp(boolean z) {
        this.mIgnorePalmApp = z;
    }

    public void setShowPreLogin(boolean z) {
        this.mShowPrevLogin = z;
    }

    public void setupApp(Context context) {
        this.mPkgName = context.getPackageName();
        this.mAppSign = vj7.d(context, "MD5");
    }

    public Map<String, Object> toMap() {
        HashMap map = new HashMap();
        map.put("client_id", this.mAppid);
        map.put("redirect_uri", this.mRedirectUri);
        map.put("scope", this.mScopes);
        map.put(ICode.CALL.CALL_KEY_STATE, this.mState);
        return map;
    }

    public String toString() {
        return this.mAppid + StringUtils.COMMA + this.mScopes + StringUtils.COMMA + this.mRedirectUri;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mAppid);
        parcel.writeString(this.mScopes);
        parcel.writeString(this.mRedirectUri);
        parcel.writeString(this.mState);
        parcel.writeInt(this.mReqToken ? 1 : 0);
        parcel.writeInt(this.mShowTPLogin ? 1 : 0);
        parcel.writeString(this.mPkgName);
        parcel.writeString(this.mAppSign);
        try {
            parcel.writeString(new JSONObject().put("onlyPhoneNum", this.mOnlyPhoneNum).put("showPrevLogin", this.mShowPrevLogin).put("intentActivity", this.mIntentActivity).toString());
        } catch (Exception unused) {
        }
    }

    private PalmAuthParam() {
    }

    private PalmAuthParam(a aVar) {
        if (aVar == null) {
            return;
        }
        this.mAppid = aVar.a;
        if (aVar.b != null && aVar.b.length != 0) {
            StringBuilder sb = new StringBuilder();
            for (String str : aVar.b) {
                if (sb.length() == 0) {
                    sb.append(str);
                } else {
                    sb.append(" ");
                    sb.append(str);
                }
            }
            if (sb.indexOf(w29.a) < 0) {
                sb.insert(0, w29.a + " ");
            }
            this.mScopes = sb.toString();
        } else {
            this.mScopes = w29.a;
        }
        if (TextUtils.isEmpty(aVar.c)) {
            this.mRedirectUri = "https://account.palm.tech/client/callback";
        } else {
            this.mRedirectUri = aVar.c;
        }
        this.mState = vj7.c(8);
        this.mReqToken = aVar.d;
        this.mIgnorePalmApp = aVar.e;
        this.mShowTPLogin = aVar.f;
        this.mServerMode = aVar.g;
        this.mTudcSpName = aVar.h;
        this.mOnlyPhoneNum = aVar.i;
        this.mShowPrevLogin = aVar.j;
        this.mIntentActivity = aVar.k;
        this.mAppProcess = aVar.l;
        this.mBindTransID = aVar.m;
    }

    public PalmAuthParam(Parcel parcel) {
        this.mAppid = parcel.readString();
        this.mScopes = parcel.readString();
        this.mRedirectUri = parcel.readString();
        this.mState = parcel.readString();
        this.mReqToken = parcel.readInt() == 1;
        this.mShowTPLogin = parcel.readInt() == 1;
        this.mPkgName = parcel.readString();
        this.mAppSign = parcel.readString();
        try {
            String string = parcel.readString();
            vj7.a.g("option = " + string);
            JSONObject jSONObject = new JSONObject(string);
            this.mOnlyPhoneNum = jSONObject.optBoolean("onlyPhoneNum", false);
            this.mShowPrevLogin = jSONObject.optBoolean("showPrevLogin", true);
            this.mIntentActivity = jSONObject.optString("intentActivity", "");
        } catch (Exception unused) {
            this.mShowPrevLogin = true;
        }
    }
}
