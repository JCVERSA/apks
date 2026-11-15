.class public final Lroh;
.super Lboi;
.source "SourceFile"


# static fields
.field public static final x:Landroid/util/Pair;


# instance fields
.field public c:Landroid/content/SharedPreferences;

.field public d:Lnmh;

.field public final e:Likh;

.field public final f:Likh;

.field public final g:Lpnh;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:J

.field public final k:Likh;

.field public final l:Llih;

.field public final m:Lpnh;

.field public final n:Llih;

.field public final o:Likh;

.field public p:Z

.field public final q:Llih;

.field public final r:Llih;

.field public final s:Likh;

.field public final t:Lpnh;

.field public final u:Lpnh;

.field public final v:Likh;

.field public final w:Ljjh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lroh;->x:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 5

    invoke-direct {p0, p1}, Lboi;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    new-instance p1, Likh;

    const-string v0, "session_timeout"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p1, p0, v0, v1, v2}, Likh;-><init>(Lroh;Ljava/lang/String;J)V

    iput-object p1, p0, Lroh;->k:Likh;

    new-instance p1, Llih;

    const-string v0, "start_new_session"

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Llih;-><init>(Lroh;Ljava/lang/String;Z)V

    iput-object p1, p0, Lroh;->l:Llih;

    new-instance p1, Likh;

    const-string v0, "last_pause_time"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Likh;-><init>(Lroh;Ljava/lang/String;J)V

    iput-object p1, p0, Lroh;->o:Likh;

    new-instance p1, Lpnh;

    const-string v0, "non_personalized_ads"

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Lpnh;-><init>(Lroh;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lroh;->m:Lpnh;

    new-instance p1, Llih;

    const-string v0, "allow_remote_dynamite"

    const/4 v4, 0x0

    invoke-direct {p1, p0, v0, v4}, Llih;-><init>(Lroh;Ljava/lang/String;Z)V

    iput-object p1, p0, Lroh;->n:Llih;

    new-instance p1, Likh;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Likh;-><init>(Lroh;Ljava/lang/String;J)V

    iput-object p1, p0, Lroh;->e:Likh;

    new-instance p1, Likh;

    const-string v0, "app_install_time"

    invoke-direct {p1, p0, v0, v1, v2}, Likh;-><init>(Lroh;Ljava/lang/String;J)V

    iput-object p1, p0, Lroh;->f:Likh;

    new-instance p1, Lpnh;

    const-string v0, "app_instance_id"

    invoke-direct {p1, p0, v0, v3}, Lpnh;-><init>(Lroh;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lroh;->g:Lpnh;

    new-instance p1, Llih;

    const-string v0, "app_backgrounded"

    invoke-direct {p1, p0, v0, v4}, Llih;-><init>(Lroh;Ljava/lang/String;Z)V

    iput-object p1, p0, Lroh;->q:Llih;

    new-instance p1, Llih;

    const-string v0, "deep_link_retrieval_complete"

    invoke-direct {p1, p0, v0, v4}, Llih;-><init>(Lroh;Ljava/lang/String;Z)V

    iput-object p1, p0, Lroh;->r:Llih;

    new-instance p1, Likh;

    const-string v0, "deep_link_retrieval_attempts"

    invoke-direct {p1, p0, v0, v1, v2}, Likh;-><init>(Lroh;Ljava/lang/String;J)V

    iput-object p1, p0, Lroh;->s:Likh;

    new-instance p1, Lpnh;

    const-string v0, "firebase_feature_rollouts"

    invoke-direct {p1, p0, v0, v3}, Lpnh;-><init>(Lroh;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lroh;->t:Lpnh;

    new-instance p1, Lpnh;

    const-string v0, "deferred_attribution_cache"

    invoke-direct {p1, p0, v0, v3}, Lpnh;-><init>(Lroh;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lroh;->u:Lpnh;

    new-instance p1, Likh;

    const-string v0, "deferred_attribution_cache_timestamp"

    invoke-direct {p1, p0, v0, v1, v2}, Likh;-><init>(Lroh;Ljava/lang/String;J)V

    iput-object p1, p0, Lroh;->v:Likh;

    new-instance p1, Ljjh;

    const-string v0, "default_event_parameters"

    invoke-direct {p1, p0, v0, v3}, Ljjh;-><init>(Lroh;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lroh;->w:Ljjh;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 9

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lroh;->c:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lroh;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lroh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Lnmh;

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    sget-object v1, Lkwg;->d:Llvg;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llvg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v5, "health_monitor"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lnmh;-><init>(Lroh;Ljava/lang/String;JLqlh;)V

    iput-object v0, p0, Lroh;->d:Lnmh;

    return-void
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lboi;->j()V

    iget-object v0, p0, Lroh;->c:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lroh;->c:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6

    const-string v0, ""

    invoke-virtual {p0}, Lini;->g()V

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lroh;->h:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lroh;->j:J

    cmp-long v4, v1, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-boolean p0, p0, Lroh;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    iget-object v3, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v3

    sget-object v4, Lkwg;->c:Llvg;

    invoke-virtual {v3, p1, v4}, Loce;->m(Ljava/lang/String;Llvg;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lroh;->j:J

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    iput-object v0, p0, Lroh;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lroh;->h:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lroh;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lroh;->h:Ljava/lang/String;

    :goto_3
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lroh;->h:Ljava/lang/String;

    iget-boolean p0, p0, Lroh;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final p()Luee;
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "consent_settings"

    const-string v1, "G1"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Luee;->b(Ljava/lang/String;)Luee;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final r(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "measurement_enabled"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final s(Z)V
    .locals 3

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "App measurement setting deferred collection"

    invoke-virtual {v0, v2, v1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "deferred_analytics_collection"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-object p0, p0, Lroh;->c:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "deferred_analytics_collection"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final u(J)Z
    .locals 2

    iget-object v0, p0, Lroh;->k:Likh;

    invoke-virtual {v0}, Likh;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object p0, p0, Lroh;->o:Likh;

    invoke-virtual {p0}, Likh;->a()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v(I)Z
    .locals 2

    invoke-virtual {p0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "consent_source"

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, p0}, Luee;->i(II)Z

    move-result p0

    return p0
.end method
