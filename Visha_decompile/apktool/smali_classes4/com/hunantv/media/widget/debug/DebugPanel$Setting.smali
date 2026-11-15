.class public Lcom/hunantv/media/widget/debug/DebugPanel$Setting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# instance fields
.field addrInfoTypeInt:I

.field aspectRatios:I

.field enableAccSeek:Z

.field enableTsSkipError:Z

.field fileStartTimeFloatS:F

.field isAntiViewShake:Z

.field isForceHttpDns:Z

.field openImgods:Z

.field playSpeed:F

.field prepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

.field renderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

.field renderType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hunantv/media/widget/IVideoView$RenderFilter;->NORMAL:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    iput-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->addrInfoTypeInt:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->fileStartTimeFloatS:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->playSpeed:F

    iput-boolean v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->enableAccSeek:Z

    iput-boolean v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->enableTsSkipError:Z

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->prepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    return-void
.end method
