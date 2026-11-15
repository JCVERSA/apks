.class public final Lio/appmetrica/analytics/impl/ah;
.super Lio/appmetrica/analytics/impl/X5;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/m5;

.field public final c:Lio/appmetrica/analytics/impl/Zg;

.field public final d:Lio/appmetrica/analytics/impl/W3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Zg;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Zg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/W3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/W3;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/ah;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/impl/W3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Zg;Lio/appmetrica/analytics/impl/W3;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->b()Lio/appmetrica/analytics/impl/f5;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/f5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/X5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/m5;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/Zg;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ah;->d:Lio/appmetrica/analytics/impl/W3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/W5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ah;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/ch;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/ch;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/ch;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/m5;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/ch;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/ch;
    .locals 6
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
            "Lio/appmetrica/analytics/impl/ch;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/X5;->a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ch;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/Xg;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Xg;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/ch;->m:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Un;->a()I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/ch;->r:I

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m5;->q:Lio/appmetrica/analytics/impl/G3;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/G3;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/ch;->w:Ljava/util/List;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/Xg;

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/Xg;->b:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/ch;->d:Z

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/Xg;->c:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/ch;->e:Z

    iget v2, v1, Lio/appmetrica/analytics/impl/Xg;->d:I

    iput v2, v0, Lio/appmetrica/analytics/impl/ch;->f:I

    iget v2, v1, Lio/appmetrica/analytics/impl/Xg;->e:I

    iput v2, v0, Lio/appmetrica/analytics/impl/ch;->i:I

    iget v2, v1, Lio/appmetrica/analytics/impl/Xg;->f:I

    iput v2, v0, Lio/appmetrica/analytics/impl/ch;->g:I

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/Xg;->g:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/ch;->h:Z

    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Xg;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/Zg;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/ch;->j:Ljava/lang/Boolean;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/ch;->k:Lio/appmetrica/analytics/impl/Zg;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/Xg;

    iget v2, v1, Lio/appmetrica/analytics/impl/Xg;->j:I

    int-to-long v2, v2

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/ch;->v:J

    iget-object p1, p1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Hl;->n:Lio/appmetrica/analytics/impl/C4;

    iget-boolean v3, v2, Lio/appmetrica/analytics/impl/C4;->a:Z

    iput-boolean v3, v0, Lio/appmetrica/analytics/impl/ch;->n:Z

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Hl;->s:Lio/appmetrica/analytics/impl/me;

    if-eqz v3, :cond_0

    iget-wide v4, v3, Lio/appmetrica/analytics/impl/me;->a:J

    iput-wide v4, v0, Lio/appmetrica/analytics/impl/ch;->s:J

    iget-wide v3, v3, Lio/appmetrica/analytics/impl/me;->b:J

    iput-wide v3, v0, Lio/appmetrica/analytics/impl/ch;->t:J

    :cond_0
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/C4;->b:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/ch;->o:Z

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Hl;->e:Ljava/util/List;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/ch;->q:Ljava/util/List;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Hl;->k:Ljava/lang/String;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/ch;->p:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ah;->d:Lio/appmetrica/analytics/impl/W3;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Xg;->i:Ljava/util/Map;

    sget-object v2, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->e()Lio/appmetrica/analytics/impl/T3;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v2}, Lio/appmetrica/analytics/impl/W3;->a(Ljava/util/Map;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/T3;)Z

    move-result p0

    iput-boolean p0, v0, Lio/appmetrica/analytics/impl/ch;->u:Z

    return-object v0
.end method

.method public final createBlankConfig()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/ch;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/m5;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/ch;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-object v0
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

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ah;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/ch;

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

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ah;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/ch;

    move-result-object p0

    return-object p0
.end method
