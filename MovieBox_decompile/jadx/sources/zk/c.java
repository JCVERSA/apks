package zk;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.LiveListItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c {

    public static final c f76806a = new c();

    private static final HashSet f76807b = new HashSet();

    private static final HashSet f76808c = new HashSet();

    private static final HashSet f76809d = new HashSet();

    private static final HashSet f76810e = new HashSet();

    public static final int f76811f = 8;

    private c() {
    }

    public final void a() {
        f76807b.clear();
        f76808c.clear();
        f76809d.clear();
    }

    public final void b(OperateItem operateItem, String str, List bannerData, long j10, int i10) {
        Intrinsics.h(operateItem, "operateItem");
        Intrinsics.h(bannerData, "bannerData");
        HashSet hashSet = f76810e;
        if (CollectionsKt.b0(hashSet, operateItem.getOpId())) {
            return;
        }
        String opId = operateItem.getOpId();
        if (opId == null) {
            opId = "";
        }
        hashSet.add(opId);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("opt_type", str);
        String opId2 = operateItem.getOpId();
        if (opId2 == null) {
            opId2 = "";
        }
        linkedHashMap.put("op_id", opId2);
        String title = operateItem.getTitle();
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        linkedHashMap.put("browse_duration", String.valueOf(j10));
        StringBuilder sb3 = new StringBuilder();
        StringBuilder sb4 = new StringBuilder();
        int i11 = 0;
        for (Object obj : bannerData) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            BannerData bannerData2 = (BannerData) obj;
            String subjectId = bannerData2 != null ? bannerData2.getSubjectId() : null;
            if (subjectId == null || subjectId.length() == 0) {
                sb4.append(bannerData2 != null ? bannerData2.getDeepLink() : null);
                sb4.append(",");
            } else {
                sb3.append(bannerData2 != null ? bannerData2.getSubjectId() : null);
                sb3.append(",");
            }
            i11 = i12;
        }
        String string = sb3.toString();
        Intrinsics.g(string, "toString(...)");
        linkedHashMap.put("subject_ids", StringsKt.r1(string, ','));
        String string2 = sb4.toString();
        Intrinsics.g(string2, "toString(...)");
        linkedHashMap.put("deeplinks", StringsKt.r1(string2, ','));
    }

    public final void c(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, Boolean bool2, String str7, Integer num, String str8, Boolean bool3, String str9, String str10, String str11) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", str2 == null ? "" : str2);
        linkedHashMap.put("opt_type", str3 == null ? "" : str3);
        linkedHashMap.put("subject_id", str4 == null ? "" : str4);
        linkedHashMap.put("group_id", str5 == null ? "" : str5);
        linkedHashMap.put("ops", str6 == null ? "" : str6);
        linkedHashMap.put("has_resource", String.valueOf(bool));
        linkedHashMap.put("check_in", String.valueOf(bool2));
        linkedHashMap.put("deeplink", str7);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        linkedHashMap.put("cover", str8);
        linkedHashMap.put("builtin", Intrinsics.c(bool3, Boolean.TRUE) ? "1" : "0");
        linkedHashMap.put("tag", String.valueOf(str9));
        linkedHashMap.put("opTitle", str10 == null ? "" : str10);
        linkedHashMap.put("opId", str11 == null ? "" : str11);
        com.transsion.baselib.helper.a.f42121a.f(str != null ? str : "", linkedHashMap);
    }

    public final void e(int i10, long j10, OperateItem operateItem) {
        String type;
        String opId;
        String title;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        String str = "";
        if (operateItem == null || (type = operateItem.getType()) == null) {
            type = "";
        }
        linkedHashMap.put("opt_type", type);
        if (operateItem == null || (opId = operateItem.getOpId()) == null) {
            opId = "";
        }
        linkedHashMap.put("opId", opId);
        if (operateItem != null && (title = operateItem.getTitle()) != null) {
            str = title;
        }
        linkedHashMap.put("opTitle", str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        linkedHashMap.put("browse_duration", String.valueOf(j10));
        qi.h.f69682a.z("Trending", linkedHashMap);
    }

    public final void f(int i10, OperateItem operateItem) {
        String type;
        String opId;
        String title;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        String str = "";
        if (operateItem == null || (type = operateItem.getType()) == null) {
            type = "";
        }
        linkedHashMap.put("opt_type", type);
        if (operateItem == null || (opId = operateItem.getOpId()) == null) {
            opId = "";
        }
        linkedHashMap.put("opId", opId);
        if (operateItem != null && (title = operateItem.getTitle()) != null) {
            str = title;
        }
        linkedHashMap.put("opTitle", str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        qi.h.f69682a.o("Trending", linkedHashMap);
    }

    public final void g(Subject subject, int i10, OperateItem operateItem) {
        String type;
        String opId;
        String title;
        Intrinsics.h(subject, "subject");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        String str = "";
        if (operateItem == null || (type = operateItem.getType()) == null) {
            type = "";
        }
        linkedHashMap.put("opt_type", type);
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        linkedHashMap.put("ops", ops);
        linkedHashMap.put("has_resource", String.valueOf(subject.getHasResource()));
        if (operateItem == null || (opId = operateItem.getOpId()) == null) {
            opId = "";
        }
        linkedHashMap.put("opId", opId);
        if (operateItem != null && (title = operateItem.getTitle()) != null) {
            str = title;
        }
        linkedHashMap.put("opTitle", str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        qi.h.f69682a.z("Trending", linkedHashMap);
    }

    public final void h(Subject subject, int i10, OperateItem operateItem) {
        String type;
        String opId;
        String title;
        Intrinsics.h(subject, "subject");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        String str = "";
        if (operateItem == null || (type = operateItem.getType()) == null) {
            type = "";
        }
        linkedHashMap.put("opt_type", type);
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        linkedHashMap.put("ops", ops);
        linkedHashMap.put("has_resource", String.valueOf(subject.getHasResource()));
        if (operateItem == null || (opId = operateItem.getOpId()) == null) {
            opId = "";
        }
        linkedHashMap.put("opId", opId);
        if (operateItem != null && (title = operateItem.getTitle()) != null) {
            str = title;
        }
        linkedHashMap.put("opTitle", str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        qi.h.f69682a.o("Trending", linkedHashMap);
    }

    public final void i(OperateItem operateItem, Integer num) {
        String type;
        String deepLink;
        String opId;
        String title;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        String str = "";
        if (operateItem == null || (type = operateItem.getType()) == null) {
            type = "";
        }
        linkedHashMap.put("opt_type", type + "_RANK_MORE");
        if (operateItem == null || (deepLink = operateItem.getDeepLink()) == null) {
            deepLink = "";
        }
        linkedHashMap.put("deeplink", deepLink);
        if (operateItem == null || (opId = operateItem.getOpId()) == null) {
            opId = "";
        }
        linkedHashMap.put("op_id", opId);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        if (operateItem != null && (title = operateItem.getTitle()) != null) {
            str = title;
        }
        linkedHashMap.put("opTitle", str);
        qi.h.f69682a.o("Trending", linkedHashMap);
    }

    public final void j(int i10, String tabCode, HomePreferencesConfig config) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(config, "config");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("dialog_name", "preference");
        linkedHashMap.put("tab_id", String.valueOf(i10));
        linkedHashMap.put(WebConstants.TAB_CODE, tabCode);
        linkedHashMap.put("dialog_id", config.getLabelId());
        linkedHashMap.put("module_name", "close");
        String showStyle = config.getShowStyle();
        if (showStyle == null) {
            showStyle = "";
        }
        linkedHashMap.put("show_style", showStyle);
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(i10), linkedHashMap);
    }

    public final void k(int i10, String tabCode, HomePreferencesConfig config, List selectedOptions) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(config, "config");
        Intrinsics.h(selectedOptions, "selectedOptions");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("dialog_name", "preference");
        linkedHashMap.put("tab_id", String.valueOf(i10));
        linkedHashMap.put(WebConstants.TAB_CODE, tabCode);
        linkedHashMap.put("dialog_id", config.getLabelId());
        String showStyle = config.getShowStyle();
        if (showStyle == null) {
            showStyle = "";
        }
        linkedHashMap.put("show_style", showStyle);
        linkedHashMap.put("module_name", "confirm");
        linkedHashMap.put("select_content", CollectionsKt.s0(selectedOptions, "/", null, null, 0, null, null, 62, null));
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(i10), linkedHashMap);
    }

    public final void l(int i10, String tabCode, HomePreferencesConfig config) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(config, "config");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("dialog_name", "preference");
        linkedHashMap.put("tab_id", String.valueOf(i10));
        linkedHashMap.put(WebConstants.TAB_CODE, tabCode);
        linkedHashMap.put("dialog_id", config.getLabelId());
        String showStyle = config.getShowStyle();
        if (showStyle == null) {
            showStyle = "";
        }
        linkedHashMap.put("show_style", showStyle);
        qi.h.f69682a.p(SubTabFragment.INSTANCE.a(i10), linkedHashMap);
    }

    public final void m(HomePreferencesConfig config, List selectedOptions) {
        Intrinsics.h(config, "config");
        Intrinsics.h(selectedOptions, "selectedOptions");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("dialog_name", "preference_enter_pop");
        linkedHashMap.put("dialog_id", config.getLabelId());
        linkedHashMap.put("show_style", config.getShowStyle());
        linkedHashMap.put("module_name", "confirm");
        linkedHashMap.put("select_content", CollectionsKt.s0(selectedOptions, "/", null, null, 0, null, null, 62, null));
        qi.h.f69682a.o("Trending", linkedHashMap);
    }

    public final void n(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("dialog_name", "preference_enter_pop");
        linkedHashMap.put("dialog_id", config.getLabelId());
        linkedHashMap.put("show_style", config.getShowStyle());
        qi.h.f69682a.p("Trending", linkedHashMap);
    }

    public final void o(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("dialog_name", "preference_enter_pop");
        linkedHashMap.put("dialog_id", config.getLabelId());
        linkedHashMap.put("show_style", config.getShowStyle());
        linkedHashMap.put("module_name", "skip");
        qi.h.f69682a.o("Trending", linkedHashMap);
    }

    public final void p(int i10, String tabCode, HomePreferencesConfig config) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(config, "config");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("tab_id", String.valueOf(i10));
        linkedHashMap.put(WebConstants.TAB_CODE, tabCode);
        linkedHashMap.put("opId", config.getLabelId());
        linkedHashMap.put("opt_id", config.getLabelId());
        linkedHashMap.put("item_type", "opt");
        linkedHashMap.put("opt_type", "Preferences");
        linkedHashMap.put("module_name", "close");
        String showStyle = config.getShowStyle();
        if (showStyle == null) {
            showStyle = "";
        }
        linkedHashMap.put("show_style", showStyle);
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(i10), linkedHashMap);
    }

    public final void q(int i10, String tabCode, HomePreferencesConfig config) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(config, "config");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("tab_id", String.valueOf(i10));
        linkedHashMap.put(WebConstants.TAB_CODE, tabCode);
        linkedHashMap.put("opId", config.getLabelId());
        linkedHashMap.put("opt_id", config.getLabelId());
        linkedHashMap.put("item_type", "opt");
        linkedHashMap.put("opt_type", "Preferences");
        String showStyle = config.getShowStyle();
        if (showStyle == null) {
            showStyle = "";
        }
        linkedHashMap.put("show_style", showStyle);
        qi.h.f69682a.z(SubTabFragment.INSTANCE.a(i10), linkedHashMap);
    }

    public final void r(int i10, String tabCode, HomePreferencesConfig config, List selectedOptions) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(config, "config");
        Intrinsics.h(selectedOptions, "selectedOptions");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("tab_id", String.valueOf(i10));
        linkedHashMap.put(WebConstants.TAB_CODE, tabCode);
        linkedHashMap.put("opId", config.getLabelId());
        linkedHashMap.put("opt_id", config.getLabelId());
        linkedHashMap.put("item_type", "opt");
        linkedHashMap.put("opt_type", "Preferences");
        String showStyle = config.getShowStyle();
        if (showStyle == null) {
            showStyle = "";
        }
        linkedHashMap.put("show_style", showStyle);
        linkedHashMap.put("module_name", "confirm");
        linkedHashMap.put("select_content", CollectionsKt.s0(selectedOptions, ",", null, null, 0, null, null, 62, null));
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(i10), linkedHashMap);
    }

    public final void s(OperateItem operateItem, String str, List subjects, long j10, int i10) {
        Intrinsics.h(operateItem, "operateItem");
        Intrinsics.h(subjects, "subjects");
        HashSet hashSet = f76810e;
        if (CollectionsKt.b0(hashSet, operateItem.getOpId())) {
            return;
        }
        String opId = operateItem.getOpId();
        if (opId == null) {
            opId = "";
        }
        hashSet.add(opId);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("opt_type", str);
        String opId2 = operateItem.getOpId();
        if (opId2 == null) {
            opId2 = "";
        }
        linkedHashMap.put("op_id", opId2);
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        for (Object obj : subjects) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            sb2.append(((Subject) obj).getSubjectId());
            sb2.append(",");
            i11 = i12;
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        linkedHashMap.put("subject_ids", StringsKt.r1(string, ','));
        String title = operateItem.getTitle();
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i10);
        linkedHashMap.put(RequestParameters.POSITION, sb3.toString());
        linkedHashMap.put("browse_duration", String.valueOf(j10));
        com.transsion.baselib.helper.a.f42121a.e("Trending", linkedHashMap);
    }

    public final void t(OperateItem operateItem, String str, List liveList, long j10, int i10) {
        Intrinsics.h(operateItem, "operateItem");
        Intrinsics.h(liveList, "liveList");
        HashSet hashSet = f76810e;
        if (CollectionsKt.b0(hashSet, operateItem.getOpId())) {
            return;
        }
        String opId = operateItem.getOpId();
        if (opId == null) {
            opId = "";
        }
        hashSet.add(opId);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", "opt");
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("opt_type", str);
        String opId2 = operateItem.getOpId();
        if (opId2 == null) {
            opId2 = "";
        }
        linkedHashMap.put("op_id", opId2);
        String title = operateItem.getTitle();
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        for (Object obj : liveList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            sb2.append(((LiveListItem) obj).getMatchId());
            sb2.append(",");
            i11 = i12;
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        linkedHashMap.put("match_ids", StringsKt.r1(string, ','));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i10);
        linkedHashMap.put(RequestParameters.POSITION, sb3.toString());
        linkedHashMap.put("browse_duration", String.valueOf(j10));
        com.transsion.baselib.helper.a.f42121a.e("Trending", linkedHashMap);
    }
}
