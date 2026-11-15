package defpackage;

import androidx.media3.common.C;
import androidx.media3.extractor.AacUtil;
import androidx.webkit.ProxyConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.time.DateUtils;

public abstract class kwg {
    public static final lvg A;
    public static final lvg A0;
    public static final lvg B;
    public static final lvg B0;
    public static final lvg C;
    public static final lvg C0;
    public static final lvg D;
    public static final lvg D0;
    public static final lvg E;
    public static final lvg F;
    public static final lvg G;
    public static final lvg H;
    public static final lvg I;
    public static final lvg J;
    public static final lvg K;
    public static final lvg L;
    public static final lvg M;
    public static final lvg N;
    public static final lvg O;
    public static final lvg P;
    public static final lvg Q;
    public static final lvg R;
    public static final lvg S;
    public static final lvg T;
    public static final lvg U;
    public static final lvg V;
    public static final lvg W;
    public static final lvg X;
    public static final lvg Y;
    public static final lvg Z;
    public static final lvg a0;
    public static final lvg b0;
    public static final lvg c0;
    public static final lvg d0;
    public static final lvg e;
    public static final lvg e0;
    public static final lvg f;
    public static final lvg f0;
    public static final lvg g;
    public static final lvg g0;
    public static final lvg h;
    public static final lvg h0;
    public static final lvg i;
    public static final lvg i0;
    public static final lvg j;
    public static final lvg j0;
    public static final lvg k;
    public static final lvg k0;
    public static final lvg l;
    public static final lvg l0;
    public static final lvg m;
    public static final lvg m0;
    public static final lvg n;
    public static final lvg n0;
    public static final lvg o;
    public static final lvg o0;
    public static final lvg p;
    public static final lvg p0;
    public static final lvg q;
    public static final lvg q0;
    public static final lvg r;
    public static final lvg r0;
    public static final lvg s;
    public static final lvg s0;
    public static final lvg t;
    public static final lvg t0;
    public static final lvg u;
    public static final lvg u0;
    public static final lvg v;
    public static final lvg v0;
    public static final lvg w;
    public static final lvg w0;
    public static final lvg x;
    public static final lvg x0;
    public static final lvg y;
    public static final lvg y0;
    public static final lvg z;
    public static final lvg z0;
    public static final List a = Collections.synchronizedList(new ArrayList());
    public static final Set b = Collections.synchronizedSet(new HashSet());
    public static final lvg c = a("measurement.ad_id_cache_time", 10000L, 10000L, new yrg() {
        @Override
        public final Object zza() {
            List list = kwg.a;
            return Long.valueOf(scj.m());
        }
    });
    public static final lvg d = a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, new yrg() {
        @Override
        public final Object zza() {
            List list = kwg.a;
            return Long.valueOf(scj.w());
        }
    });

    static {
        Long lValueOf = Long.valueOf(DateUtils.MILLIS_PER_HOUR);
        e = a("measurement.config.cache_time", 86400000L, lValueOf, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.o());
            }
        });
        f = a("measurement.config.url_scheme", ProxyConfig.MATCH_HTTPS, ProxyConfig.MATCH_HTTPS, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return scj.k();
            }
        });
        g = a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return scj.j();
            }
        });
        h = a("measurement.upload.max_bundles", 100, 100, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.H());
            }
        });
        i = a("measurement.upload.max_batch_size", 65536, 65536, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.e());
            }
        });
        j = a("measurement.upload.max_bundle_size", 65536, 65536, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.G());
            }
        });
        k = a("measurement.upload.max_events_per_bundle", 1000, 1000, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.K());
            }
        });
        Integer numValueOf = Integer.valueOf(AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND);
        l = a("measurement.upload.max_events_per_day", numValueOf, numValueOf, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.a());
            }
        });
        m = a("measurement.upload.max_error_events_per_day", 1000, 1000, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.J());
            }
        });
        n = a("measurement.upload.max_public_events_per_day", 50000, 50000, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.b());
            }
        });
        o = a("measurement.upload.max_conversions_per_day", 10000, 10000, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.I());
            }
        });
        p = a("measurement.upload.max_realtime_events_per_day", 10, 10, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.d());
            }
        });
        q = a("measurement.store.max_stored_events_per_app", numValueOf, numValueOf, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.r());
            }
        });
        r = a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return scj.l();
            }
        });
        s = a("measurement.upload.backoff_period", 43200000L, 43200000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.D());
            }
        });
        t = a("measurement.upload.window_interval", lValueOf, lValueOf, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.h());
            }
        });
        u = a("measurement.upload.interval", lValueOf, lValueOf, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.F());
            }
        });
        v = a("measurement.upload.realtime_upload_interval", 10000L, 10000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.x());
            }
        });
        w = a("measurement.upload.debug_upload_interval", 1000L, 1000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.p());
            }
        });
        x = a("measurement.upload.minimum_delay", 500L, 500L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.v());
            }
        });
        y = a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.u());
            }
        });
        z = a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.A());
            }
        });
        A = a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.y());
            }
        });
        Long lValueOf2 = Long.valueOf(C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
        B = a("measurement.upload.initial_upload_delay_time", lValueOf2, lValueOf2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.E());
            }
        });
        C = a("measurement.upload.retry_time", 1800000L, 1800000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.g());
            }
        });
        D = a("measurement.upload.retry_count", 6, 6, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.f());
            }
        });
        E = a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.c());
            }
        });
        F = a("measurement.lifetimevalue.max_currency_tracked", 4, 4, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.q());
            }
        });
        G = a("measurement.audience.filter_result_max_count", 200, 200, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.t());
            }
        });
        H = a("measurement.upload.max_public_user_properties", 25, 25, null);
        I = a("measurement.upload.max_event_name_cardinality", 500, 500, null);
        J = a("measurement.upload.max_public_event_params", 25, 25, null);
        K = a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.z());
            }
        });
        Boolean bool = Boolean.FALSE;
        L = a("measurement.test.boolean_flag", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(efj.f());
            }
        });
        M = a("measurement.test.string_flag", "---", "---", new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return efj.e();
            }
        });
        N = a("measurement.test.long_flag", -1L, -1L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(efj.c());
            }
        });
        O = a("measurement.test.int_flag", -2, -2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) efj.b());
            }
        });
        Double dValueOf = Double.valueOf(-3.0d);
        P = a("measurement.test.double_flag", dValueOf, dValueOf, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Double.valueOf(efj.a());
            }
        });
        Q = a("measurement.experiment.max_ids", 50, 50, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.s());
            }
        });
        R = a("measurement.max_bundles_per_iteration", 100, 100, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) scj.n());
            }
        });
        S = a("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.B());
            }
        });
        T = a("measurement.redaction.app_instance_id.ttl", 7200000L, 7200000L, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Long.valueOf(scj.C());
            }
        });
        Boolean bool2 = Boolean.TRUE;
        U = a("measurement.collection.log_event_and_bundle_v2", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(hfj.b());
            }
        });
        V = a("measurement.quality.checksum", bool, bool, null);
        W = a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(qdj.c());
            }
        });
        X = a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(qdj.b());
            }
        });
        Y = a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(qdj.d());
            }
        });
        Z = a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(tgj.b());
            }
        });
        a0 = a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(tej.b());
            }
        });
        b0 = a("measurement.lifecycle.app_in_background_parameter", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(zej.b());
            }
        });
        c0 = a("measurement.integration.disable_firebase_instance_id", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(ngj.c());
            }
        });
        d0 = a("measurement.collection.service.update_with_analytics_fix", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(zgj.b());
            }
        });
        e0 = a("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(kdj.c());
            }
        });
        f0 = a("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(hej.c());
            }
        });
        g0 = a("measurement.collection.synthetic_data_mitigation", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(hgj.b());
            }
        });
        h0 = a("measurement.service.storage_consent_support_version", 203600, 203600, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Integer.valueOf((int) ycj.a());
            }
        });
        i0 = a("measurement.client.click_identifier_control.dev", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(gcj.b());
            }
        });
        j0 = a("measurement.service.click_identifier_control", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mcj.b());
            }
        });
        k0 = a("measurement.service.store_null_safelist", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(edj.b());
            }
        });
        l0 = a("measurement.service.store_safelist", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(edj.c());
            }
        });
        m0 = a("measurement.redaction.no_aiid_in_config_request", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.j());
            }
        });
        n0 = a("measurement.redaction.config_redacted_fields", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.d());
            }
        });
        o0 = a("measurement.redaction.upload_redacted_fields", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.m());
            }
        });
        p0 = a("measurement.redaction.upload_subdomain_override", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.n());
            }
        });
        q0 = a("measurement.redaction.device_info", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.e());
            }
        });
        r0 = a("measurement.redaction.user_id", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.o());
            }
        });
        s0 = a("measurement.redaction.google_signals", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.i());
            }
        });
        t0 = a("measurement.collection.enable_session_stitching_token.service", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(sfj.d());
            }
        });
        u0 = a("measurement.collection.enable_session_stitching_token.client.dev", bool, bool, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(sfj.c());
            }
        });
        v0 = a("measurement.redaction.app_instance_id", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.b());
            }
        });
        w0 = a("measurement.redaction.populate_ephemeral_app_instance_id", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.h());
            }
        });
        x0 = a("measurement.redaction.enhanced_uid", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.g());
            }
        });
        y0 = a("measurement.redaction.e_tag", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.f());
            }
        });
        z0 = a("measurement.redaction.client_ephemeral_aiid_generation", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.c());
            }
        });
        A0 = a("measurement.redaction.retain_major_os_version", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.k());
            }
        });
        B0 = a("measurement.redaction.scion_payload_generator", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(mfj.l());
            }
        });
        C0 = a("measurement.audience.dynamic_filters.oob_fix", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(cej.b());
            }
        });
        D0 = a("measurement.service.clear_global_params_on_uninstall", bool2, bool2, new yrg() {
            @Override
            public final Object zza() {
                List list = kwg.a;
                return Boolean.valueOf(nej.b());
            }
        });
    }

    public static lvg a(String str, Object obj, Object obj2, yrg yrgVar) {
        lvg lvgVar = new lvg(str, obj, obj2, yrgVar, null);
        a.add(lvgVar);
        return lvgVar;
    }
}
