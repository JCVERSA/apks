.class public abstract Lkwg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Llvg;

.field public static final A0:Llvg;

.field public static final B:Llvg;

.field public static final B0:Llvg;

.field public static final C:Llvg;

.field public static final C0:Llvg;

.field public static final D:Llvg;

.field public static final D0:Llvg;

.field public static final E:Llvg;

.field public static final F:Llvg;

.field public static final G:Llvg;

.field public static final H:Llvg;

.field public static final I:Llvg;

.field public static final J:Llvg;

.field public static final K:Llvg;

.field public static final L:Llvg;

.field public static final M:Llvg;

.field public static final N:Llvg;

.field public static final O:Llvg;

.field public static final P:Llvg;

.field public static final Q:Llvg;

.field public static final R:Llvg;

.field public static final S:Llvg;

.field public static final T:Llvg;

.field public static final U:Llvg;

.field public static final V:Llvg;

.field public static final W:Llvg;

.field public static final X:Llvg;

.field public static final Y:Llvg;

.field public static final Z:Llvg;

.field public static final a:Ljava/util/List;

.field public static final a0:Llvg;

.field public static final b:Ljava/util/Set;

.field public static final b0:Llvg;

.field public static final c:Llvg;

.field public static final c0:Llvg;

.field public static final d:Llvg;

.field public static final d0:Llvg;

.field public static final e:Llvg;

.field public static final e0:Llvg;

.field public static final f:Llvg;

.field public static final f0:Llvg;

.field public static final g:Llvg;

.field public static final g0:Llvg;

.field public static final h:Llvg;

.field public static final h0:Llvg;

.field public static final i:Llvg;

.field public static final i0:Llvg;

.field public static final j:Llvg;

.field public static final j0:Llvg;

.field public static final k:Llvg;

.field public static final k0:Llvg;

.field public static final l:Llvg;

.field public static final l0:Llvg;

.field public static final m:Llvg;

.field public static final m0:Llvg;

.field public static final n:Llvg;

.field public static final n0:Llvg;

.field public static final o:Llvg;

.field public static final o0:Llvg;

.field public static final p:Llvg;

.field public static final p0:Llvg;

.field public static final q:Llvg;

.field public static final q0:Llvg;

.field public static final r:Llvg;

.field public static final r0:Llvg;

.field public static final s:Llvg;

.field public static final s0:Llvg;

.field public static final t:Llvg;

.field public static final t0:Llvg;

.field public static final u:Llvg;

.field public static final u0:Llvg;

.field public static final v:Llvg;

.field public static final v0:Llvg;

.field public static final w:Llvg;

.field public static final w0:Llvg;

.field public static final x:Llvg;

.field public static final x0:Llvg;

.field public static final y:Llvg;

.field public static final y0:Llvg;

.field public static final z:Llvg;

.field public static final z0:Llvg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkwg;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkwg;->b:Ljava/util/Set;

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "measurement.ad_id_cache_time"

    sget-object v2, Lc3f;->a:Lc3f;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->c:Llvg;

    const-wide/32 v1, 0x5265c00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.monitoring.sample_period_millis"

    sget-object v3, Luwe;->a:Luwe;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->d:Llvg;

    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "measurement.config.cache_time"

    sget-object v4, Lf6f;->a:Lf6f;

    invoke-static {v3, v1, v2, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v3

    sput-object v3, Lkwg;->e:Llvg;

    const-string v3, "measurement.config.url_scheme"

    sget-object v4, Loef;->a:Loef;

    const-string v5, "https"

    invoke-static {v3, v5, v5, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v3

    sput-object v3, Lkwg;->f:Llvg;

    const-string v3, "measurement.config.url_authority"

    sget-object v4, Lbpf;->a:Lbpf;

    const-string v5, "app-measurement.com"

    invoke-static {v3, v5, v5, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v3

    sput-object v3, Lkwg;->g:Llvg;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "measurement.upload.max_bundles"

    sget-object v5, Lm1g;->a:Lm1g;

    invoke-static {v4, v3, v3, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->h:Llvg;

    const/high16 v4, 0x10000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "measurement.upload.max_batch_size"

    sget-object v6, Lneg;->a:Lneg;

    invoke-static {v5, v4, v4, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v5

    sput-object v5, Lkwg;->i:Llvg;

    const-string v5, "measurement.upload.max_bundle_size"

    sget-object v6, Lpmg;->a:Lpmg;

    invoke-static {v5, v4, v4, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->j:Llvg;

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "measurement.upload.max_events_per_bundle"

    sget-object v6, Lmng;->a:Lmng;

    invoke-static {v5, v4, v4, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v5

    sput-object v5, Lkwg;->k:Llvg;

    const v5, 0x186a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "measurement.upload.max_events_per_day"

    sget-object v7, Lhog;->a:Lhog;

    invoke-static {v6, v5, v5, v7}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v6

    sput-object v6, Lkwg;->l:Llvg;

    const-string v6, "measurement.upload.max_error_events_per_day"

    sget-object v7, Lebf;->a:Lebf;

    invoke-static {v6, v4, v4, v7}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->m:Llvg;

    const v4, 0xc350

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "measurement.upload.max_public_events_per_day"

    sget-object v7, Lnjf;->a:Lnjf;

    invoke-static {v6, v4, v4, v7}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->n:Llvg;

    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "measurement.upload.max_conversions_per_day"

    sget-object v7, Lttf;->a:Lttf;

    invoke-static {v6, v4, v4, v7}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->o:Llvg;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "measurement.upload.max_realtime_events_per_day"

    sget-object v7, Lh6g;->a:Lh6g;

    invoke-static {v6, v4, v4, v7}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->p:Llvg;

    const-string v4, "measurement.store.max_stored_events_per_app"

    sget-object v6, Lphg;->a:Lphg;

    invoke-static {v4, v5, v5, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->q:Llvg;

    const-string v4, "measurement.upload.url"

    sget-object v5, Lxog;->a:Lxog;

    const-string v6, "https://app-measurement.com/a"

    invoke-static {v4, v6, v6, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->r:Llvg;

    const-wide/32 v4, 0x2932e00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "measurement.upload.backoff_period"

    sget-object v6, Lxpg;->a:Lxpg;

    invoke-static {v5, v4, v4, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->s:Llvg;

    const-string v4, "measurement.upload.window_interval"

    sget-object v5, Lwqg;->a:Lwqg;

    invoke-static {v4, v2, v2, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v4

    sput-object v4, Lkwg;->t:Llvg;

    const-string v4, "measurement.upload.interval"

    sget-object v5, Lyue;->a:Lyue;

    invoke-static {v4, v2, v2, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->u:Llvg;

    const-string v2, "measurement.upload.realtime_upload_interval"

    sget-object v4, Lhwe;->a:Lhwe;

    invoke-static {v2, v0, v0, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->v:Llvg;

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.upload.debug_upload_interval"

    sget-object v4, Lsxe;->a:Lsxe;

    invoke-static {v2, v0, v0, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->w:Llvg;

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.upload.minimum_delay"

    sget-object v4, Ltye;->a:Ltye;

    invoke-static {v2, v0, v0, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->x:Llvg;

    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.alarm_manager.minimum_interval"

    sget-object v4, Lpze;->a:Lpze;

    invoke-static {v2, v0, v0, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->y:Llvg;

    const-string v0, "measurement.upload.stale_data_deletion_interval"

    sget-object v2, Lu0f;->a:Lu0f;

    invoke-static {v0, v1, v1, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->z:Llvg;

    const-wide/32 v0, 0x240c8400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "measurement.upload.refresh_blacklisted_config_interval"

    sget-object v2, Lf1f;->a:Lf1f;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->A:Llvg;

    const-wide/16 v1, 0x3a98

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.upload.initial_upload_delay_time"

    sget-object v4, Lk1f;->a:Lk1f;

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->B:Llvg;

    const-wide/32 v1, 0x1b7740

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.upload.retry_time"

    sget-object v4, Lw1f;->a:Lw1f;

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->C:Llvg;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.upload.retry_count"

    sget-object v4, Lj4f;->a:Lj4f;

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->D:Llvg;

    const-wide v1, 0x90321000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.upload.max_queue_time"

    sget-object v4, La5f;->a:La5f;

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->E:Llvg;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.lifetimevalue.max_currency_tracked"

    sget-object v4, Lm5f;->a:Lm5f;

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->F:Llvg;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.audience.filter_result_max_count"

    sget-object v4, Lh7f;->a:Lh7f;

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->G:Llvg;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "measurement.upload.max_public_user_properties"

    const/4 v4, 0x0

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->H:Llvg;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "measurement.upload.max_event_name_cardinality"

    invoke-static {v5, v2, v2, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->I:Llvg;

    const-string v2, "measurement.upload.max_public_event_params"

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->J:Llvg;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "measurement.service_client.idle_disconnect_millis"

    sget-object v5, Le8f;->a:Le8f;

    invoke-static {v2, v1, v1, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->K:Llvg;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "measurement.test.boolean_flag"

    sget-object v5, Lt8f;->a:Lt8f;

    invoke-static {v2, v1, v1, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->L:Llvg;

    const-string v2, "measurement.test.string_flag"

    sget-object v5, Ly8f;->a:Ly8f;

    const-string v6, "---"

    invoke-static {v2, v6, v6, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->M:Llvg;

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "measurement.test.long_flag"

    sget-object v6, Lw9f;->a:Lw9f;

    invoke-static {v5, v2, v2, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->N:Llvg;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "measurement.test.int_flag"

    sget-object v6, Lmaf;->a:Lmaf;

    invoke-static {v5, v2, v2, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->O:Llvg;

    const-wide/high16 v5, -0x3ff8000000000000L    # -3.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v5, "measurement.test.double_flag"

    sget-object v6, Lubf;->a:Lubf;

    invoke-static {v5, v2, v2, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->P:Llvg;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "measurement.experiment.max_ids"

    sget-object v6, Licf;->a:Licf;

    invoke-static {v5, v2, v2, v6}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->Q:Llvg;

    const-string v2, "measurement.max_bundles_per_iteration"

    sget-object v5, Lvcf;->a:Lvcf;

    invoke-static {v2, v3, v3, v5}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->R:Llvg;

    const-string v2, "measurement.sdk.attribution.cache.ttl"

    sget-object v3, Lydf;->a:Lydf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->S:Llvg;

    const-wide/32 v2, 0x6ddd00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "measurement.redaction.app_instance_id.ttl"

    sget-object v3, Lngf;->a:Lngf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->T:Llvg;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "measurement.collection.log_event_and_bundle_v2"

    sget-object v3, Lxgf;->a:Lxgf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->U:Llvg;

    const-string v2, "measurement.quality.checksum"

    invoke-static {v2, v1, v1, v4}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->V:Llvg;

    const-string v2, "measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters"

    sget-object v3, Lhhf;->a:Lhhf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->W:Llvg;

    const-string v2, "measurement.audience.refresh_event_count_filters_timestamp"

    sget-object v3, Lyhf;->a:Lyhf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->X:Llvg;

    const-string v2, "measurement.audience.use_bundle_timestamp_for_event_count_filters"

    sget-object v3, Lsif;->a:Lsif;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->Y:Llvg;

    const-string v2, "measurement.sdk.collection.retrieve_deeplink_from_bow_2"

    sget-object v3, Ldkf;->a:Ldkf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->Z:Llvg;

    const-string v2, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    sget-object v3, Lclf;->a:Lclf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->a0:Llvg;

    const-string v2, "measurement.lifecycle.app_in_background_parameter"

    sget-object v3, Lemf;->a:Lemf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->b0:Llvg;

    const-string v2, "measurement.integration.disable_firebase_instance_id"

    sget-object v3, Lenf;->a:Lenf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->c0:Llvg;

    const-string v2, "measurement.collection.service.update_with_analytics_fix"

    sget-object v3, Lznf;->a:Lznf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->d0:Llvg;

    const-string v2, "measurement.client.firebase_feature_rollout.v1.enable"

    sget-object v3, Lzpf;->a:Lzpf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->e0:Llvg;

    const-string v2, "measurement.client.sessions.check_on_reset_and_enable2"

    sget-object v3, Luqf;->a:Luqf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->f0:Llvg;

    const-string v2, "measurement.collection.synthetic_data_mitigation"

    sget-object v3, Ltrf;->a:Ltrf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->g0:Llvg;

    const v2, 0x31b50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lvsf;->a:Lvsf;

    const-string v4, "measurement.service.storage_consent_support_version"

    invoke-static {v4, v2, v2, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->h0:Llvg;

    const-string v2, "measurement.client.click_identifier_control.dev"

    sget-object v3, Luuf;->a:Luuf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->i0:Llvg;

    const-string v2, "measurement.service.click_identifier_control"

    sget-object v3, Lyvf;->a:Lyvf;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->j0:Llvg;

    const-string v2, "measurement.service.store_null_safelist"

    sget-object v3, Lbxf;->a:Lbxf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->k0:Llvg;

    const-string v2, "measurement.service.store_safelist"

    sget-object v3, Leyf;->a:Leyf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->l0:Llvg;

    const-string v2, "measurement.redaction.no_aiid_in_config_request"

    sget-object v3, Lgzf;->a:Lgzf;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->m0:Llvg;

    const-string v2, "measurement.redaction.config_redacted_fields"

    sget-object v3, Lj0g;->a:Lj0g;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->n0:Llvg;

    const-string v2, "measurement.redaction.upload_redacted_fields"

    sget-object v3, Ln2g;->a:Ln2g;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->o0:Llvg;

    const-string v2, "measurement.redaction.upload_subdomain_override"

    sget-object v3, Lq3g;->a:Lq3g;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->p0:Llvg;

    const-string v2, "measurement.redaction.device_info"

    sget-object v3, Lg5g;->a:Lg5g;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->q0:Llvg;

    const-string v2, "measurement.redaction.user_id"

    sget-object v3, Lm7g;->a:Lm7g;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->r0:Llvg;

    const-string v2, "measurement.redaction.google_signals"

    sget-object v3, Lp8g;->a:Lp8g;

    invoke-static {v2, v0, v0, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->s0:Llvg;

    const-string v2, "measurement.collection.enable_session_stitching_token.service"

    sget-object v3, Lq9g;->a:Lq9g;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v2

    sput-object v2, Lkwg;->t0:Llvg;

    const-string v2, "measurement.collection.enable_session_stitching_token.client.dev"

    sget-object v3, Lsag;->a:Lsag;

    invoke-static {v2, v1, v1, v3}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->u0:Llvg;

    const-string v1, "measurement.redaction.app_instance_id"

    sget-object v2, Lsbg;->a:Lsbg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->v0:Llvg;

    const-string v1, "measurement.redaction.populate_ephemeral_app_instance_id"

    sget-object v2, Lucg;->a:Lucg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->w0:Llvg;

    const-string v1, "measurement.redaction.enhanced_uid"

    sget-object v2, Lpdg;->a:Lpdg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->x0:Llvg;

    const-string v1, "measurement.redaction.e_tag"

    sget-object v2, Lpfg;->a:Lpfg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->y0:Llvg;

    const-string v1, "measurement.redaction.client_ephemeral_aiid_generation"

    sget-object v2, Lsgg;->a:Lsgg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->z0:Llvg;

    const-string v1, "measurement.redaction.retain_major_os_version"

    sget-object v2, Loig;->a:Loig;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->A0:Llvg;

    const-string v1, "measurement.redaction.scion_payload_generator"

    sget-object v2, Lojg;->a:Lojg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->B0:Llvg;

    const-string v1, "measurement.audience.dynamic_filters.oob_fix"

    sget-object v2, Lmkg;->a:Lmkg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v1

    sput-object v1, Lkwg;->C0:Llvg;

    const-string v1, "measurement.service.clear_global_params_on_uninstall"

    sget-object v2, Lnlg;->a:Lnlg;

    invoke-static {v1, v0, v0, v2}, Lkwg;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;

    move-result-object v0

    sput-object v0, Lkwg;->D0:Llvg;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;)Llvg;
    .locals 7

    new-instance v6, Llvg;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Llvg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lyrg;Lytg;)V

    sget-object p0, Lkwg;->a:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public static bridge synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lkwg;->a:Ljava/util/List;

    return-object v0
.end method
