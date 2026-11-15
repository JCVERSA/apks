package com.transsion.dbdata.beans.questionnaire;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import java.util.List;

public class PageCondition {

    @SerializedName("start_s61")
    ConditionS61 conditionS61;

    @SerializedName("page_name")
    String pageName;

    @SerializedName("sub_page_names")
    List<String> subPageNames;

    @SerializedName(hb0.KEY_NAME_VERSION_CODE)
    String versionCode;

    public static class ConditionS61 {

        @SerializedName("gp_close")
        boolean closeGP;

        @SerializedName("preinstall_close")
        boolean closePreInstall;

        @SerializedName("page_name")
        String pageName;

        @SerializedName("sub_page_names")
        List<String> subPageNames;

        @SerializedName(hb0.KEY_NAME_VERSION_CODE)
        String versionCode;

        public String getPageName() {
            return this.pageName;
        }

        public List<String> getSubPageNames() {
            return this.subPageNames;
        }

        public String getVersionCode() {
            return this.versionCode;
        }

        public boolean isCloseGP() {
            return this.closeGP;
        }

        public boolean isClosePreInstall() {
            return this.closePreInstall;
        }

        @NonNull
        public String toString() {
            return "ConditionS61{versionCode='" + this.versionCode + "', pageName='" + this.pageName + "', subPageNames=" + this.subPageNames + ", closeGP=" + this.closeGP + ", closePreInstall=" + this.closePreInstall + '}';
        }
    }

    public ConditionS61 getConditionS61() {
        return this.conditionS61;
    }

    public String getPageName() {
        return this.pageName;
    }

    public List<String> getSubPageNames() {
        return this.subPageNames;
    }

    public String getVersionCode() {
        return this.versionCode;
    }

    @NonNull
    public String toString() {
        return "PageCondition{pageName='" + this.pageName + "', subPageNames=" + this.subPageNames + ", versionCode=" + this.versionCode + '}';
    }
}
