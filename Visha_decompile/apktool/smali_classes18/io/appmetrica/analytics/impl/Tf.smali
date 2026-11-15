.class public final Lio/appmetrica/analytics/impl/Tf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oi;

.field public final b:Lio/appmetrica/analytics/impl/za;

.field public final c:Lio/appmetrica/analytics/impl/za;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Oi;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Oi;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/za;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    new-instance v2, Lio/appmetrica/analytics/impl/za;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/za;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Tf;-><init>(Lio/appmetrica/analytics/impl/Oi;Lio/appmetrica/analytics/impl/za;Lio/appmetrica/analytics/impl/za;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Oi;Lio/appmetrica/analytics/impl/za;Lio/appmetrica/analytics/impl/za;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Tf;->a:Lio/appmetrica/analytics/impl/Oi;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Tf;->b:Lio/appmetrica/analytics/impl/za;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Tf;->c:Lio/appmetrica/analytics/impl/za;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ti;)Lio/appmetrica/analytics/impl/mg;
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
            "Lio/appmetrica/analytics/impl/mg;"
        }
    .end annotation

    .line 12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/mg;)Lio/appmetrica/analytics/impl/ti;
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/mg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/mg;",
            ")",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/v8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tf;->b:Lio/appmetrica/analytics/impl/za;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/mg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/v8;->a:[B

    .line 4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Tf;->c:Lio/appmetrica/analytics/impl/za;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/mg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/v8;->b:[B

    .line 6
    iget-object p1, p1, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/Si;

    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Tf;->a:Lio/appmetrica/analytics/impl/Oi;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Oi;->a(Lio/appmetrica/analytics/impl/Si;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    .line 8
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast p1, Lio/appmetrica/analytics/impl/w8;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/v8;->c:Lio/appmetrica/analytics/impl/w8;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x3

    .line 9
    new-array p1, p1, [Lio/appmetrica/analytics/impl/v3;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const/4 v1, 0x1

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aput-object p0, p1, v1

    .line 10
    new-instance p0, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 11
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

    check-cast p1, Lio/appmetrica/analytics/impl/mg;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Tf;->a(Lio/appmetrica/analytics/impl/mg;)Lio/appmetrica/analytics/impl/ti;

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
