.class public abstract Lcom/aliyun/player/videoview/displayView/IDisplayView;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildView:Landroid/view/View;

.field private mDirectRender:Z

.field private mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

.field protected mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

.field private final mParent:Landroid/view/ViewGroup;

.field private mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mVideoHeight:I

.field private mVideoRotate:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AliDisplayView_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    .line 9
    .line 10
    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    .line 11
    .line 12
    iput v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    .line 13
    .line 14
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 15
    .line 16
    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 17
    .line 18
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 21
    .line 22
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    .line 27
    .line 28
    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 31
    .line 32
    sget-object p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " new IDisplayView()"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->updateViewParams()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private saveToSdcard(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "/sdcard/"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ".png"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 42
    .line 43
    const/16 v3, 0x64

    .line 44
    .line 45
    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void
.end method

.method private setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method private setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method private setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method private updateViewParams()V
    .locals 8

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "updateViewParams  "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    iget v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    .line 35
    .line 36
    if-eqz v1, :cond_d

    .line 37
    .line 38
    iget v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v1, :cond_c

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-float v0, v0

    .line 77
    iget v4, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    .line 78
    .line 79
    int-to-float v4, v4

    .line 80
    add-float/2addr v4, v0

    .line 81
    float-to-int v0, v4

    .line 82
    const/16 v4, 0x5a

    .line 83
    .line 84
    if-eq v0, v4, :cond_4

    .line 85
    .line 86
    const/16 v4, 0x10e

    .line 87
    .line 88
    if-ne v0, v4, :cond_5

    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 103
    .line 104
    sget-object v4, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 105
    .line 106
    if-ne v0, v4, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    sget-object v4, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 110
    .line 111
    const/high16 v5, 0x3f800000    # 1.0f

    .line 112
    .line 113
    if-ne v0, v4, :cond_8

    .line 114
    .line 115
    iget v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    .line 116
    .line 117
    mul-int v4, v0, v3

    .line 118
    .line 119
    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    .line 120
    .line 121
    mul-int v7, v1, v6

    .line 122
    .line 123
    if-le v4, v7, :cond_7

    .line 124
    .line 125
    :goto_0
    int-to-float v1, v3

    .line 126
    mul-float/2addr v1, v5

    .line 127
    int-to-float v0, v0

    .line 128
    mul-float/2addr v1, v0

    .line 129
    int-to-float v0, v6

    .line 130
    div-float/2addr v1, v0

    .line 131
    float-to-int v1, v1

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    mul-int v4, v0, v3

    .line 134
    .line 135
    mul-int v7, v1, v6

    .line 136
    .line 137
    if-ge v4, v7, :cond_a

    .line 138
    .line 139
    :goto_1
    int-to-float v3, v1

    .line 140
    mul-float/2addr v3, v5

    .line 141
    int-to-float v4, v6

    .line 142
    mul-float/2addr v3, v4

    .line 143
    int-to-float v0, v0

    .line 144
    div-float/2addr v3, v0

    .line 145
    float-to-int v3, v3

    .line 146
    goto :goto_2

    .line 147
    :cond_8
    iget v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    .line 148
    .line 149
    mul-int v4, v0, v3

    .line 150
    .line 151
    iget v6, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    .line 152
    .line 153
    mul-int v7, v1, v6

    .line 154
    .line 155
    if-ge v4, v7, :cond_9

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_9
    mul-int v4, v0, v3

    .line 159
    .line 160
    mul-int v7, v1, v6

    .line 161
    .line 162
    if-le v4, v7, :cond_a

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_a
    :goto_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    .line 167
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    .line 170
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 171
    .line 172
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    .line 174
    const/16 v1, 0x11

    .line 175
    .line 176
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 177
    .line 178
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 185
    .line 186
    if-ne v1, v2, :cond_b

    .line 187
    .line 188
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    :cond_b
    return-void

    .line 194
    :cond_c
    :goto_3
    const-string v1, "updateViewParams \uff0cunknow parent height and width "

    .line 195
    .line 196
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_d
    :goto_4
    const-string v1, "updateViewParams \uff0cunknow videoheight and width "

    .line 201
    .line 202
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method


# virtual methods
.method public attachView()V
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " attachView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$7;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public detachView()V
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " detachView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$6;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected abstract getRenderView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public initView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mParent:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->getRenderView(Landroid/content/Context;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 12
    .line 13
    return-void
.end method

.method protected abstract mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
.end method

.method public parentSizeChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "parentSizeChanged  "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/aliyun/player/videoview/displayView/IDisplayView$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected abstract rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setMirrorMode  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorModeInner(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mChildView:Landroid/view/View;

    .line 27
    .line 28
    new-instance v1, Lcom/aliyun/player/videoview/displayView/IDisplayView$5;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$5;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, " setOnViewStatusListener "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 27
    .line 28
    return-void
.end method

.method public setRenderFlag(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setRenderFlag  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mDirectRender:Z

    .line 24
    .line 25
    new-instance p1, Lcom/aliyun/player/videoview/displayView/IDisplayView$2;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$2;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setRotateMode  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateModeInner(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->updateViewParams()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setScaleMode  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleModeInner(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/aliyun/player/videoview/displayView/IDisplayView$4;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$4;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public abstract setSurfaceReuse(Z)V
.end method

.method public setVideoSize(III)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setVideoSize  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " \uff0c "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoWidth:I

    .line 38
    .line 39
    iput p2, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoHeight:I

    .line 40
    .line 41
    iput p3, p0, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mVideoRotate:I

    .line 42
    .line 43
    new-instance p1, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$3;-><init>(Lcom/aliyun/player/videoview/displayView/IDisplayView;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method protected abstract snapRenderView()Landroid/graphics/Bitmap;
.end method

.method public snapShot()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->snapRenderView()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
