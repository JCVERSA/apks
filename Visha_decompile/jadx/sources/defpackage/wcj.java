package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.webkit.ProxyConfig;
import org.apache.commons.lang3.time.DateUtils;

public final class wcj implements ucj {
    public static final q1j A;
    public static final q1j B;
    public static final q1j C;
    public static final q1j D;
    public static final q1j E;
    public static final q1j F;
    public static final q1j G;
    public static final q1j H;
    public static final q1j I;
    public static final q1j J;
    public static final q1j K;
    public static final q1j L;
    public static final q1j M;
    public static final q1j a;
    public static final q1j b;
    public static final q1j c;
    public static final q1j d;
    public static final q1j e;
    public static final q1j f;
    public static final q1j g;
    public static final q1j h;
    public static final q1j i;
    public static final q1j j;
    public static final q1j k;
    public static final q1j l;
    public static final q1j m;
    public static final q1j n;
    public static final q1j o;
    public static final q1j p;
    public static final q1j q;
    public static final q1j r;
    public static final q1j s;
    public static final q1j t;
    public static final q1j u;
    public static final q1j v;
    public static final q1j w;
    public static final q1j x;
    public static final q1j y;
    public static final q1j z;

    static {
        y0j y0jVarA = new y0j(c0j.a("com.google.android.gms.measurement")).a();
        a = y0jVarA.d("measurement.ad_id_cache_time", 10000L);
        b = y0jVarA.d("measurement.max_bundles_per_iteration", 100L);
        c = y0jVarA.d("measurement.config.cache_time", 86400000L);
        d = y0jVarA.e("measurement.log_tag", "FA");
        e = y0jVarA.e("measurement.config.url_authority", "app-measurement.com");
        f = y0jVarA.e("measurement.config.url_scheme", ProxyConfig.MATCH_HTTPS);
        g = y0jVarA.d("measurement.upload.debug_upload_interval", 1000L);
        h = y0jVarA.d("measurement.lifetimevalue.max_currency_tracked", 4L);
        i = y0jVarA.d("measurement.store.max_stored_events_per_app", SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US);
        j = y0jVarA.d("measurement.experiment.max_ids", 50L);
        k = y0jVarA.d("measurement.audience.filter_result_max_count", 200L);
        l = y0jVarA.d("measurement.alarm_manager.minimum_interval", 60000L);
        m = y0jVarA.d("measurement.upload.minimum_delay", 500L);
        n = y0jVarA.d("measurement.monitoring.sample_period_millis", 86400000L);
        o = y0jVarA.d("measurement.upload.realtime_upload_interval", 10000L);
        p = y0jVarA.d("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        q = y0jVarA.d("measurement.config.cache_time.service", DateUtils.MILLIS_PER_HOUR);
        r = y0jVarA.d("measurement.service_client.idle_disconnect_millis", 5000L);
        s = y0jVarA.e("measurement.log_tag.service", "FA-SVC");
        t = y0jVarA.d("measurement.upload.stale_data_deletion_interval", 86400000L);
        u = y0jVarA.d("measurement.sdk.attribution.cache.ttl", 604800000L);
        v = y0jVarA.d("measurement.redaction.app_instance_id.ttl", 7200000L);
        w = y0jVarA.d("measurement.upload.backoff_period", 43200000L);
        x = y0jVarA.d("measurement.upload.initial_upload_delay_time", C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
        y = y0jVarA.d("measurement.upload.interval", DateUtils.MILLIS_PER_HOUR);
        z = y0jVarA.d("measurement.upload.max_bundle_size", 65536L);
        A = y0jVarA.d("measurement.upload.max_bundles", 100L);
        B = y0jVarA.d("measurement.upload.max_conversions_per_day", 500L);
        C = y0jVarA.d("measurement.upload.max_error_events_per_day", 1000L);
        D = y0jVarA.d("measurement.upload.max_events_per_bundle", 1000L);
        E = y0jVarA.d("measurement.upload.max_events_per_day", SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US);
        F = y0jVarA.d("measurement.upload.max_public_events_per_day", 50000L);
        G = y0jVarA.d("measurement.upload.max_queue_time", 2419200000L);
        H = y0jVarA.d("measurement.upload.max_realtime_events_per_day", 10L);
        I = y0jVarA.d("measurement.upload.max_batch_size", 65536L);
        J = y0jVarA.d("measurement.upload.retry_count", 6L);
        K = y0jVarA.d("measurement.upload.retry_time", 1800000L);
        L = y0jVarA.e("measurement.upload.url", "https://app-measurement.com/a");
        M = y0jVarA.d("measurement.upload.window_interval", DateUtils.MILLIS_PER_HOUR);
    }

    @Override
    public final long b() {
        return ((Long) H.b()).longValue();
    }

    @Override
    public final long zzA() {
        return ((Long) F.b()).longValue();
    }

    @Override
    public final long zzB() {
        return ((Long) G.b()).longValue();
    }

    @Override
    public final long zzD() {
        return ((Long) I.b()).longValue();
    }

    @Override
    public final long zzE() {
        return ((Long) J.b()).longValue();
    }

    @Override
    public final long zzF() {
        return ((Long) K.b()).longValue();
    }

    @Override
    public final long zzG() {
        return ((Long) M.b()).longValue();
    }

    @Override
    public final String zzH() {
        return (String) e.b();
    }

    @Override
    public final String zzI() {
        return (String) f.b();
    }

    @Override
    public final String zzJ() {
        return (String) L.b();
    }

    @Override
    public final long zza() {
        return ((Long) a.b()).longValue();
    }

    @Override
    public final long zzb() {
        return ((Long) b.b()).longValue();
    }

    @Override
    public final long zzc() {
        return ((Long) c.b()).longValue();
    }

    @Override
    public final long zzd() {
        return ((Long) g.b()).longValue();
    }

    @Override
    public final long zze() {
        return ((Long) h.b()).longValue();
    }

    @Override
    public final long zzf() {
        return ((Long) i.b()).longValue();
    }

    @Override
    public final long zzg() {
        return ((Long) j.b()).longValue();
    }

    @Override
    public final long zzh() {
        return ((Long) k.b()).longValue();
    }

    @Override
    public final long zzi() {
        return ((Long) l.b()).longValue();
    }

    @Override
    public final long zzj() {
        return ((Long) m.b()).longValue();
    }

    @Override
    public final long zzk() {
        return ((Long) n.b()).longValue();
    }

    @Override
    public final long zzl() {
        return ((Long) o.b()).longValue();
    }

    @Override
    public final long zzm() {
        return ((Long) p.b()).longValue();
    }

    @Override
    public final long zzn() {
        return ((Long) r.b()).longValue();
    }

    @Override
    public final long zzo() {
        return ((Long) t.b()).longValue();
    }

    @Override
    public final long zzp() {
        return ((Long) u.b()).longValue();
    }

    @Override
    public final long zzq() {
        return ((Long) v.b()).longValue();
    }

    @Override
    public final long zzr() {
        return ((Long) w.b()).longValue();
    }

    @Override
    public final long zzs() {
        return ((Long) x.b()).longValue();
    }

    @Override
    public final long zzt() {
        return ((Long) y.b()).longValue();
    }

    @Override
    public final long zzu() {
        return ((Long) z.b()).longValue();
    }

    @Override
    public final long zzv() {
        return ((Long) A.b()).longValue();
    }

    @Override
    public final long zzw() {
        return ((Long) B.b()).longValue();
    }

    @Override
    public final long zzx() {
        return ((Long) C.b()).longValue();
    }

    @Override
    public final long zzy() {
        return ((Long) D.b()).longValue();
    }

    @Override
    public final long zzz() {
        return ((Long) E.b()).longValue();
    }
}
