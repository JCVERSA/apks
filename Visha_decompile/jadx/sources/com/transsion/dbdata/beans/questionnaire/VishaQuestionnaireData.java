package com.transsion.dbdata.beans.questionnaire;

import com.blankj.utilcode.util.LogUtils;
import com.questionnaire.sdk.QuestionnaireClient;
import defpackage.ge;
import defpackage.pp3;
import defpackage.r0a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class VishaQuestionnaireData {
    private static final String TAG = "visha_" + VishaQuestionnaireData.class.getSimpleName();
    private List<PageCondition> conditions;
    private QuestionnaireClient.d resultData;
    private String tag;

    private List<Integer> getVersionCodes(String str) {
        if (r0a.g(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            for (String str2 : str.split(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
                try {
                    arrayList.add(Integer.valueOf(str2));
                } catch (Exception e) {
                    LogUtils.m(TAG, "isConditionValid: ", e);
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return arrayList;
        }
    }

    public List<PageCondition> getConditions() {
        return this.conditions;
    }

    public QuestionnaireClient.d getResultData() {
        return this.resultData;
    }

    public String getTag() {
        return this.tag;
    }

    public boolean isConditionValid(String str) {
        List<PageCondition> list;
        if (r0a.g(str) || (list = this.conditions) == null || list == null) {
            return false;
        }
        for (PageCondition pageCondition : list) {
            if (pageCondition != null) {
                if (pageCondition.getConditionS61() != null) {
                    PageCondition.ConditionS61 conditionS61 = pageCondition.getConditionS61();
                    List<Integer> versionCodes = getVersionCodes(conditionS61.getVersionCode());
                    if (versionCodes != null && versionCodes.size() > 0 && !versionCodes.contains(Integer.valueOf(ge.b()))) {
                        LogUtils.P(TAG, "isConditionValid: " + str + " versionCode not match current versionCode=" + ge.b());
                        return false;
                    }
                    if (conditionS61.isCloseGP() && ge.c()) {
                        LogUtils.P(TAG, "isConditionValid: " + str + " closeGP and current version is isGP");
                        return false;
                    }
                    if (conditionS61.isClosePreInstall() && pp3.b) {
                        LogUtils.P(TAG, "isConditionValid: " + str + " close PreInstall and current version is PreInstall");
                        return false;
                    }
                    if (conditionS61.getSubPageNames() != null && conditionS61.getSubPageNames().size() > 0) {
                        for (String str2 : conditionS61.getSubPageNames()) {
                            if (str2 != null && str2.equalsIgnoreCase(str)) {
                                LogUtils.j(TAG, "isConditionValid subpage condition = " + str);
                                setTag(conditionS61.getPageName());
                                return true;
                            }
                        }
                    }
                    if (conditionS61.getSubPageNames() == null && str.equalsIgnoreCase(conditionS61.getPageName())) {
                        LogUtils.j(TAG, "isConditionValid condition = " + str);
                        setTag(conditionS61.getPageName());
                        return true;
                    }
                } else {
                    List<Integer> versionCodes2 = getVersionCodes(pageCondition.getVersionCode());
                    if (versionCodes2 != null && versionCodes2.size() > 0 && !versionCodes2.contains(Integer.valueOf(ge.b()))) {
                        LogUtils.j(TAG, "isConditionValid: " + str + " versionCode not match current versionCode=" + ge.b());
                        return false;
                    }
                    if (pageCondition.getSubPageNames() != null && pageCondition.getSubPageNames().size() > 0) {
                        for (String str3 : pageCondition.getSubPageNames()) {
                            if (str3 != null && str3.equalsIgnoreCase(str)) {
                                LogUtils.j(TAG, "isConditionValid subpage condition = " + str);
                                setTag(pageCondition.getPageName());
                                return true;
                            }
                        }
                    }
                    if (pageCondition.getSubPageNames() == null && str.equalsIgnoreCase(pageCondition.getPageName())) {
                        LogUtils.j(TAG, "isConditionValid condition = " + str);
                        setTag(pageCondition.getPageName());
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void setConditions(List<PageCondition> list) {
        this.conditions = list;
    }

    public void setResultData(QuestionnaireClient.d dVar) {
        this.resultData = dVar;
    }

    public void setTag(String str) {
        this.tag = str;
    }
}
