.class public final Lio/appmetrica/analytics/impl/mn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Qn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/L8;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/L8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/L8;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/mn;-><init>(Lio/appmetrica/analytics/impl/L8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/L8;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/mn;->a:Lio/appmetrica/analytics/impl/L8;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/L8;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mn;->a:Lio/appmetrica/analytics/impl/L8;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/R8;Lio/appmetrica/analytics/impl/ch;)[B
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/R8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/ch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p2, 0x0

    .line 1
    new-array v0, p2, [B

    .line 2
    :try_start_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/R8;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/io/Base64Utils;->decompressBase64GzipAsBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mn;->a:Lio/appmetrica/analytics/impl/L8;

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/R8;->o:Lio/appmetrica/analytics/impl/M8;

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/L8;->a:Lio/appmetrica/analytics/impl/Jc;

    .line 7
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/K8;

    .line 8
    invoke-interface {p0, v0}, Lio/appmetrica/analytics/impl/K8;->a([B)[B

    move-result-object p0

    if-nez p0, :cond_0

    .line 9
    new-array p0, p2, [B

    :cond_0
    return-object p0
.end method
