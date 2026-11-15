.class public final Lio/appmetrica/analytics/impl/Ll;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lio/appmetrica/analytics/impl/fm;

.field public final B:Ljava/util/Map;

.field public final C:Lio/appmetrica/analytics/impl/I9;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/Map;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lio/appmetrica/analytics/impl/C4;

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:Lio/appmetrica/analytics/impl/jm;

.field public final s:Lio/appmetrica/analytics/impl/me;

.field public final t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

.field public final u:J

.field public final v:J

.field public final w:Z

.field public final x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

.field public final y:Lio/appmetrica/analytics/impl/x3;

.field public final z:Lio/appmetrica/analytics/impl/p2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Kl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->a:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->b:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->c:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->d:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->e:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->f:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->f:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->g:Ljava/util/List;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->g:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->h:Ljava/util/List;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->h:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->i:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->i:Ljava/util/Map;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->j:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->j:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->k:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->k:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->m:Lio/appmetrica/analytics/impl/C4;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->n:Lio/appmetrica/analytics/impl/me;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->s:Lio/appmetrica/analytics/impl/me;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Kl;->o:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Ll;->n:J

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Kl;->p:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ll;->o:Z

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->l:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->l:Ljava/lang/String;

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Kl;->q:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ll;->p:Z

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->a(Lio/appmetrica/analytics/impl/Kl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->q:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->s:Lio/appmetrica/analytics/impl/jm;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->r:Lio/appmetrica/analytics/impl/jm;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->b(Lio/appmetrica/analytics/impl/Kl;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Ll;->u:J

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->c(Lio/appmetrica/analytics/impl/Kl;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Ll;->v:J

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Kl;->v:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ll;->w:Z

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    if-nez v0, :cond_5

    new-instance v0, Lio/appmetrica/analytics/impl/Zl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Zl;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, v0, Lio/appmetrica/analytics/impl/Zl;->w:I

    iget v0, v0, Lio/appmetrica/analytics/impl/Zl;->x:I

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;-><init>(II)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    goto :goto_5

    :cond_5
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    :goto_5
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->y:Lio/appmetrica/analytics/impl/x3;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->y:Lio/appmetrica/analytics/impl/x3;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Kl;->z:Lio/appmetrica/analytics/impl/p2;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->z:Lio/appmetrica/analytics/impl/p2;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->d(Lio/appmetrica/analytics/impl/Kl;)Lio/appmetrica/analytics/impl/fm;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lio/appmetrica/analytics/impl/fm;

    sget-object v1, Lio/appmetrica/analytics/impl/O7;->b:Lio/appmetrica/analytics/impl/Xl;

    iget v1, v1, Lio/appmetrica/analytics/impl/Xl;->a:I

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/fm;-><init>(I)V

    goto :goto_6

    :cond_6
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->d(Lio/appmetrica/analytics/impl/Kl;)Lio/appmetrica/analytics/impl/fm;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->A:Lio/appmetrica/analytics/impl/fm;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->e(Lio/appmetrica/analytics/impl/Kl;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    :cond_7
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->e(Lio/appmetrica/analytics/impl/Kl;)Ljava/util/Map;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ll;->B:Ljava/util/Map;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Kl;->f(Lio/appmetrica/analytics/impl/Kl;)Lio/appmetrica/analytics/impl/I9;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->C:Lio/appmetrica/analytics/impl/I9;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Kl;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/Kl;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/impl/C4;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->a:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->a:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->f:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->f:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->g:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->g:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->j:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->j:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->b:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->b:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->c:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->c:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->d:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->d:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->e:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->e:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->h:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->h:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->i:Ljava/util/Map;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->i:Ljava/util/Map;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->k:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->k:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->l:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->l:Ljava/lang/String;

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/Ll;->p:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/Kl;->q:Z

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Ll;->n:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Kl;->o:J

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/Ll;->o:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/Kl;->p:Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->q:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->r:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->s:Lio/appmetrica/analytics/impl/me;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->n:Lio/appmetrica/analytics/impl/me;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Ll;->u:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Kl;->t:J

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Ll;->v:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Kl;->u:J

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->r:Lio/appmetrica/analytics/impl/jm;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->s:Lio/appmetrica/analytics/impl/jm;

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/Ll;->w:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/Kl;->v:Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->y:Lio/appmetrica/analytics/impl/x3;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->y:Lio/appmetrica/analytics/impl/x3;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->z:Lio/appmetrica/analytics/impl/p2;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->z:Lio/appmetrica/analytics/impl/p2;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->A:Lio/appmetrica/analytics/impl/fm;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->A:Lio/appmetrica/analytics/impl/fm;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ll;->B:Ljava/util/Map;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Kl;->B:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ll;->C:Lio/appmetrica/analytics/impl/I9;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Kl;->C:Lio/appmetrica/analytics/impl/I9;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartupStateModel{uuid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', reportUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getAdUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', reportAdUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', certificateUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hostUrlsFromStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostUrlsFromClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diagnosticUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customSdkHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encodedClidsFromResponse=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lastClientClidsForStartupRequest=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lastChosenForRequestClids=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', collectingFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", obtainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Ll;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hadFirstStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Ll;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startupDidNotOverrideClids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Ll;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", countryInit=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', statSending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->r:Lio/appmetrica/analytics/impl/jm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permissionsCollectingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->s:Lio/appmetrica/analytics/impl/me;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryPolicyConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", obtainServerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Ll;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstStartupServerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Ll;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Ll;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoInappCollectingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->y:Lio/appmetrica/analytics/impl/x3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->z:Lio/appmetrica/analytics/impl/p2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startupUpdateConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->A:Lio/appmetrica/analytics/impl/fm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modulesRemoteConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ll;->B:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalAttributionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ll;->C:Lio/appmetrica/analytics/impl/I9;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
