.class public final Lio/appmetrica/analytics/impl/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/D7;

.field public final b:Lio/appmetrica/analytics/impl/za;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/D7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/D7;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/za;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/U;-><init>(Lio/appmetrica/analytics/impl/D7;Lio/appmetrica/analytics/impl/za;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/D7;Lio/appmetrica/analytics/impl/za;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/U;->a:Lio/appmetrica/analytics/impl/D7;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/U;->b:Lio/appmetrica/analytics/impl/za;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ti;)Lio/appmetrica/analytics/impl/V;
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
            "Lio/appmetrica/analytics/impl/V;"
        }
    .end annotation

    .line 9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/V;)Lio/appmetrica/analytics/impl/ti;
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/V;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/V;",
            ")",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/i8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/i8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/U;->a:Lio/appmetrica/analytics/impl/D7;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/V;->a:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/D7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/m8;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/i8;->b:Lio/appmetrica/analytics/impl/m8;

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/U;->b:Lio/appmetrica/analytics/impl/za;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/V;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object p0

    .line 5
    iget-object p1, p0, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/i8;->a:[B

    const/4 p1, 0x1

    .line 6
    new-array p1, p1, [Lio/appmetrica/analytics/impl/v3;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 7
    new-instance p0, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 8
    new-instance p1, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    return-object p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/V;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/U;->a(Lio/appmetrica/analytics/impl/V;)Lio/appmetrica/analytics/impl/ti;

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
