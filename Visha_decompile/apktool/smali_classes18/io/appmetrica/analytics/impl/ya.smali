.class public final Lio/appmetrica/analytics/impl/ya;
.super Lio/appmetrica/analytics/impl/xa;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/za;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/ya;-><init>(ILio/appmetrica/analytics/impl/za;)V

    return-void
.end method

.method public constructor <init>(ILio/appmetrica/analytics/impl/za;)V
    .locals 0
    .param p2    # Lio/appmetrica/analytics/impl/za;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/xa;-><init>(ILio/appmetrica/analytics/impl/Aa;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method
