package com.transsion.playercommon.tranquestion;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.questionnaire.sdk.QuestionnaireClient;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.questionnaire.PageCondition;
import com.transsion.dbdata.beans.questionnaire.VishaQuestionnaireData;
import com.transsion.playercommon.R;
import defpackage.ek4;
import defpackage.fi1;
import defpackage.r0a;
import defpackage.x06;
import defpackage.ydc;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class VishaQuestionnaireManager {
    public static final String c = "VISHA_QUESTIONNAIRE_LIST" + ydc.a();
    public String a;
    public List b;

    public class a implements QuestionnaireClient.e {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override
        public void a(boolean z) {
            LogUtils.j("visha_TranQuestionManager", "showQuestionnaire success,result = " + z);
            if (z) {
                MMKV.p().y(this.a, true);
                MMKV.p().t(VishaQuestionnaireManager.this.a, 0);
                x06.b(this.b);
            }
        }
    }

    public class b implements QuestionnaireClient.e {
        public final String a;
        public final String b;

        public b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override
        public void a(boolean z) {
            LogUtils.j("visha_TranQuestionManager", "showVishaQuestionnaire success,result = " + z + " condition=" + this.a);
            if (z) {
                MMKV.p().y(this.b, true);
                x06.b(this.a);
            }
        }
    }

    public static final class c {
        public static final VishaQuestionnaireManager a = new VishaQuestionnaireManager();
    }

    public static VishaQuestionnaireManager c() {
        return c.a;
    }

    public final VishaQuestionnaireData d(String str) {
        List list;
        if (!r0a.g(str) && (list = this.b) != null && list.size() != 0) {
            for (VishaQuestionnaireData vishaQuestionnaireData : this.b) {
                if (vishaQuestionnaireData != null && vishaQuestionnaireData.isConditionValid(str)) {
                    return vishaQuestionnaireData;
                }
            }
        }
        return null;
    }

    public void e(Context context) {
        String strL;
        LogUtils.j("visha_TranQuestionManager", "getQuestionnaires>>>>>>");
        if (context == null) {
            LogUtils.m("visha_TranQuestionManager", "getQuestionnaires failed,context is null");
            return;
        }
        try {
            strL = MMKV.p().l(c);
        } catch (Exception e) {
            LogUtils.m("visha_TranQuestionManager", "getQuestionnaires failed", e);
            strL = null;
        }
        if (!r0a.g(strL)) {
            try {
                this.b = (List) fi1.c(strL, new TypeToken<List<VishaQuestionnaireData>>() {
                }.getType());
                LogUtils.j("visha_TranQuestionManager", "getQuestionnaires success mQuestionnaireList=" + this.b.size());
            } catch (Exception e2) {
                LogUtils.m("visha_TranQuestionManager", "getQuestionnaires failed e=" + e2.getMessage());
            }
        }
        QuestionnaireClient.o(context).p(new QuestionnaireClient.c() {
            @Override
            public final void a(List list) {
                this.a.h(list);
            }
        });
    }

    public void f(Activity activity, String str) {
        ImageView imageView;
        if (activity == null || activity.isDestroyed() || (imageView = (ImageView) activity.findViewById(R.id.questionsdk_bubble)) == null || imageView.getParent() == null || imageView.getParent().getParent() == null) {
            return;
        }
        LogUtils.j("visha_TranQuestionManager", "hideVideoPlayQuestionnaireView pagename: " + str);
        ((View) imageView.getParent()).setVisibility(8);
    }

    public final boolean g() {
        if (MMKV.p().g("APP_VERSION_CODE", 0) == ydc.a()) {
            return false;
        }
        LogUtils.j("visha_TranQuestionManager", "visha app upgrade");
        MMKV.p().t("APP_VERSION_CODE", ydc.a());
        return true;
    }

    public final void h(List list) {
        this.b.clear();
        LogUtils.j("visha_TranQuestionManager", "getQuestionnaires,onGetResult>>>");
        if (list != null && list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                i((QuestionnaireClient.d) it.next());
            }
        }
        try {
            MMKV.p().w(c, ek4.i(this.b));
        } catch (Exception e) {
            LogUtils.m("visha_TranQuestionManager", "getQuestionnaires failed e=" + e.getMessage());
        }
    }

    public final void i(QuestionnaireClient.d dVar) {
        LogUtils.j("visha_TranQuestionManager", "Questionnaire id = " + dVar.a() + " condition = " + dVar.b());
        if (r0a.g(dVar.b())) {
            return;
        }
        try {
            List<PageCondition> list = (List) fi1.c(dVar.b(), new TypeToken<List<PageCondition>>() {
            }.getType());
            VishaQuestionnaireData vishaQuestionnaireData = new VishaQuestionnaireData();
            vishaQuestionnaireData.setResultData(dVar);
            vishaQuestionnaireData.setConditions(list);
            this.b.add(vishaQuestionnaireData);
        } catch (Exception e) {
            LogUtils.m("visha_TranQuestionManager", "getQuestionnaires failed e=" + e.getMessage());
        }
    }

    public void j(Activity activity, String str) {
        if (d(str) != null) {
            c().q(activity, str);
        } else {
            c().f(activity, str);
        }
    }

    public void k(Activity activity, String str) {
        LogUtils.j("visha_TranQuestionManager", "onVishaVideoPlayQuestionnaireViewChange: " + str);
        VishaQuestionnaireData vishaQuestionnaireDataD = d(str);
        int iG = MMKV.p().g(this.a, 0);
        if (vishaQuestionnaireDataD == null || iG < 2) {
            c().f(activity, str);
        } else {
            c().q(activity, str);
        }
    }

    public final boolean l(Activity activity) {
        return (activity == null || activity.isDestroyed() || ((ImageView) activity.findViewById(R.id.questionsdk_bubble)) == null) ? false : true;
    }

    public void m(Context context) {
        QuestionnaireClient.o(context).s();
    }

    public void n() {
        int iG = MMKV.p().g(this.a, 0);
        if (g() || (iG > 0 && iG <= 2)) {
            int i = iG + 1;
            MMKV.p().t(this.a, i);
            LogUtils.j("visha_TranQuestionManager", "video questionnaire count " + i);
        }
    }

    public final void o(Activity activity, String str, VishaQuestionnaireData vishaQuestionnaireData, QuestionnaireClient.e eVar) {
        if (activity != null && eVar != null && vishaQuestionnaireData != null) {
            if (vishaQuestionnaireData.getResultData() != null) {
                QuestionnaireClient.o(activity).w(activity, vishaQuestionnaireData.getResultData().a(), eVar);
            }
        } else {
            LogUtils.j("visha_TranQuestionManager", "no questionnaire,condition=" + str);
        }
    }

    public void p(Activity activity, String str) {
        if (r0a.g(str) || activity == null) {
            return;
        }
        VishaQuestionnaireData vishaQuestionnaireDataD = d(str);
        if (vishaQuestionnaireDataD == null || vishaQuestionnaireDataD.getResultData() == null) {
            f(activity, str);
            return;
        }
        String str2 = vishaQuestionnaireDataD.getTag() + vishaQuestionnaireDataD.getResultData().a();
        int iG = MMKV.p().g(this.a, 0);
        boolean zE = MMKV.p().e(str2, false);
        LogUtils.j("visha_TranQuestionManager", "showVideoPlayQuestionnaire condition = " + str + " cont = " + iG + " has show =  " + zE);
        if (iG >= 2) {
            if (l(activity)) {
                q(activity, str);
            } else {
                if (zE) {
                    return;
                }
                o(activity, str, vishaQuestionnaireDataD, new a(str2, str));
            }
        }
    }

    public void q(Activity activity, String str) {
        ImageView imageView;
        if (activity == null || activity.isDestroyed() || (imageView = (ImageView) activity.findViewById(R.id.questionsdk_bubble)) == null || imageView.getParent() == null || imageView.getParent().getParent() == null) {
            return;
        }
        LogUtils.j("visha_TranQuestionManager", "showVideoPlayQuestionnaireView pagename=" + str);
        ((View) imageView.getParent()).setVisibility(0);
        x06.b(str);
    }

    public void r(Activity activity, String str) {
        VishaQuestionnaireData vishaQuestionnaireDataD;
        if (r0a.g(str) || activity == null || (vishaQuestionnaireDataD = d(str)) == null) {
            return;
        }
        if (l(activity)) {
            q(activity, str);
            return;
        }
        String str2 = vishaQuestionnaireDataD.getTag() + ydc.a();
        boolean zE = MMKV.p().e(str2, false);
        LogUtils.j("visha_TranQuestionManager", "showVishaQuestionnaire condition = " + str + " has show =  " + zE);
        if (zE) {
            return;
        }
        o(activity, str, vishaQuestionnaireDataD, new b(str, str2));
    }

    public VishaQuestionnaireManager() {
        this.a = "VIDEO_PLAY_COUNT";
        this.b = new CopyOnWriteArrayList();
        this.a += ydc.a();
    }
}
