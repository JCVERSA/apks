.class Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/libnative/MgtvMediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlushRunnable"
.end annotation


# instance fields
.field private volatile isFlushing:Z

.field private mMediaCodec:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;->isFlushing:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;->isFlushing:Z

    return p0
.end method


# virtual methods
.method public isFlushing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;->isFlushing:Z

    return p0
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;->isFlushing:Z

    return-void
.end method
