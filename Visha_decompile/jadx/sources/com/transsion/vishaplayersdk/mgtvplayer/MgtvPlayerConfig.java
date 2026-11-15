package com.transsion.vishaplayersdk.mgtvplayer;

import android.app.Application;
import androidx.annotation.NonNull;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import defpackage.r0a;

public class MgtvPlayerConfig {
    private static final String TAG = "visha_playersdk_MgtvPlayerConfig";
    private String adsid;
    private int areacode;
    private boolean bOpenRecommondAd;
    private boolean bOpenRecommondContent;
    private String contentid;
    protected Application context;
    private String gaid;
    private String mid;
    private String oaid;
    protected PlayerInitConfig playerInitConfig;
    private String renderType = "1";
    private int startPosition;
    private String token;
    private String videoid;

    public static final class MgtvPlayerInitConfigBuilder {
        private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + MgtvPlayerConfig.class.getSimpleName();
        private String adsid;
        private int areacode;
        private boolean bOpenRecommondAd;
        private boolean bOpenRecommondContent;
        private String contentid;
        private Application context;
        private String gaid;
        private String mid;
        private String oaid;
        private PlayerInitConfig playerInitConfig;
        private String renderType;
        private int startPosition;
        private String token;
        private String videoid;

        private MgtvPlayerInitConfigBuilder() {
        }

        public static MgtvPlayerInitConfigBuilder aMgtvPlayerInitConfig() {
            return new MgtvPlayerInitConfigBuilder();
        }

        public MgtvPlayerConfig build() {
            MgtvPlayerConfig mgtvPlayerConfig = new MgtvPlayerConfig();
            mgtvPlayerConfig.adsid = this.adsid;
            mgtvPlayerConfig.context = this.context;
            mgtvPlayerConfig.oaid = this.oaid;
            mgtvPlayerConfig.token = this.token;
            mgtvPlayerConfig.mid = this.mid;
            mgtvPlayerConfig.bOpenRecommondContent = this.bOpenRecommondContent;
            mgtvPlayerConfig.bOpenRecommondAd = this.bOpenRecommondAd;
            mgtvPlayerConfig.areacode = this.areacode;
            mgtvPlayerConfig.gaid = this.gaid;
            mgtvPlayerConfig.contentid = this.contentid;
            mgtvPlayerConfig.videoid = this.videoid;
            mgtvPlayerConfig.startPosition = this.startPosition;
            mgtvPlayerConfig.renderType = this.renderType;
            mgtvPlayerConfig.playerInitConfig = this.playerInitConfig;
            return mgtvPlayerConfig;
        }

        public MgtvPlayerInitConfigBuilder withAdsid(String str) {
            this.adsid = str;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withAreaCode(int i) {
            this.areacode = i;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withContentid(String str) {
            this.contentid = str;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withContext(Application application) {
            this.context = application;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withGaid(String str) {
            this.gaid = str;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withMid(String str) {
            this.mid = str;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withOaid(String str) {
            this.oaid = str;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withOpenAdFlag(boolean z) {
            this.bOpenRecommondAd = z;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withOpenContentFlag(boolean z) {
            this.bOpenRecommondContent = z;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withPlayerInitConfig(PlayerInitConfig playerInitConfig) {
            this.playerInitConfig = playerInitConfig;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withRenderType(String str) {
            this.renderType = str;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withStartPosition(int i) {
            this.startPosition = i;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withToken(String str) {
            this.token = str;
            return this;
        }

        public MgtvPlayerInitConfigBuilder withVideoId(String str) {
            this.videoid = str;
            return this;
        }
    }

    public String getAdsid() {
        return this.adsid;
    }

    public int getAreacode() {
        return this.areacode;
    }

    public String getContentid() {
        return this.contentid;
    }

    public Application getContext() {
        return this.context;
    }

    public String getGaid() {
        return this.gaid;
    }

    public String getMid() {
        return this.mid;
    }

    public String getOaid() {
        return this.oaid;
    }

    public PlayerInitConfig getPlayerInitConfig() {
        return this.playerInitConfig;
    }

    public String getRenderType() {
        LogUtils.j(TAG, "setRenderType :" + this.renderType);
        return this.renderType;
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public String getToken() {
        return this.token;
    }

    public String getVideoid() {
        return this.videoid;
    }

    public boolean isValidConfig() {
        if (r0a.g(this.token)) {
            LogUtils.m(TAG, "token must set");
            return false;
        }
        if (r0a.g(this.mid)) {
            LogUtils.m(TAG, "mid must set");
            return false;
        }
        if (!r0a.g(this.videoid)) {
            return true;
        }
        LogUtils.m(TAG, "video must set");
        return false;
    }

    public boolean isbOpenRecommondAd() {
        return this.bOpenRecommondAd;
    }

    public boolean isbOpenRecommondContent() {
        return this.bOpenRecommondContent;
    }

    public void reset() {
        PlayerInitConfig playerInitConfig = this.playerInitConfig;
        if (playerInitConfig != null) {
            playerInitConfig.reset();
        }
    }

    public void setRenderType(String str) {
        this.renderType = str;
    }

    public void setStartPosition(int i) {
        this.startPosition = i;
    }

    public void setVideoid(String str) {
        this.videoid = str;
    }

    @NonNull
    public String toString() {
        return "MgtvPlayerInitConfig{context=" + this.context + ", token='" + this.token + "', mid='" + this.mid + "', adsid='" + this.adsid + "', oaid='" + this.oaid + "', bOpenRecommondContent='" + this.bOpenRecommondContent + "', bOpenRecommondAd='" + this.bOpenRecommondAd + "', areacode='" + this.areacode + "', videoid='" + this.videoid + "', startPosition='" + this.startPosition + "', renderType='" + this.renderType + "', PlayerInitConfig='" + this.playerInitConfig + "'}";
    }
}
