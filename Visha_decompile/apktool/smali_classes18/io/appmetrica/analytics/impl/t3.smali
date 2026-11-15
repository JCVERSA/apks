.class public final Lio/appmetrica/analytics/impl/t3;
.super Lio/appmetrica/analytics/impl/X2;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/X2;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/t3;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 11
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a([B)[B
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    .line 3
    iget v1, p0, Lio/appmetrica/analytics/impl/X2;->a:I

    if-le v0, v1, :cond_0

    .line 4
    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/impl/X2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/X2;->b:Ljava/lang/String;

    .line 8
    iget p0, p0, Lio/appmetrica/analytics/impl/X2;->a:I

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 10
    const-string p1, "\"%s\" %s exceeded limit of %d bytes"

    invoke-virtual {v1, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final b()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    iget p0, p0, Lio/appmetrica/analytics/impl/X2;->a:I

    return p0
.end method
