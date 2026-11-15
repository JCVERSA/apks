.class public final Lio/appmetrica/analytics/impl/Hl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lio/appmetrica/analytics/impl/fm;

.field public final B:Ljava/util/Map;

.field public final C:Lio/appmetrica/analytics/impl/I9;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/Ll;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Lio/appmetrica/analytics/impl/C4;

.field public final o:J

.field public final p:Z

.field public final q:Z

.field public final r:Ljava/lang/String;

.field public final s:Lio/appmetrica/analytics/impl/me;

.field public final t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

.field public final u:J

.field public final v:J

.field public final w:Z

.field public final x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

.field public final y:Lio/appmetrica/analytics/impl/x3;

.field public final z:Lio/appmetrica/analytics/impl/p2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ll;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/Ll;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->a:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->b:Ljava/util/List;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/List;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->f:Ljava/util/List;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->f:Ljava/util/List;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->g:Ljava/util/List;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->g:Ljava/util/List;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->i:Ljava/util/Map;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->h:Ljava/util/Map;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->c:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->i:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->d:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->j:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->j:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->k:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->k:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->l:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->l:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->m:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->n:Lio/appmetrica/analytics/impl/C4;

    iget-wide p1, p3, Lio/appmetrica/analytics/impl/Ll;->n:J

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Hl;->o:J

    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/Ll;->o:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Hl;->p:Z

    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/Ll;->p:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Hl;->q:Z

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->q:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->r:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->s:Lio/appmetrica/analytics/impl/me;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->s:Lio/appmetrica/analytics/impl/me;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget-wide p1, p3, Lio/appmetrica/analytics/impl/Ll;->u:J

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Hl;->u:J

    iget-wide p1, p3, Lio/appmetrica/analytics/impl/Ll;->v:J

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Hl;->v:J

    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/Ll;->w:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Hl;->w:Z

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->y:Lio/appmetrica/analytics/impl/x3;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->y:Lio/appmetrica/analytics/impl/x3;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->z:Lio/appmetrica/analytics/impl/p2;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->z:Lio/appmetrica/analytics/impl/p2;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->A:Lio/appmetrica/analytics/impl/fm;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->A:Lio/appmetrica/analytics/impl/fm;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->B:Ljava/util/Map;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->B:Ljava/util/Map;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ll;->C:Lio/appmetrica/analytics/impl/I9;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->C:Lio/appmetrica/analytics/impl/I9;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Hl;->v:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Hl;->u:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartupState(deviceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceIdHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startupStateModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/Ll;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
