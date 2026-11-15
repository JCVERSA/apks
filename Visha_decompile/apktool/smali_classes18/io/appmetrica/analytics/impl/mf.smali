.class public final Lio/appmetrica/analytics/impl/mf;
.super Lio/appmetrica/analytics/impl/xa;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/xa;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/V;)I
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/V;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/V;->b:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUtf8BytesLength(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0xc

    :goto_0
    return p0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lio/appmetrica/analytics/impl/V;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/mf;->a(Lio/appmetrica/analytics/impl/V;)I

    move-result p0

    return p0
.end method
