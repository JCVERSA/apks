.class public Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;
    }
.end annotation


# instance fields
.field private mDelay:I

.field private mFrequencyCount:I

.field private mGSYVideoGifSaveListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;

.field private mPicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

.field private mSampleSize:I

.field private mSaveShotBitmapSuccess:Z

.field private mScaleSize:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;

.field private mTmpPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;)V
    .locals 7

    const/4 v5, 0x5

    const/16 v6, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;IIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    .line 4
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mTimer:Ljava/util/Timer;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    .line 7
    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mGSYVideoGifSaveListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;

    .line 8
    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mDelay:I

    .line 9
    iput p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mSampleSize:I

    .line 10
    iput p5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mScaleSize:I

    .line 11
    iput p6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mFrequencyCount:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mDelay:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mGSYVideoGifSaveListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mSampleSize:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mScaleSize:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->startSaveBitmap()V

    return-void
.end method

.method private startSaveBitmap()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mTmpPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSY-TMP-FRAME"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$2;

    invoke-direct {v2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->saveFrame(Ljava/io/File;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mTimerTask:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mTimerTask:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;

    :cond_0
    return-void
.end method

.method public createGif(Ljava/io/File;Ljava/util/List;IIILcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/AnimatedGifEncoder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/AnimatedGifEncoder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/AnimatedGifEncoder;->setRepeat(I)V

    invoke-virtual {v0, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/AnimatedGifEncoder;->setDelay(I)V

    move p3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge p3, v2, :cond_0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v3, v3

    int-to-double v5, p5

    div-double/2addr v3, v5

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v7, v7

    div-double/2addr v7, v5

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    double-to-int v3, v3

    double-to-int v4, v7

    invoke-static {v2, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 p3, p3, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p6, p3, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;->process(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/AnimatedGifEncoder;->finish()Z

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p6, v3, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;->result(ZLjava/io/File;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p6, v1, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoGifSaveListener;->result(ZLjava/io/File;)V

    return-void
.end method

.method public startGif(Ljava/io/File;)V
    .locals 6

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mTmpPath:Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->cancelTask()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;Lei4;)V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mTimerTask:Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$TaskLocal;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mTimer:Ljava/util/Timer;

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mFrequencyCount:I

    int-to-long v4, p0

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopGif(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->cancelTask()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/GifCreateHelper;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
