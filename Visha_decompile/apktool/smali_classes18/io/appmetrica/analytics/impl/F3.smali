.class public final Lio/appmetrica/analytics/impl/F3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ya;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/ya;

    const/16 v1, 0x14

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/ya;-><init>(II)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/F3;-><init>(Lio/appmetrica/analytics/impl/ya;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ya;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/ya;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/F3;->a:Lio/appmetrica/analytics/impl/ya;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/ti;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F3;->a:Lio/appmetrica/analytics/impl/ya;

    .line 2
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xa;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/jn;

    move-result-object p0

    .line 3
    new-instance p1, Lio/appmetrica/analytics/impl/l8;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/l8;-><init>()V

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/util/List;)[[B

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/l8;->a:[[B

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/jn;->b:Lio/appmetrica/analytics/impl/v3;

    move-object v0, p0

    check-cast v0, Lio/appmetrica/analytics/impl/E4;

    iget v0, v0, Lio/appmetrica/analytics/impl/u3;->a:I

    .line 6
    new-instance v0, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/ti;)Ljava/util/List;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/ti;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/ti;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/F3;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/ti;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
