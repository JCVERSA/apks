.class public final Lio/appmetrica/analytics/impl/Y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/F2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/F2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/F2;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Y1;-><init>(Lio/appmetrica/analytics/impl/F2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/F2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y1;->a:Lio/appmetrica/analytics/impl/F2;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/b2;)Lio/appmetrica/analytics/impl/X1;
    .locals 6
    .param p1    # Lio/appmetrica/analytics/impl/b2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 17
    :goto_0
    iget-object v3, p1, Lio/appmetrica/analytics/impl/b2;->a:[Lio/appmetrica/analytics/impl/a2;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 18
    aget-object v3, v3, v2

    .line 19
    new-instance v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;

    iget-object v5, v3, Lio/appmetrica/analytics/impl/a2;->a:Ljava/lang/String;

    iget-boolean v3, v3, Lio/appmetrica/analytics/impl/a2;->b:Z

    invoke-direct {v4, v5, v3}, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;-><init>(Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p1, Lio/appmetrica/analytics/impl/b2;->b:Lio/appmetrica/analytics/impl/Z1;

    if-eqz v2, :cond_1

    .line 22
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y1;->a:Lio/appmetrica/analytics/impl/F2;

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/F2;->a(Lio/appmetrica/analytics/impl/Z1;)Lio/appmetrica/analytics/impl/H2;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 23
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    :goto_2
    iget-object v3, p1, Lio/appmetrica/analytics/impl/b2;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 25
    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26
    :cond_2
    new-instance p1, Lio/appmetrica/analytics/impl/X1;

    invoke-direct {p1, v0, p0, v2}, Lio/appmetrica/analytics/impl/X1;-><init>(Ljava/util/List;Lio/appmetrica/analytics/impl/H2;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/X1;)Lio/appmetrica/analytics/impl/b2;
    .locals 8
    .param p1    # Lio/appmetrica/analytics/impl/X1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/b2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/b2;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/X1;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/a2;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/b2;->a:[Lio/appmetrica/analytics/impl/a2;

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/X1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;

    .line 5
    iget-object v5, v0, Lio/appmetrica/analytics/impl/b2;->a:[Lio/appmetrica/analytics/impl/a2;

    .line 6
    new-instance v6, Lio/appmetrica/analytics/impl/a2;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/a2;-><init>()V

    .line 7
    iget-object v7, v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->name:Ljava/lang/String;

    iput-object v7, v6, Lio/appmetrica/analytics/impl/a2;->a:Ljava/lang/String;

    .line 8
    iget-boolean v4, v4, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->granted:Z

    iput-boolean v4, v6, Lio/appmetrica/analytics/impl/a2;->b:Z

    .line 9
    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/X1;->b:Lio/appmetrica/analytics/impl/H2;

    if-eqz v1, :cond_1

    .line 11
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y1;->a:Lio/appmetrica/analytics/impl/F2;

    .line 12
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/F2;->a(Lio/appmetrica/analytics/impl/H2;)Lio/appmetrica/analytics/impl/Z1;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/b2;->b:Lio/appmetrica/analytics/impl/Z1;

    .line 13
    :cond_1
    iget-object p0, p1, Lio/appmetrica/analytics/impl/X1;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/b2;->c:[Ljava/lang/String;

    .line 14
    iget-object p0, p1, Lio/appmetrica/analytics/impl/X1;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 15
    iget-object v1, v0, Lio/appmetrica/analytics/impl/b2;->c:[Ljava/lang/String;

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/X1;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Y1;->a(Lio/appmetrica/analytics/impl/X1;)Lio/appmetrica/analytics/impl/b2;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/b2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Y1;->a(Lio/appmetrica/analytics/impl/b2;)Lio/appmetrica/analytics/impl/X1;

    move-result-object p0

    return-object p0
.end method
