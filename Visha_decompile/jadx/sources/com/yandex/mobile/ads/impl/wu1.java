package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class wu1 implements hr1<ju1> {
    private final sp1 a;
    private final hr1<String> b;
    private final z32 c;
    private final m50 d;
    private final gl e;
    private final g60 f;
    private final u6 g;

    public wu1(sp1 sp1Var, hr1<String> hr1Var, z32 z32Var, m50 m50Var, gl glVar, g60 g60Var, u6 u6Var) {
        y45.j(sp1Var, "reporter");
        y45.j(hr1Var, "stringResponseParser");
        y45.j(z32Var, "systemCurrentTimeProvider");
        y45.j(m50Var, "encryptionParametersParser");
        y45.j(glVar, "biddingSettingsDataParser");
        y45.j(g60Var, "exclusionRulesJsonConverter");
        y45.j(u6Var, "adQualityAdVerificationConfigurationJsonConverter");
        this.a = sp1Var;
        this.b = hr1Var;
        this.c = z32Var;
        this.d = m50Var;
        this.e = glVar;
        this.f = g60Var;
        this.g = u6Var;
    }

    private static Long a(JSONObject jSONObject) {
        Long l;
        Object objOpt;
        Object objM279constructorimpl;
        vq0 vq0Var = vq0.a;
        y45.j(jSONObject, "jsonObject");
        y45.j("ad_blocker_status_validity_duration", "name");
        if (!jSONObject.has("ad_blocker_status_validity_duration") || (objOpt = jSONObject.opt("ad_blocker_status_validity_duration")) == null) {
            l = null;
        } else {
            vq0 vq0Var2 = vq0.a;
            String strValueOf = String.valueOf(objOpt);
            vq0Var2.getClass();
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(Long.valueOf(Long.parseLong(strValueOf)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            l = (Long) objM279constructorimpl;
        }
        if (l != null) {
            return Long.valueOf(l.longValue() * 1000);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x028e  */
    /* JADX WARN: Code duplicated, block: B:50:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:51:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:54:0x02ce A[Catch: JSONException -> 0x0079, TryCatch #2 {JSONException -> 0x0079, blocks: (B:6:0x001c, B:8:0x006f, B:12:0x007e, B:14:0x00ca, B:16:0x00d5, B:18:0x010a, B:21:0x0117, B:23:0x018e, B:25:0x0197, B:27:0x01a6, B:29:0x01ae, B:32:0x01c9, B:35:0x01d8, B:40:0x0288, B:43:0x028f, B:48:0x02ac, B:52:0x02b8, B:54:0x02ce, B:56:0x02da, B:61:0x0311, B:64:0x0318, B:69:0x0335, B:72:0x033c, B:74:0x0377, B:75:0x037b, B:68:0x032b, B:60:0x0307, B:47:0x02a2, B:39:0x027e, B:44:0x0292, B:57:0x02f7, B:65:0x031b, B:36:0x026c), top: B:84:0x001c, inners: #0, #1, #3, #4 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:63:0x0317  */
    /* JADX WARN: Code duplicated, block: B:71:0x033b  */
    /* JADX WARN: Code duplicated, block: B:74:0x0377 A[Catch: JSONException -> 0x0079, TryCatch #2 {JSONException -> 0x0079, blocks: (B:6:0x001c, B:8:0x006f, B:12:0x007e, B:14:0x00ca, B:16:0x00d5, B:18:0x010a, B:21:0x0117, B:23:0x018e, B:25:0x0197, B:27:0x01a6, B:29:0x01ae, B:32:0x01c9, B:35:0x01d8, B:40:0x0288, B:43:0x028f, B:48:0x02ac, B:52:0x02b8, B:54:0x02ce, B:56:0x02da, B:61:0x0311, B:64:0x0318, B:69:0x0335, B:72:0x033c, B:74:0x0377, B:75:0x037b, B:68:0x032b, B:60:0x0307, B:47:0x02a2, B:39:0x027e, B:44:0x0292, B:57:0x02f7, B:65:0x031b, B:36:0x026c), top: B:84:0x001c, inners: #0, #1, #3, #4 }] */
    @Override
    public final ju1 a(wq1 wq1Var) {
        fl flVar;
        l50 l50Var;
        Object objM279constructorimpl;
        Object objM279constructorimpl2;
        JSONArray jSONArrayOptJSONArray;
        Set<e60> setA;
        Object objM279constructorimpl3;
        Object objM279constructorimpl4;
        List<String> listC;
        JSONObject jSONObjectOptJSONObject;
        y45.j(wq1Var, "networkResponse");
        String strA = this.b.a(wq1Var);
        if (strA != null && strA.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(strA);
                Long lA = a(jSONObject);
                boolean zOptBoolean = jSONObject.optBoolean("aab_disabled");
                boolean zOptBoolean2 = jSONObject.optBoolean("autograb_enabled");
                boolean zOptBoolean3 = jSONObject.optBoolean("custom_click_handling_enabled");
                boolean zOptBoolean4 = jSONObject.optBoolean("legacy_visibility_logic_enabled");
                boolean zOptBoolean5 = jSONObject.optBoolean("legacy_vast_tracking_enabled");
                boolean zOptBoolean6 = jSONObject.optBoolean("overlapping_view_tracking_enabled");
                boolean zOptBoolean7 = jSONObject.optBoolean("overlapping_window_tracking_enabled");
                boolean zOptBoolean8 = jSONObject.optBoolean("open_measurement_sdk_disabled");
                boolean zOptBoolean9 = jSONObject.optBoolean("multibanner_arrow_controls_disabled");
                vq0 vq0Var = vq0.a;
                y45.j(jSONObject, "jsonObject");
                y45.j("visibility_error_indicator_enabled", "name");
                Boolean boolValueOf = jSONObject.has("visibility_error_indicator_enabled") ? Boolean.valueOf(jSONObject.optBoolean("visibility_error_indicator_enabled")) : null;
                String strOptString = jSONObject.optString("mraid_controller", null);
                String strOptString2 = jSONObject.optString("open_measurement_sdk_controller", null);
                String strOptString3 = jSONObject.optString("click_handler_type", null);
                String strOptString4 = jSONObject.optString("ad_host", null);
                String strOptString5 = jSONObject.optString("divkit_font", null);
                String strOptString6 = jSONObject.optString("instream_design", null);
                boolean zOptBoolean10 = jSONObject.optBoolean("sensitive_mode_disabled");
                boolean zOptBoolean11 = jSONObject.optBoolean("hard_sensitive_mode_enabled");
                boolean zOptBoolean12 = jSONObject.optBoolean("encrypted_requests_enabled");
                Boolean boolValueOf2 = jSONObject.has("mediation_sensitive_mode_disabled") ? Boolean.valueOf(jSONObject.optBoolean("mediation_sensitive_mode_disabled")) : null;
                boolean zOptBoolean13 = jSONObject.optBoolean("fused_location_provider_disabled");
                boolean zOptBoolean14 = jSONObject.optBoolean("lock_screen_enabled");
                boolean zOptBoolean15 = jSONObject.optBoolean("impression_validation_on_click_enabled");
                boolean zOptBoolean16 = jSONObject.optBoolean("legacy_slider_impression_enabled");
                long jOptLong = jSONObject.optLong("reload_timeout");
                this.c.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis() + (jOptLong > 0 ? jOptLong * 1000 : 86400000L);
                int iOptInt = jSONObject.optInt("ad_ids_storage_size");
                int iOptInt2 = jSONObject.optInt("native_web_view_pool_size");
                long jOptLong2 = jSONObject.optLong("max_disk_cache_size_bytes_for_video");
                long jOptLong3 = jSONObject.optLong("max_disk_cache_size_bytes_for_request_queue");
                Integer numB = vq0.b("ad_request_max_retries", jSONObject);
                Boolean bool = boolValueOf2;
                Integer numB2 = vq0.b("ping_request_max_retries", jSONObject);
                Boolean bool2 = boolValueOf;
                boolean zOptBoolean17 = jSONObject.optBoolean("show_version_validation_error_log", false);
                boolean zOptBoolean18 = jSONObject.optBoolean("show_version_validation_error_indicator", false);
                boolean zOptBoolean19 = jSONObject.optBoolean("fullscreen_back_button_enabled", false);
                boolean zOptBoolean20 = jSONObject.optBoolean("divkit_disabled", false);
                boolean zOptBoolean21 = jSONObject.optBoolean("use_okhttp_network_stack", false);
                boolean zOptBoolean22 = jSONObject.optBoolean("location_consent", false);
                boolean zOptBoolean23 = jSONObject.optBoolean("libssl_enabled", false);
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("bidding_settings");
                fl flVarB = jSONObjectOptJSONObject2 != null ? this.e.b(jSONObjectOptJSONObject2) : null;
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("encryption");
                this.d.getClass();
                try {
                    try {
                        try {
                            try {
                                if (jSONObjectOptJSONObject3 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject3.optJSONObject("rsa")) != null) {
                                    flVar = flVarB;
                                    String strOptString7 = jSONObjectOptJSONObject.optString("public_key", "");
                                    Integer numB3 = vq0.b("version", jSONObjectOptJSONObject);
                                    y45.g(strOptString7);
                                    if (strOptString7.length() > 0 && numB3 != null) {
                                        l50Var = new l50(numB3.intValue(), strOptString7);
                                    }
                                    l50 l50Var2 = l50Var;
                                    boolean zOptBoolean24 = jSONObject.optBoolean("legacy_impression_callback_enabled", false);
                                    boolean zOptBoolean25 = jSONObject.optBoolean("close_fullscreen_with_adtune_disabled", false);
                                    boolean zOptBoolean26 = jSONObject.optBoolean("render_asset_validation_enabled", false);
                                    boolean zOptBoolean27 = jSONObject.optBoolean("automatic_sdk_initialization_delay_enabled", false);
                                    boolean zOptBoolean28 = jSONObject.optBoolean("native_banner_enabled", false);
                                    boolean zOptBoolean29 = jSONObject.optBoolean("use_divkit_close_action_instead_system_click", false);
                                    String strOptString8 = jSONObject.optString("banner_size_calculation_type", null);
                                    String strOptString9 = jSONObject.optString("startup_version", null);
                                    boolean zOptBoolean30 = jSONObject.optBoolean("app_open_ad_preloading_enabled", false);
                                    boolean zOptBoolean31 = jSONObject.optBoolean("interstitial_preloading_enabled", false);
                                    boolean zOptBoolean32 = jSONObject.optBoolean("rewarded_preloading_enabled", false);
                                    boolean zOptBoolean33 = jSONObject.optBoolean("new_false_click_tracking_enabled", false);
                                    boolean zOptBoolean34 = jSONObject.optBoolean("varioqub_enabled", false);
                                    boolean zOptBoolean35 = jSONObject.optBoolean("aab_http_check_disabled", false);
                                    Integer numB4 = vq0.b("aab_http_check_failed_requests_count", jSONObject);
                                    boolean zOptBoolean36 = jSONObject.optBoolean("crash_tracker_enabled", false);
                                    boolean zOptBoolean37 = jSONObject.optBoolean("error_tracker_enabled", false);
                                    boolean zOptBoolean38 = jSONObject.optBoolean("anr_tracker_enabled", false);
                                    Result.Companion companion = Result.INSTANCE;
                                    objM279constructorimpl = Result.m279constructorimpl(Long.valueOf(jSONObject.getLong("anr_tracker_interval")));
                                    if (Result.m285isFailureimpl(objM279constructorimpl)) {
                                        objM279constructorimpl = null;
                                    }
                                    Long l = (Long) objM279constructorimpl;
                                    objM279constructorimpl2 = Result.m279constructorimpl(Long.valueOf(jSONObject.getLong("anr_tracker_threshold")));
                                    if (Result.m285isFailureimpl(objM279constructorimpl2)) {
                                        objM279constructorimpl2 = null;
                                    }
                                    Long l2 = (Long) objM279constructorimpl2;
                                    boolean zOptBoolean39 = jSONObject.optBoolean("crash_ignore_enabled", false);
                                    jSONArrayOptJSONArray = jSONObject.optJSONArray("crash_stack_trace_exclusion_rules");
                                    if (jSONArrayOptJSONArray != null) {
                                        this.f.getClass();
                                        setA = g60.a(jSONArrayOptJSONArray);
                                    } else {
                                        setA = null;
                                    }
                                    Set<e60> set = setA;
                                    boolean zOptBoolean40 = jSONObject.optBoolean("time_stamping_tracking_urls_enabled", false);
                                    boolean zOptBoolean41 = jSONObject.optBoolean("app_ad_analytics_reporting_enabled", true);
                                    boolean zOptBoolean42 = jSONObject.optBoolean("app_metrica_easy_integration_auto_activation_disabled", false);
                                    objM279constructorimpl3 = Result.m279constructorimpl(Integer.valueOf(jSONObject.getInt("network_thread_pool_size")));
                                    if (Result.m285isFailureimpl(objM279constructorimpl3)) {
                                        objM279constructorimpl3 = null;
                                    }
                                    Integer num = (Integer) objM279constructorimpl3;
                                    objM279constructorimpl4 = Result.m279constructorimpl(Integer.valueOf(jSONObject.getInt("image_loading_thread_pool_size")));
                                    if (Result.m285isFailureimpl(objM279constructorimpl4)) {
                                        objM279constructorimpl4 = null;
                                    }
                                    Integer num2 = (Integer) objM279constructorimpl4;
                                    Integer numB5 = vq0.b("timeout_interval_for_request", jSONObject);
                                    Integer numB6 = vq0.b("timeout_interval_for_ping_request", jSONObject);
                                    u6 u6Var = this.g;
                                    JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("verification_configuration");
                                    u6Var.getClass();
                                    b7 b7VarA = u6.a(jSONObjectOptJSONObject4);
                                    boolean zOptBoolean43 = jSONObject.optBoolean("sdk_tracking_reporter_enabled", false);
                                    vq0.a.getClass();
                                    listC = vq0.c("fallback_hosts", jSONObject);
                                    if (listC == null) {
                                        listC = defpackage.y71.k();
                                    }
                                    List<String> list = listC;
                                    boolean zOptBoolean44 = jSONObject.optBoolean("should_prefetch_dns", false);
                                    boolean zOptBoolean45 = jSONObject.optBoolean("should_use_ad_rendered_web_view_callback", false);
                                    boolean zOptBoolean46 = jSONObject.optBoolean("vpn_checking_enabled", false);
                                    boolean zOptBoolean47 = jSONObject.optBoolean("outstream_wrapper_video_supported", false);
                                    boolean zOptBoolean48 = jSONObject.optBoolean("validate_click_in_web_view", false);
                                    ju1.a aVarR = new ju1.a().b(numB).e(numB2).a(lA).c(zOptBoolean).g(zOptBoolean2).a(iOptInt).b(iOptInt2).c(jOptLong2).b(jOptLong3).a(jCurrentTimeMillis).f(strOptString).g(strOptString2).l(zOptBoolean3).b(strOptString8).d(bool2).h("7.12.2").A(zOptBoolean14).b(bool).L(zOptBoolean10).s(zOptBoolean11).r(zOptBoolean13);
                                    int i = pw1.l;
                                    return aVarR.c(pw1.a.a().j()).a(pw1.a.a().f()).x(zOptBoolean4).i(zOptBoolean25).w(zOptBoolean5).G(zOptBoolean6).H(zOptBoolean7).E(zOptBoolean8).B(zOptBoolean9).t(zOptBoolean15).v(zOptBoolean16).O(zOptBoolean17).N(zOptBoolean18).e(strOptString6).q(zOptBoolean19).a(flVar).a(l50Var2).n(zOptBoolean24).m(zOptBoolean20).S(zOptBoolean21).z(zOptBoolean22).y(zOptBoolean23).a(strOptString4).d(strOptString5).o(zOptBoolean12).I(zOptBoolean26).c(strOptString3).h(zOptBoolean27).C(zOptBoolean28).R(zOptBoolean29).i(strOptString9).f(zOptBoolean30).u(zOptBoolean31).J(zOptBoolean32).D(zOptBoolean33).U(zOptBoolean34).a(zOptBoolean35).a(numB4).k(zOptBoolean36).p(zOptBoolean37).b(zOptBoolean38).b(l).c(l2).j(zOptBoolean39).a(set).Q(zOptBoolean40).d(zOptBoolean41).e(zOptBoolean42).d(num).c(num2).g(numB5).f(numB6).a(b7VarA).K(zOptBoolean43).a(list).M(zOptBoolean44).P(zOptBoolean45).V(zOptBoolean46).F(zOptBoolean47).T(zOptBoolean48).a();
                                }
                                flVar = flVarB;
                                Result.Companion companion2 = Result.INSTANCE;
                                objM279constructorimpl = Result.m279constructorimpl(Long.valueOf(jSONObject.getLong("anr_tracker_interval")));
                            } catch (Throwable th) {
                                Result.Companion companion3 = Result.INSTANCE;
                                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
                            }
                            objM279constructorimpl4 = Result.m279constructorimpl(Integer.valueOf(jSONObject.getInt("image_loading_thread_pool_size")));
                        } catch (Throwable th2) {
                            Result.Companion companion4 = Result.INSTANCE;
                            objM279constructorimpl4 = Result.m279constructorimpl(kotlin.c.a(th2));
                        }
                        objM279constructorimpl3 = Result.m279constructorimpl(Integer.valueOf(jSONObject.getInt("network_thread_pool_size")));
                    } catch (Throwable th3) {
                        Result.Companion companion5 = Result.INSTANCE;
                        objM279constructorimpl3 = Result.m279constructorimpl(kotlin.c.a(th3));
                    }
                    objM279constructorimpl2 = Result.m279constructorimpl(Long.valueOf(jSONObject.getLong("anr_tracker_threshold")));
                } catch (Throwable th4) {
                    Result.Companion companion6 = Result.INSTANCE;
                    objM279constructorimpl2 = Result.m279constructorimpl(kotlin.c.a(th4));
                }
                l50Var = null;
                l50 l50Var3 = l50Var;
                boolean zOptBoolean210 = jSONObject.optBoolean("legacy_impression_callback_enabled", false);
                boolean zOptBoolean211 = jSONObject.optBoolean("close_fullscreen_with_adtune_disabled", false);
                boolean zOptBoolean212 = jSONObject.optBoolean("render_asset_validation_enabled", false);
                boolean zOptBoolean213 = jSONObject.optBoolean("automatic_sdk_initialization_delay_enabled", false);
                boolean zOptBoolean214 = jSONObject.optBoolean("native_banner_enabled", false);
                boolean zOptBoolean215 = jSONObject.optBoolean("use_divkit_close_action_instead_system_click", false);
                String strOptString10 = jSONObject.optString("banner_size_calculation_type", null);
                String strOptString11 = jSONObject.optString("startup_version", null);
                boolean zOptBoolean310 = jSONObject.optBoolean("app_open_ad_preloading_enabled", false);
                boolean zOptBoolean311 = jSONObject.optBoolean("interstitial_preloading_enabled", false);
                boolean zOptBoolean312 = jSONObject.optBoolean("rewarded_preloading_enabled", false);
                boolean zOptBoolean313 = jSONObject.optBoolean("new_false_click_tracking_enabled", false);
                boolean zOptBoolean314 = jSONObject.optBoolean("varioqub_enabled", false);
                boolean zOptBoolean315 = jSONObject.optBoolean("aab_http_check_disabled", false);
                Integer numB7 = vq0.b("aab_http_check_failed_requests_count", jSONObject);
                boolean zOptBoolean316 = jSONObject.optBoolean("crash_tracker_enabled", false);
                boolean zOptBoolean317 = jSONObject.optBoolean("error_tracker_enabled", false);
                boolean zOptBoolean318 = jSONObject.optBoolean("anr_tracker_enabled", false);
                if (Result.m285isFailureimpl(objM279constructorimpl)) {
                    objM279constructorimpl = null;
                }
                Long l3 = (Long) objM279constructorimpl;
                if (Result.m285isFailureimpl(objM279constructorimpl2)) {
                    objM279constructorimpl2 = null;
                }
                Long l4 = (Long) objM279constructorimpl2;
                boolean zOptBoolean319 = jSONObject.optBoolean("crash_ignore_enabled", false);
                jSONArrayOptJSONArray = jSONObject.optJSONArray("crash_stack_trace_exclusion_rules");
                if (jSONArrayOptJSONArray != null) {
                    this.f.getClass();
                    setA = g60.a(jSONArrayOptJSONArray);
                } else {
                    setA = null;
                }
                Set<e60> set2 = setA;
                boolean zOptBoolean49 = jSONObject.optBoolean("time_stamping_tracking_urls_enabled", false);
                boolean zOptBoolean410 = jSONObject.optBoolean("app_ad_analytics_reporting_enabled", true);
                boolean zOptBoolean411 = jSONObject.optBoolean("app_metrica_easy_integration_auto_activation_disabled", false);
                if (Result.m285isFailureimpl(objM279constructorimpl3)) {
                    objM279constructorimpl3 = null;
                }
                Integer num3 = (Integer) objM279constructorimpl3;
                if (Result.m285isFailureimpl(objM279constructorimpl4)) {
                    objM279constructorimpl4 = null;
                }
                Integer num4 = (Integer) objM279constructorimpl4;
                Integer numB8 = vq0.b("timeout_interval_for_request", jSONObject);
                Integer numB9 = vq0.b("timeout_interval_for_ping_request", jSONObject);
                u6 u6Var2 = this.g;
                JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("verification_configuration");
                u6Var2.getClass();
                b7 b7VarA2 = u6.a(jSONObjectOptJSONObject5);
                boolean zOptBoolean412 = jSONObject.optBoolean("sdk_tracking_reporter_enabled", false);
                vq0.a.getClass();
                listC = vq0.c("fallback_hosts", jSONObject);
                if (listC == null) {
                    listC = defpackage.y71.k();
                }
                List<String> list2 = listC;
                boolean zOptBoolean413 = jSONObject.optBoolean("should_prefetch_dns", false);
                boolean zOptBoolean414 = jSONObject.optBoolean("should_use_ad_rendered_web_view_callback", false);
                boolean zOptBoolean415 = jSONObject.optBoolean("vpn_checking_enabled", false);
                boolean zOptBoolean416 = jSONObject.optBoolean("outstream_wrapper_video_supported", false);
                boolean zOptBoolean417 = jSONObject.optBoolean("validate_click_in_web_view", false);
                ju1.a aVarR2 = new ju1.a().b(numB).e(numB2).a(lA).c(zOptBoolean).g(zOptBoolean2).a(iOptInt).b(iOptInt2).c(jOptLong2).b(jOptLong3).a(jCurrentTimeMillis).f(strOptString).g(strOptString2).l(zOptBoolean3).b(strOptString10).d(bool2).h("7.12.2").A(zOptBoolean14).b(bool).L(zOptBoolean10).s(zOptBoolean11).r(zOptBoolean13);
                int i2 = pw1.l;
                return aVarR2.c(pw1.a.a().j()).a(pw1.a.a().f()).x(zOptBoolean4).i(zOptBoolean211).w(zOptBoolean5).G(zOptBoolean6).H(zOptBoolean7).E(zOptBoolean8).B(zOptBoolean9).t(zOptBoolean15).v(zOptBoolean16).O(zOptBoolean17).N(zOptBoolean18).e(strOptString6).q(zOptBoolean19).a(flVar).a(l50Var3).n(zOptBoolean210).m(zOptBoolean20).S(zOptBoolean21).z(zOptBoolean22).y(zOptBoolean23).a(strOptString4).d(strOptString5).o(zOptBoolean12).I(zOptBoolean212).c(strOptString3).h(zOptBoolean213).C(zOptBoolean214).R(zOptBoolean215).i(strOptString11).f(zOptBoolean310).u(zOptBoolean311).J(zOptBoolean312).D(zOptBoolean313).U(zOptBoolean314).a(zOptBoolean315).a(numB7).k(zOptBoolean316).p(zOptBoolean317).b(zOptBoolean318).b(l3).c(l4).j(zOptBoolean319).a(set2).Q(zOptBoolean49).d(zOptBoolean410).e(zOptBoolean411).d(num3).c(num4).g(numB8).f(numB9).a(b7VarA2).K(zOptBoolean412).a(list2).M(zOptBoolean413).P(zOptBoolean414).V(zOptBoolean415).F(zOptBoolean416).T(zOptBoolean417).a();
            } catch (JSONException e) {
                sp0.b(new Object[0]);
                this.a.reportError("Can't parse sdk configuration response", e);
            }
        }
        return null;
    }
}
