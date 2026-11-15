.class public final Lio/appmetrica/analytics/impl/rf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/je;

.field public final b:Lio/appmetrica/analytics/impl/lf;

.field public final c:Lio/appmetrica/analytics/impl/F3;

.field public final d:Lio/appmetrica/analytics/impl/vf;

.field public final e:Lio/appmetrica/analytics/impl/za;

.field public final f:Lio/appmetrica/analytics/impl/za;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Lio/appmetrica/analytics/impl/je;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/je;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/lf;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/lf;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/F3;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/F3;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/vf;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/vf;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/za;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    new-instance v6, Lio/appmetrica/analytics/impl/za;

    const/16 v0, 0x3e8

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/rf;-><init>(Lio/appmetrica/analytics/impl/je;Lio/appmetrica/analytics/impl/lf;Lio/appmetrica/analytics/impl/F3;Lio/appmetrica/analytics/impl/vf;Lio/appmetrica/analytics/impl/za;Lio/appmetrica/analytics/impl/za;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/je;Lio/appmetrica/analytics/impl/lf;Lio/appmetrica/analytics/impl/F3;Lio/appmetrica/analytics/impl/vf;Lio/appmetrica/analytics/impl/za;Lio/appmetrica/analytics/impl/za;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/rf;->a:Lio/appmetrica/analytics/impl/je;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/rf;->b:Lio/appmetrica/analytics/impl/lf;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/rf;->c:Lio/appmetrica/analytics/impl/F3;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/rf;->d:Lio/appmetrica/analytics/impl/vf;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/rf;->e:Lio/appmetrica/analytics/impl/za;

    .line 8
    iput-object p6, p0, Lio/appmetrica/analytics/impl/rf;->f:Lio/appmetrica/analytics/impl/za;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/uf;)Lio/appmetrica/analytics/impl/ti;
    .locals 9
    .param p1    # Lio/appmetrica/analytics/impl/uf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/uf;",
            ")",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/t8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/t8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/rf;->e:Lio/appmetrica/analytics/impl/za;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/uf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/t8;->a:[B

    .line 4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/rf;->f:Lio/appmetrica/analytics/impl/za;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/uf;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/t8;->b:[B

    .line 6
    iget-object v3, p1, Lio/appmetrica/analytics/impl/uf;->c:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 7
    iget-object v5, p0, Lio/appmetrica/analytics/impl/rf;->c:Lio/appmetrica/analytics/impl/F3;

    invoke-virtual {v5, v3}, Lio/appmetrica/analytics/impl/F3;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v3

    .line 8
    iget-object v5, v3, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v5, Lio/appmetrica/analytics/impl/l8;

    iput-object v5, v0, Lio/appmetrica/analytics/impl/t8;->c:Lio/appmetrica/analytics/impl/l8;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 9
    :goto_0
    iget-object v5, p1, Lio/appmetrica/analytics/impl/uf;->d:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 10
    iget-object v6, p0, Lio/appmetrica/analytics/impl/rf;->a:Lio/appmetrica/analytics/impl/je;

    invoke-virtual {v6, v5}, Lio/appmetrica/analytics/impl/je;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v5

    .line 11
    iget-object v6, v5, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v6, Lio/appmetrica/analytics/impl/r8;

    iput-object v6, v0, Lio/appmetrica/analytics/impl/t8;->d:Lio/appmetrica/analytics/impl/r8;

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 12
    :goto_1
    iget-object v6, p1, Lio/appmetrica/analytics/impl/uf;->e:Lio/appmetrica/analytics/impl/nf;

    if-eqz v6, :cond_2

    .line 13
    iget-object v7, p0, Lio/appmetrica/analytics/impl/rf;->b:Lio/appmetrica/analytics/impl/lf;

    invoke-virtual {v7, v6}, Lio/appmetrica/analytics/impl/lf;->a(Lio/appmetrica/analytics/impl/nf;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v6

    .line 14
    iget-object v7, v6, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/s8;

    iput-object v7, v0, Lio/appmetrica/analytics/impl/t8;->e:Lio/appmetrica/analytics/impl/s8;

    goto :goto_2

    :cond_2
    move-object v6, v4

    .line 15
    :goto_2
    iget-object v7, p1, Lio/appmetrica/analytics/impl/uf;->f:Lio/appmetrica/analytics/impl/nf;

    if-eqz v7, :cond_3

    .line 16
    iget-object v8, p0, Lio/appmetrica/analytics/impl/rf;->b:Lio/appmetrica/analytics/impl/lf;

    invoke-virtual {v8, v7}, Lio/appmetrica/analytics/impl/lf;->a(Lio/appmetrica/analytics/impl/nf;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v7

    .line 17
    iget-object v8, v7, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v8, Lio/appmetrica/analytics/impl/s8;

    iput-object v8, v0, Lio/appmetrica/analytics/impl/t8;->f:Lio/appmetrica/analytics/impl/s8;

    goto :goto_3

    :cond_3
    move-object v7, v4

    .line 18
    :goto_3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/uf;->g:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 19
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rf;->d:Lio/appmetrica/analytics/impl/vf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/vf;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v4

    .line 20
    iget-object p0, v4, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast p0, [Lio/appmetrica/analytics/impl/u8;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/t8;->g:[Lio/appmetrica/analytics/impl/u8;

    :cond_4
    const/4 p0, 0x7

    .line 21
    new-array p0, p0, [Lio/appmetrica/analytics/impl/v3;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    const/4 p1, 0x1

    aput-object v2, p0, p1

    const/4 p1, 0x2

    aput-object v3, p0, p1

    const/4 p1, 0x3

    aput-object v5, p0, p1

    const/4 p1, 0x4

    aput-object v6, p0, p1

    const/4 p1, 0x5

    aput-object v7, p0, p1

    const/4 p1, 0x6

    aput-object v4, p0, p1

    .line 22
    new-instance p1, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p0

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 23
    new-instance p0, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/ti;)Lio/appmetrica/analytics/impl/uf;
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
            "Lio/appmetrica/analytics/impl/uf;"
        }
    .end annotation

    .line 24
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

    check-cast p1, Lio/appmetrica/analytics/impl/uf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/rf;->a(Lio/appmetrica/analytics/impl/uf;)Lio/appmetrica/analytics/impl/ti;

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
