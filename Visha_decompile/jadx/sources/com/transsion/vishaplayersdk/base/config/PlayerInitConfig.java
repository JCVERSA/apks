package com.transsion.vishaplayersdk.base.config;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;

public class PlayerInitConfig {
    protected Application context;
    protected String mClientIP;
    protected String mCountryCode;
    protected String mGAID;
    protected boolean mIsLogin;
    protected String mLanguageCode;
    protected String mOpenid;
    protected String mPalmToken;
    private WeakReference<Activity> mPlayerActivity;
    protected String mTokenType;
    protected String mUserToken;
    protected String mVAID;
    protected boolean mbVIP = false;
    protected Object playerExtras;
    protected PlayerType playerType;

    public static final class PlayerInitConfigBuilder {
        private Application context;
        private String mClientIP;
        private String mCountryCode;
        private String mGAID;
        private boolean mIsLogin;
        private String mLanguageCode;
        private String mOpenid;
        private String mPalmToken;
        private WeakReference<Activity> mPlayerActivity;
        private String mTokenType;
        private String mUserToken;
        private String mVAID;
        private boolean mbVIP;
        private Object playerExtras;
        private PlayerType playerType;

        public static PlayerInitConfigBuilder aPlayerInitConfig() {
            return new PlayerInitConfigBuilder();
        }

        public PlayerInitConfig build() {
            PlayerInitConfig playerInitConfig = new PlayerInitConfig();
            playerInitConfig.playerType = this.playerType;
            playerInitConfig.context = this.context;
            playerInitConfig.playerExtras = this.playerExtras;
            playerInitConfig.mIsLogin = this.mIsLogin;
            playerInitConfig.mOpenid = this.mOpenid;
            playerInitConfig.mUserToken = this.mUserToken;
            playerInitConfig.mPlayerActivity = this.mPlayerActivity;
            playerInitConfig.mPalmToken = this.mPalmToken;
            playerInitConfig.mCountryCode = this.mCountryCode;
            playerInitConfig.mLanguageCode = this.mLanguageCode;
            playerInitConfig.mClientIP = this.mClientIP;
            playerInitConfig.mGAID = this.mGAID;
            playerInitConfig.mVAID = this.mVAID;
            playerInitConfig.mTokenType = this.mTokenType;
            playerInitConfig.mbVIP = this.mbVIP;
            return playerInitConfig;
        }

        public PlayerInitConfigBuilder whitTokenType(String str) {
            this.mTokenType = str;
            return this;
        }

        public PlayerInitConfigBuilder whitVIP(boolean z) {
            this.mbVIP = z;
            return this;
        }

        public PlayerInitConfigBuilder withClientIP(String str) {
            this.mClientIP = str;
            return this;
        }

        public PlayerInitConfigBuilder withContext(Application application) {
            this.context = application;
            return this;
        }

        public PlayerInitConfigBuilder withCountryCode(String str) {
            this.mCountryCode = str;
            return this;
        }

        public PlayerInitConfigBuilder withGAID(String str) {
            this.mGAID = str;
            return this;
        }

        public PlayerInitConfigBuilder withLanguageCode(String str) {
            this.mLanguageCode = str;
            return this;
        }

        public PlayerInitConfigBuilder withLoginState(boolean z) {
            this.mIsLogin = z;
            return this;
        }

        public PlayerInitConfigBuilder withPalmToken(String str) {
            this.mPalmToken = str;
            return this;
        }

        public PlayerInitConfigBuilder withPlayerActivity(Activity activity) {
            this.mPlayerActivity = new WeakReference<>(activity);
            return this;
        }

        public PlayerInitConfigBuilder withPlayerExtras(Object obj) {
            this.playerExtras = obj;
            return this;
        }

        public PlayerInitConfigBuilder withPlayerType(PlayerType playerType) {
            this.playerType = playerType;
            return this;
        }

        public PlayerInitConfigBuilder withUserOpenID(String str) {
            this.mOpenid = str;
            return this;
        }

        public PlayerInitConfigBuilder withUserToken(String str) {
            this.mUserToken = str;
            return this;
        }

        public PlayerInitConfigBuilder withVAID(String str) {
            this.mVAID = str;
            return this;
        }
    }

    public boolean IsLogin() {
        return this.mIsLogin;
    }

    public String getClientIP() {
        if (this.mClientIP == null) {
            this.mClientIP = "";
        }
        return this.mClientIP;
    }

    public Context getContext() {
        return this.context;
    }

    public String getCountryCode() {
        if (this.mCountryCode == null) {
            this.mCountryCode = "";
        }
        return this.mCountryCode;
    }

    public String getGAID() {
        if (this.mGAID == null) {
            this.mGAID = "";
        }
        return this.mGAID;
    }

    public String getLanguageCode() {
        if (this.mLanguageCode == null) {
            this.mLanguageCode = "";
        }
        return this.mLanguageCode;
    }

    public String getOpenid() {
        if (this.mOpenid == null) {
            this.mOpenid = "";
        }
        return this.mOpenid;
    }

    public String getPalmToken() {
        return this.mPalmToken;
    }

    public Activity getPlayerActivity() {
        WeakReference<Activity> weakReference = this.mPlayerActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public Object getPlayerExtras() {
        return this.playerExtras;
    }

    public PlayerType getPlayerType() {
        return this.playerType;
    }

    public String getTokenType() {
        if (this.mTokenType == null) {
            this.mTokenType = "";
        }
        return this.mTokenType;
    }

    public String getUserToken() {
        if (this.mUserToken == null) {
            this.mUserToken = "";
        }
        return this.mUserToken;
    }

    public String getVAID() {
        if (this.mVAID == null) {
            this.mVAID = "";
        }
        return this.mVAID;
    }

    public boolean isVIP() {
        return this.mbVIP;
    }

    public boolean isValidConfig() {
        return true;
    }

    public void reset() {
    }

    public void setClientIP(String str) {
        this.mClientIP = str;
    }

    public void setCountryCode(String str) {
        this.mCountryCode = str;
    }

    public void setGAID(String str) {
        this.mGAID = str;
    }

    public void setLanguageCode(String str) {
        this.mLanguageCode = str;
    }

    public void setLoginState(boolean z) {
        this.mIsLogin = z;
    }

    public void setOpenid(String str) {
        this.mOpenid = str;
    }

    public void setPalmToken(String str) {
        this.mPalmToken = str;
    }

    public void setTokenType(String str) {
        this.mTokenType = str;
    }

    public void setUserToken(String str) {
        this.mUserToken = str;
    }

    public void setVAID(String str) {
        this.mVAID = str;
    }

    public void setVIP(boolean z) {
        this.mbVIP = z;
    }

    @NonNull
    public String toString() {
        return "PlayerInitConfig{context=" + this.context + ", playerExtras=" + this.playerExtras + ", playerType=" + this.playerType + ", mUserToken=" + this.mUserToken + ", mOpenid=" + this.mOpenid + ", mIsLogin=" + this.mIsLogin + '}';
    }
}
