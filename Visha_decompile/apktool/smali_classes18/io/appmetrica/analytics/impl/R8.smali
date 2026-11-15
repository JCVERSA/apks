.class public final Lio/appmetrica/analytics/impl/R8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/Long;

.field public final g:Lio/appmetrica/analytics/impl/q7;

.field public final h:Lio/appmetrica/analytics/impl/hb;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Integer;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lio/appmetrica/analytics/impl/M8;

.field public final p:Lio/appmetrica/analytics/impl/ka;

.field public final q:Lio/appmetrica/analytics/impl/s9;

.field public final r:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Integer;

.field public final t:[B


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/n7;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/impl/n7;-><init>(Lio/appmetrica/analytics/impl/k7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/n7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/m7;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->c:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->b()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->d:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->k()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->d()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->i()Lio/appmetrica/analytics/impl/q7;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->g:Lio/appmetrica/analytics/impl/q7;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->e()Lio/appmetrica/analytics/impl/hb;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->h:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->d()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->i:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->o()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->k:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->c()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->l:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->e()Lio/appmetrica/analytics/impl/M8;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lio/appmetrica/analytics/impl/M8;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/M8;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->o:Lio/appmetrica/analytics/impl/M8;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->h()Lio/appmetrica/analytics/impl/ka;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lio/appmetrica/analytics/impl/ka;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/ka;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->p:Lio/appmetrica/analytics/impl/ka;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->n()Lio/appmetrica/analytics/impl/s9;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->q:Lio/appmetrica/analytics/impl/s9;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->a()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->r:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/l7;->l()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/R8;->s:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m7;->a()Lio/appmetrica/analytics/impl/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/l7;->g()[B

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/R8;->t:[B

    return-void
.end method
