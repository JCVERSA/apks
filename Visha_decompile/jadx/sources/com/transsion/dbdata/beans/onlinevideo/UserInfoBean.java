package com.transsion.dbdata.beans.onlinevideo;

import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.annotations.SerializedName;
import java.util.List;

public class UserInfoBean {
    private static final String TAG = "visha_" + UserInfoBean.class.getSimpleName();

    @SerializedName(TypedValues.AttributesType.S_TARGET)
    private int target;

    @SerializedName("user_info_vo")
    private UserInfoVoBean userInfoVo;

    @SerializedName("vip_info_vos_map")
    private VipInfoVosMapBean vipInfoVosMap;

    public static class UserInfoVoBean {

        @SerializedName("avatar_url")
        private Object avatarUrl;

        @SerializedName("cp_count")
        private Integer cpCount;

        @SerializedName("login_status")
        private Integer loginStatus;

        @SerializedName("nickname")
        private String nickname;

        @SerializedName("vip_count")
        private Integer vipCount;

        @SerializedName("vip_tips")
        private String vipTips;

        public Object getAvatarUrl() {
            return this.avatarUrl;
        }

        public Integer getCpCount() {
            return this.cpCount;
        }

        public Integer getLoginStatus() {
            return this.loginStatus;
        }

        public String getNickname() {
            return this.nickname;
        }

        public Integer getVipCount() {
            return this.vipCount;
        }

        public String getVipTips() {
            return this.vipTips;
        }

        public void setAvatarUrl(Object obj) {
            this.avatarUrl = obj;
        }

        public void setCpCount(Integer num) {
            this.cpCount = num;
        }

        public void setLoginStatus(Integer num) {
            this.loginStatus = num;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setVipCount(Integer num) {
            this.vipCount = num;
        }

        public void setVipTips(String str) {
            this.vipTips = str;
        }

        @NonNull
        public String toString() {
            return "UserInfoVoBean{nickname='" + this.nickname + "', avatarUrl=" + this.avatarUrl + ", vipTips='" + this.vipTips + "', cpCount=" + this.cpCount + ", vipCount=" + this.vipCount + ", loginStatus=" + this.loginStatus + '}';
        }
    }

    public static class VipInfoVosBean {

        @SerializedName("cp_tip")
        private String cpTip;

        @SerializedName("expire_date")
        private String expireDate;

        @SerializedName("expire_date_time_stamp")
        private long expireDateTime;

        @SerializedName("first_discount")
        private String firstDiscount;

        @SerializedName("guide")
        private String guide;

        @SerializedName("icon")
        private String icon;

        @SerializedName(TtmlNode.ATTR_ID)
        private Integer id;

        @SerializedName("is_subscribe")
        private int isSubscribe;

        @SerializedName("renewal_discount")
        private String renewalDiscount;

        @SerializedName("source_type")
        private int sourceType;

        @SerializedName("title")
        private String title;

        @SerializedName("vip_status")
        private Integer vipStatus;

        public String getCpTip() {
            return this.cpTip;
        }

        public String getExpireDate() {
            return this.expireDate;
        }

        public long getExpireDateTime() {
            return this.expireDateTime;
        }

        public String getFirstDiscount() {
            return this.firstDiscount;
        }

        public String getGuide() {
            return this.guide;
        }

        public String getIcon() {
            return this.icon;
        }

        public Integer getId() {
            return this.id;
        }

        public int getIsSubscribe() {
            return this.isSubscribe;
        }

        public String getRenewalDiscount() {
            return this.renewalDiscount;
        }

        public int getSourceType() {
            return this.sourceType;
        }

        public String getTitle() {
            return this.title;
        }

        public Integer getVipStatus() {
            return this.vipStatus;
        }

        public void setCpTip(String str) {
            this.cpTip = str;
        }

        public void setExpireDate(String str) {
            this.expireDate = str;
        }

        public void setExpireDateTime(long j) {
            this.expireDateTime = j;
        }

        public void setFirstDiscount(String str) {
            this.firstDiscount = str;
        }

        public void setGuide(String str) {
            this.guide = str;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public void setId(Integer num) {
            this.id = num;
        }

        public void setIsSubscribe(int i) {
            this.isSubscribe = i;
        }

        public void setRenewalDiscount(String str) {
            this.renewalDiscount = str;
        }

        public void setSourceType(int i) {
            this.sourceType = i;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setVipStatus(Integer num) {
            this.vipStatus = num;
        }

        public String toString() {
            return "VipInfoVosBean{id=" + this.id + ", icon='" + this.icon + "', title='" + this.title + "', guide='" + this.guide + "', firstDiscount='" + this.firstDiscount + "', cpTip='" + this.cpTip + "', vipStatus=" + this.vipStatus + ", renewalDiscount='" + this.renewalDiscount + "', expireDate='" + this.expireDate + "', expireDateTime=" + this.expireDateTime + ", sourceType=" + this.sourceType + ", isSubscribe=" + this.isSubscribe + '}';
        }
    }

    public static class VipInfoVosMapBean {

        @SerializedName("vip")
        private VipBean vip;

        @SerializedName("withoutVip")
        private WithoutVipBean withoutVip;

        public static class VipBean {

            @SerializedName("vipFlag")
            private String vipFlag;

            @SerializedName("vipInfoVos")
            private List<VipInfoVosBean> vipInfoVos;

            public String getVipFlag() {
                return this.vipFlag;
            }

            public List<VipInfoVosBean> getVipInfoVos() {
                return this.vipInfoVos;
            }

            public void setVipFlag(String str) {
                this.vipFlag = str;
            }

            public void setVipInfoVos(List<VipInfoVosBean> list) {
                this.vipInfoVos = list;
            }

            @NonNull
            public String toString() {
                return "VipBean{vipFlag='" + this.vipFlag + "', vipInfoVos=" + this.vipInfoVos + '}';
            }
        }

        public static class WithoutVipBean {

            @SerializedName("vipFlag")
            private String vipFlag;

            @SerializedName("vipInfoVos")
            private List<VipInfoVosBean> vipInfoVos;

            public String getVipFlag() {
                return this.vipFlag;
            }

            public List<VipInfoVosBean> getVipInfoVos() {
                return this.vipInfoVos;
            }

            public void setVipFlag(String str) {
                this.vipFlag = str;
            }

            public void setVipInfoVos(List<VipInfoVosBean> list) {
                this.vipInfoVos = list;
            }

            @NonNull
            public String toString() {
                return "WithoutVipBean{vipFlag='" + this.vipFlag + "', vipInfoVos=" + this.vipInfoVos + '}';
            }
        }

        public VipBean getVip() {
            return this.vip;
        }

        public WithoutVipBean getWithoutVip() {
            return this.withoutVip;
        }

        public void setVip(VipBean vipBean) {
            this.vip = vipBean;
        }

        public void setWithoutVip(WithoutVipBean withoutVipBean) {
            this.withoutVip = withoutVipBean;
        }

        @NonNull
        public String toString() {
            return "VipInfoVosMapBean{withoutVip=" + this.withoutVip + ", vip=" + this.vip + '}';
        }
    }

    public VipInfoVosBean getDefaultVIPInfo() {
        VipInfoVosMapBean vipInfoVosMapBean = this.vipInfoVosMap;
        if (vipInfoVosMapBean == null) {
            return null;
        }
        if (vipInfoVosMapBean.withoutVip != null && this.vipInfoVosMap.withoutVip.vipInfoVos != null && this.vipInfoVosMap.withoutVip.vipInfoVos.size() > 0) {
            for (VipInfoVosBean vipInfoVosBean : this.vipInfoVosMap.withoutVip.vipInfoVos) {
                if (vipInfoVosBean.getId().intValue() == this.target) {
                    return vipInfoVosBean;
                }
            }
        }
        if (this.vipInfoVosMap.vip != null && this.vipInfoVosMap.vip.vipInfoVos != null && this.vipInfoVosMap.vip.vipInfoVos.size() > 0) {
            for (VipInfoVosBean vipInfoVosBean2 : this.vipInfoVosMap.vip.vipInfoVos) {
                if (vipInfoVosBean2.getId().intValue() == this.target) {
                    return vipInfoVosBean2;
                }
            }
        }
        if (this.target <= 0) {
            return null;
        }
        VipInfoVosBean vipInfoVosBean3 = new VipInfoVosBean();
        vipInfoVosBean3.setId(Integer.valueOf(this.target));
        return vipInfoVosBean3;
    }

    public int getTarget() {
        return this.target;
    }

    public UserInfoVoBean getUserInfoVo() {
        return this.userInfoVo;
    }

    public VipInfoVosBean getVIP(int i) {
        VipInfoVosMapBean vipInfoVosMapBean = this.vipInfoVosMap;
        if (vipInfoVosMapBean == null) {
            LogUtils.m(TAG, "not get vip info by source type " + i);
            return null;
        }
        if (vipInfoVosMapBean.withoutVip != null && this.vipInfoVosMap.withoutVip.vipInfoVos != null && this.vipInfoVosMap.withoutVip.vipInfoVos.size() > 0) {
            for (VipInfoVosBean vipInfoVosBean : this.vipInfoVosMap.withoutVip.vipInfoVos) {
                if (vipInfoVosBean.getSourceType() == i) {
                    LogUtils.j(TAG, "get vip info by source type " + i, vipInfoVosBean);
                    return vipInfoVosBean;
                }
            }
        }
        if (this.vipInfoVosMap.vip != null && this.vipInfoVosMap.vip.vipInfoVos != null && this.vipInfoVosMap.vip.vipInfoVos.size() > 0) {
            for (VipInfoVosBean vipInfoVosBean2 : this.vipInfoVosMap.vip.vipInfoVos) {
                if (vipInfoVosBean2.getSourceType() == i) {
                    LogUtils.j(TAG, "get vip info by source type " + i, vipInfoVosBean2);
                    return vipInfoVosBean2;
                }
            }
        }
        LogUtils.m(TAG, "not get vip info by source type " + i);
        return null;
    }

    public VipInfoVosMapBean getVipInfoVosMap() {
        return this.vipInfoVosMap;
    }

    public boolean isLoggedIn() {
        UserInfoVoBean userInfoVoBean = this.userInfoVo;
        return (userInfoVoBean == null || userInfoVoBean.loginStatus == null || this.userInfoVo.loginStatus.intValue() != 1) ? false : true;
    }

    public void setUserInfoVo(UserInfoVoBean userInfoVoBean) {
        this.userInfoVo = userInfoVoBean;
    }

    public void setVipInfoVosMap(VipInfoVosMapBean vipInfoVosMapBean) {
        this.vipInfoVosMap = vipInfoVosMapBean;
    }

    @NonNull
    public String toString() {
        return "UserInfoBean{target=" + this.target + "userInfoVo=" + this.userInfoVo + ", vipInfoVosMap=" + this.vipInfoVosMap + '}';
    }
}
