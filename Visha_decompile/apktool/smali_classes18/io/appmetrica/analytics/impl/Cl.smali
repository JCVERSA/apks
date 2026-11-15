.class public final Lio/appmetrica/analytics/impl/Cl;
.super Lio/appmetrica/analytics/impl/X5;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/T3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->e()Lio/appmetrica/analytics/impl/T3;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/Cl;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/impl/T3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/impl/T3;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/T3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/X5;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    .line 3
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Cl;->b:Lio/appmetrica/analytics/impl/T3;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Dl;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p0, Lio/appmetrica/analytics/impl/Dl;

    .line 3
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Dl;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/W5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cl;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Dl;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Dl;
    .locals 5
    .param p1    # Lio/appmetrica/analytics/impl/W5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/W5;",
            ")",
            "Lio/appmetrica/analytics/impl/Dl;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/X5;->a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Dl;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->f:Ljava/util/List;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/Dl;->d:Ljava/util/List;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Hl;->g:Ljava/util/List;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Dl;->e:Ljava/util/List;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/Bl;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Bl;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iput-object v2, v0, Lio/appmetrica/analytics/impl/Dl;->f:Ljava/lang/String;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Bl;->b:Ljava/lang/String;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/Dl;->g:Ljava/lang/String;

    :cond_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Bl;->c:Ljava/util/Map;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Dl;->h:Ljava/util/Map;

    new-instance v2, Lio/appmetrica/analytics/impl/L3;

    sget-object v3, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/impl/X7;

    invoke-direct {v2, v1, v3}, Lio/appmetrica/analytics/impl/L3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/X7;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Cl;->b:Lio/appmetrica/analytics/impl/T3;

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/U7;->a(Lio/appmetrica/analytics/impl/Y7;)Lio/appmetrica/analytics/impl/Y7;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/L3;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Dl;->i:Lio/appmetrica/analytics/impl/L3;

    iget-object p0, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/Bl;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Bl;->d:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Dl;->k:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bl;->e:Ljava/util/List;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Dl;->j:Ljava/util/List;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/Hl;->p:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/Dl;->l:Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Hl;->r:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Dl;->m:Ljava/lang/String;

    iget-wide p0, p0, Lio/appmetrica/analytics/impl/Hl;->v:J

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Dl;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iput-wide p0, v0, Lio/appmetrica/analytics/impl/Dl;->n:J

    :cond_1
    return-object v0
.end method

.method public final createBlankConfig()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/Dl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Dl;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic load(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/W5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cl;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Dl;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    check-cast p1, Lio/appmetrica/analytics/impl/W5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cl;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Dl;

    move-result-object p0

    return-object p0
.end method
