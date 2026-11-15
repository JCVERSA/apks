.class public final Lio/appmetrica/analytics/impl/Xg;
.super Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$BaseRequestArguments;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/util/Map;
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

.field public final j:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/F4;)V
    .locals 11
    .param p1    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/F4;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/F4;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/F4;->d:Ljava/lang/Boolean;

    iget-object v4, p1, Lio/appmetrica/analytics/impl/F4;->e:Ljava/lang/Integer;

    iget-object v5, p1, Lio/appmetrica/analytics/impl/F4;->f:Ljava/lang/Integer;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/F4;->g:Ljava/lang/Integer;

    iget-object v7, p1, Lio/appmetrica/analytics/impl/F4;->h:Ljava/lang/Boolean;

    iget-object v8, p1, Lio/appmetrica/analytics/impl/F4;->i:Ljava/lang/Boolean;

    iget-object v9, p1, Lio/appmetrica/analytics/impl/F4;->j:Ljava/util/Map;

    iget-object v10, p1, Lio/appmetrica/analytics/impl/F4;->k:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/Xg;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$BaseRequestArguments;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xg;->a:Ljava/lang/String;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-static {p2, p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/Xg;->b:Z

    .line 6
    invoke-static {p3, p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/Xg;->c:Z

    const/16 p2, 0xa

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4, p3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lio/appmetrica/analytics/impl/Xg;->d:I

    const/4 p2, 0x7

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5, p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lio/appmetrica/analytics/impl/Xg;->e:I

    const/16 p2, 0x5a

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 11
    invoke-static {p6, p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lio/appmetrica/analytics/impl/Xg;->f:I

    .line 12
    invoke-static {p7, p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Xg;->g:Z

    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    invoke-static {p8, p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Xg;->h:Z

    .line 15
    iput-object p9, p0, Lio/appmetrica/analytics/impl/Xg;->i:Ljava/util/Map;

    const/16 p1, 0x3e8

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 17
    invoke-static {p10, p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/appmetrica/analytics/impl/Xg;->j:I

    return-void
.end method

.method public static a()Lio/appmetrica/analytics/impl/Xg;
    .locals 12

    .line 1
    new-instance v11, Lio/appmetrica/analytics/impl/Xg;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/Xg;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;)V

    return-object v11
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/F4;)Z
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->b:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v2, p0, Lio/appmetrica/analytics/impl/Xg;->b:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v2, v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v2, p0, Lio/appmetrica/analytics/impl/Xg;->c:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v2, v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 7
    iget v2, p0, Lio/appmetrica/analytics/impl/Xg;->d:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_2

    return v1

    .line 8
    :cond_2
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 9
    iget v2, p0, Lio/appmetrica/analytics/impl/Xg;->e:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_3

    return v1

    .line 10
    :cond_3
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 11
    iget v2, p0, Lio/appmetrica/analytics/impl/Xg;->f:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_4

    return v1

    .line 12
    :cond_4
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 13
    iget-boolean v2, p0, Lio/appmetrica/analytics/impl/Xg;->g:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v2, v0, :cond_5

    return v1

    .line 14
    :cond_5
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 15
    iget-boolean v2, p0, Lio/appmetrica/analytics/impl/Xg;->h:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v2, v0, :cond_6

    return v1

    .line 16
    :cond_6
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 17
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Xg;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v1

    .line 18
    :cond_8
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->j:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 19
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Xg;->i:Ljava/util/Map;

    if-eqz v2, :cond_9

    invoke-interface {v2, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return v1

    .line 20
    :cond_a
    iget-object p1, p1, Lio/appmetrica/analytics/impl/F4;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 21
    iget p0, p0, Lio/appmetrica/analytics/impl/Xg;->j:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p0, p1, :cond_b

    return v1

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/F4;)Lio/appmetrica/analytics/impl/Xg;
    .locals 12
    .param p1    # Lio/appmetrica/analytics/impl/F4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v11, Lio/appmetrica/analytics/impl/Xg;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xg;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->b:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lio/appmetrica/analytics/impl/Xg;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->d:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lio/appmetrica/analytics/impl/Xg;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->e:Ljava/lang/Integer;

    iget v4, p0, Lio/appmetrica/analytics/impl/Xg;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->f:Ljava/lang/Integer;

    iget v5, p0, Lio/appmetrica/analytics/impl/Xg;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->g:Ljava/lang/Integer;

    iget v6, p0, Lio/appmetrica/analytics/impl/Xg;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->h:Ljava/lang/Boolean;

    iget-boolean v7, p0, Lio/appmetrica/analytics/impl/Xg;->g:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v7}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->i:Ljava/lang/Boolean;

    iget-boolean v8, p0, Lio/appmetrica/analytics/impl/Xg;->h:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v0, v8}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Boolean;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->j:Ljava/util/Map;

    iget-object v9, p0, Lio/appmetrica/analytics/impl/Xg;->i:Ljava/util/Map;

    invoke-static {v0, v9}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/F4;->k:Ljava/lang/Integer;

    iget p0, p0, Lio/appmetrica/analytics/impl/Xg;->j:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Ljava/lang/Integer;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/Xg;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;)V

    return-object v11
.end method

.method public final bridge synthetic compareWithOtherArguments(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lio/appmetrica/analytics/impl/F4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Xg;->a(Lio/appmetrica/analytics/impl/F4;)Z

    move-result p0

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

    check-cast p1, Lio/appmetrica/analytics/impl/F4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Xg;->b(Lio/appmetrica/analytics/impl/F4;)Lio/appmetrica/analytics/impl/Xg;

    move-result-object p0

    return-object p0
.end method
