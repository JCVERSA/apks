.class public final Lio/appmetrica/analytics/impl/Bl;
.super Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$BaseRequestArguments;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/b4;)V
    .locals 7
    .param p1    # Lio/appmetrica/analytics/impl/b4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/b4;->a()Lio/appmetrica/analytics/impl/pf;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/pf;->d()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/b4;->a()Lio/appmetrica/analytics/impl/pf;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/pf;->e()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/b4;->a()Lio/appmetrica/analytics/impl/pf;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/pf;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/b4;->a()Lio/appmetrica/analytics/impl/pf;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/pf;->i()Z

    move-result v5

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/b4;->a()Lio/appmetrica/analytics/impl/pf;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/pf;->b()Ljava/util/ArrayList;

    move-result-object v6

    move-object v1, p0

    .line 6
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/Bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$BaseRequestArguments;-><init>()V

    .line 8
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Bl;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Bl;->b:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Bl;->c:Ljava/util/Map;

    .line 11
    iput-boolean p4, p0, Lio/appmetrica/analytics/impl/Bl;->d:Z

    .line 12
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Bl;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Bl;)Z
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/Bl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/Bl;)Lio/appmetrica/analytics/impl/Bl;
    .locals 7
    .param p1    # Lio/appmetrica/analytics/impl/Bl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lio/appmetrica/analytics/impl/Bl;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Bl;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Bl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Bl;->b:Ljava/lang/String;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Bl;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Bl;->c:Ljava/util/Map;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Bl;->c:Ljava/util/Map;

    invoke-static {v0, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Bl;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Bl;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Bl;->d:Z

    if-eqz v0, :cond_2

    iget-object p0, p1, Lio/appmetrica/analytics/impl/Bl;->e:Ljava/util/List;

    :goto_3
    move-object v5, p0

    goto :goto_4

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bl;->e:Ljava/util/List;

    goto :goto_3

    :goto_4
    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    return-object v6
.end method

.method public final compareWithOtherArguments(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lio/appmetrica/analytics/impl/Bl;

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic mergeFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Bl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Bl;->b(Lio/appmetrica/analytics/impl/Bl;)Lio/appmetrica/analytics/impl/Bl;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Arguments{distributionReferrer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', installReferrerSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Bl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', clientClids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Bl;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasNewCustomHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Bl;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newCustomHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bl;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
