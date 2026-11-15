.class public final Lio/appmetrica/analytics/impl/Oi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/je;

.field public final b:Lio/appmetrica/analytics/impl/F3;

.field public final c:Lio/appmetrica/analytics/impl/za;

.field public final d:Lio/appmetrica/analytics/impl/za;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/je;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/je;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/F3;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/F3;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/za;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    new-instance v3, Lio/appmetrica/analytics/impl/za;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/Oi;-><init>(Lio/appmetrica/analytics/impl/je;Lio/appmetrica/analytics/impl/F3;Lio/appmetrica/analytics/impl/za;Lio/appmetrica/analytics/impl/za;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/je;Lio/appmetrica/analytics/impl/F3;Lio/appmetrica/analytics/impl/za;Lio/appmetrica/analytics/impl/za;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Oi;->a:Lio/appmetrica/analytics/impl/je;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Oi;->b:Lio/appmetrica/analytics/impl/F3;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Oi;->c:Lio/appmetrica/analytics/impl/za;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Oi;->d:Lio/appmetrica/analytics/impl/za;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ti;)Lio/appmetrica/analytics/impl/Si;
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
            "Lio/appmetrica/analytics/impl/Si;"
        }
    .end annotation

    .line 16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Si;)Lio/appmetrica/analytics/impl/ti;
    .locals 6
    .param p1    # Lio/appmetrica/analytics/impl/Si;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Si;",
            ")",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/w8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/w8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Oi;->c:Lio/appmetrica/analytics/impl/za;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Si;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/w8;->a:[B

    .line 4
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Si;->b:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Oi;->b:Lio/appmetrica/analytics/impl/F3;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/F3;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v2

    .line 6
    iget-object v4, v2, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v4, Lio/appmetrica/analytics/impl/l8;

    iput-object v4, v0, Lio/appmetrica/analytics/impl/w8;->b:Lio/appmetrica/analytics/impl/l8;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 7
    :goto_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Oi;->d:Lio/appmetrica/analytics/impl/za;

    iget-object v5, p1, Lio/appmetrica/analytics/impl/Si;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object v4

    .line 9
    iget-object v5, v4, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v0, Lio/appmetrica/analytics/impl/w8;->c:[B

    .line 10
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Si;->d:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 11
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Oi;->a:Lio/appmetrica/analytics/impl/je;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/je;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v3

    .line 12
    iget-object p0, v3, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/r8;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/w8;->d:Lio/appmetrica/analytics/impl/r8;

    :cond_1
    const/4 p0, 0x4

    .line 13
    new-array p0, p0, [Lio/appmetrica/analytics/impl/v3;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    const/4 p1, 0x1

    aput-object v2, p0, p1

    const/4 p1, 0x2

    aput-object v4, p0, p1

    const/4 p1, 0x3

    aput-object v3, p0, p1

    .line 14
    new-instance p1, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p0

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 15
    new-instance p0, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Si;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Oi;->a(Lio/appmetrica/analytics/impl/Si;)Lio/appmetrica/analytics/impl/ti;

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
