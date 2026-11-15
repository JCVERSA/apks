.class Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDataSourceProxy"
.end annotation


# instance fields
.field private final mMediaDataSource:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;->close()V

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/systemplayer/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;->readAt(J[BII)I

    move-result p0

    return p0
.end method
