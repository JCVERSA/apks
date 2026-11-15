.class public Lcom/hunantv/media/player/datasource/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/libnative/IMediaDataSource;


# instance fields
.field private final a:Lcom/hunantv/media/player/libnative/ImgoRtmpClient;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hunantv/media/player/libnative/ImgoRtmpClient;

    invoke-direct {v0}, Lcom/hunantv/media/player/libnative/ImgoRtmpClient;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/datasource/a;->a:Lcom/hunantv/media/player/libnative/ImgoRtmpClient;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/a;->a:Lcom/hunantv/media/player/libnative/ImgoRtmpClient;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoRtmpClient;->open(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/a;->a:Lcom/hunantv/media/player/libnative/ImgoRtmpClient;

    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoRtmpClient;->close()I

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/datasource/a;->b(Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/a;->a:Lcom/hunantv/media/player/libnative/ImgoRtmpClient;

    invoke-virtual {p0, p3, p4, p5}, Lcom/hunantv/media/player/libnative/ImgoRtmpClient;->read([BII)I

    move-result p0

    return p0
.end method
