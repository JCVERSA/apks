.class public final Lio/appmetrica/analytics/impl/Ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/gf;

.field public final b:Lio/appmetrica/analytics/impl/Pe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/gf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/gf;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Pe;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Pe;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/Ue;-><init>(Lio/appmetrica/analytics/impl/gf;Lio/appmetrica/analytics/impl/Pe;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/gf;Lio/appmetrica/analytics/impl/Pe;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ue;->a:Lio/appmetrica/analytics/impl/gf;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ue;->b:Lio/appmetrica/analytics/impl/Pe;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/cf;)Lio/appmetrica/analytics/impl/Se;
    .locals 6
    .param p1    # Lio/appmetrica/analytics/impl/cf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/cf;->b:[Lio/appmetrica/analytics/impl/bf;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/cf;->b:[Lio/appmetrica/analytics/impl/bf;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 8
    iget-object v5, p0, Lio/appmetrica/analytics/impl/Ue;->b:Lio/appmetrica/analytics/impl/Pe;

    invoke-virtual {v5, v4}, Lio/appmetrica/analytics/impl/Pe;->a(Lio/appmetrica/analytics/impl/bf;)Lio/appmetrica/analytics/impl/Re;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/impl/Se;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/cf;->a:Lio/appmetrica/analytics/impl/af;

    if-nez p1, :cond_1

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ue;->a:Lio/appmetrica/analytics/impl/gf;

    new-instance p1, Lio/appmetrica/analytics/impl/af;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/af;-><init>()V

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/gf;->a(Lio/appmetrica/analytics/impl/af;)Lio/appmetrica/analytics/impl/ff;

    move-result-object p0

    goto :goto_1

    .line 11
    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ue;->a:Lio/appmetrica/analytics/impl/gf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/gf;->a(Lio/appmetrica/analytics/impl/af;)Lio/appmetrica/analytics/impl/ff;

    move-result-object p0

    .line 12
    :goto_1
    invoke-direct {v1, p0, v0}, Lio/appmetrica/analytics/impl/Se;-><init>(Lio/appmetrica/analytics/impl/ff;Ljava/util/List;)V

    return-object v1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Se;)Lio/appmetrica/analytics/impl/cf;
    .locals 5
    .param p1    # Lio/appmetrica/analytics/impl/Se;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/cf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/cf;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ue;->a:Lio/appmetrica/analytics/impl/gf;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Se;->a:Lio/appmetrica/analytics/impl/ff;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/gf;->a(Lio/appmetrica/analytics/impl/ff;)Lio/appmetrica/analytics/impl/af;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/cf;->a:Lio/appmetrica/analytics/impl/af;

    .line 3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Se;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/bf;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/cf;->b:[Lio/appmetrica/analytics/impl/bf;

    .line 4
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Se;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/Re;

    .line 5
    iget-object v3, v0, Lio/appmetrica/analytics/impl/cf;->b:[Lio/appmetrica/analytics/impl/bf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Ue;->b:Lio/appmetrica/analytics/impl/Pe;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/Pe;->a(Lio/appmetrica/analytics/impl/Re;)Lio/appmetrica/analytics/impl/bf;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    check-cast p1, Lio/appmetrica/analytics/impl/Se;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ue;->a(Lio/appmetrica/analytics/impl/Se;)Lio/appmetrica/analytics/impl/cf;

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

    check-cast p1, Lio/appmetrica/analytics/impl/cf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ue;->a(Lio/appmetrica/analytics/impl/cf;)Lio/appmetrica/analytics/impl/Se;

    move-result-object p0

    return-object p0
.end method
