.class public final Lio/appmetrica/analytics/impl/em;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/Bl;

.field public final d:Lio/appmetrica/analytics/impl/hl;

.field public final e:Lio/appmetrica/analytics/impl/Jl;

.field public final f:Lio/appmetrica/analytics/impl/M4;

.field public final g:Lio/appmetrica/analytics/impl/Gl;

.field public final h:Lio/appmetrica/analytics/impl/S7;

.field public final i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

.field public final j:Lio/appmetrica/analytics/impl/T3;

.field public final k:Lio/appmetrica/analytics/impl/W3;

.field public final l:Lio/appmetrica/analytics/impl/kl;

.field public final m:Lio/appmetrica/analytics/impl/ud;

.field public final n:Lio/appmetrica/analytics/impl/Mn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Bl;Lio/appmetrica/analytics/impl/hl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/em;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/em;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/Bl;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/em;->d:Lio/appmetrica/analytics/impl/hl;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/ua;->z()Lio/appmetrica/analytics/impl/Jl;

    move-result-object p4

    iput-object p4, p0, Lio/appmetrica/analytics/impl/em;->e:Lio/appmetrica/analytics/impl/Jl;

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Jl;->b()Lio/appmetrica/analytics/impl/Hl;

    move-result-object p4

    new-instance v0, Lio/appmetrica/analytics/impl/M4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/M4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->f:Lio/appmetrica/analytics/impl/M4;

    new-instance v0, Lio/appmetrica/analytics/impl/Gl;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Gl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->g:Lio/appmetrica/analytics/impl/Gl;

    new-instance v0, Lio/appmetrica/analytics/impl/S7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/S7;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->h:Lio/appmetrica/analytics/impl/S7;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->e()Lio/appmetrica/analytics/impl/T3;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->j:Lio/appmetrica/analytics/impl/T3;

    new-instance v0, Lio/appmetrica/analytics/impl/W3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/W3;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->k:Lio/appmetrica/analytics/impl/W3;

    new-instance v0, Lio/appmetrica/analytics/impl/kl;

    new-instance v1, Lio/appmetrica/analytics/impl/Cl;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/impl/Cl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1, p4, p3}, Lio/appmetrica/analytics/impl/kl;-><init>(Lio/appmetrica/analytics/impl/Cl;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/Bl;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/em;->l:Lio/appmetrica/analytics/impl/kl;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/ua;->p()Lio/appmetrica/analytics/impl/ud;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/em;->m:Lio/appmetrica/analytics/impl/ud;

    new-instance p1, Lio/appmetrica/analytics/impl/Mn;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Mn;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/em;->n:Lio/appmetrica/analytics/impl/Mn;

    return-void
.end method
