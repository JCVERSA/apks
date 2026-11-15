.class public Lcom/transsion/tranplayer/MediaPlayer$Event;
.super Lcom/transsion/tranplayer/VLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final Buffering:I = 0x103

.field public static final DisableAudio:I = 0x127

.field public static final DisableVideo:I = 0x126

.field public static final ESAdded:I = 0x114

.field public static final ESDeleted:I = 0x115

.field public static final ESSelected:I = 0x116

.field public static final EncounteredError:I = 0x10a

.field public static final EndReached:I = 0x109

.field public static final EofPaused:I = 0x125

.field public static final FirstPicDisplay:I = 0x11e

.field public static final LengthChanged:I = 0x111

.field public static final LosePicSerious:I = 0x120

.field public static final MediaChanged:I = 0x100

.field public static final NotifyInfo:I = 0x12c

.field public static final Opening:I = 0x102

.field public static final PausableChanged:I = 0x10e

.field public static final Paused:I = 0x105

.field public static final Playing:I = 0x104

.field public static final PositionChanged:I = 0x10c

.field public static final Prepared:I = 0x122

.field public static final SeekableChanged:I = 0x10d

.field public static final Stopped:I = 0x106

.field public static final Subtitle:I = 0x123

.field public static final SubtitleLoad:I = 0x124

.field public static final SubtitleType:I = 0x128

.field public static final TimeChanged:I = 0x10b

.field public static final Unsupported:I = 0x121

.field public static final VideoCodecDeleted:I = 0x129

.field public static final VideoCodecInfo:I = 0x12b

.field public static final VideoFPS:I = 0x12a

.field public static final VideoSize:I = 0x11f

.field public static final Vout:I = 0x112


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCEvent;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/VLCEvent;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/VLCEvent;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/transsion/tranplayer/VLCEvent;-><init>(IJJ)V

    return-void
.end method

.method public constructor <init>(IJJJJ)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p9}, Lcom/transsion/tranplayer/VLCEvent;-><init>(IJJJJ)V

    return-void
.end method

.method public constructor <init>(IJJLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p6}, Lcom/transsion/tranplayer/VLCEvent;-><init>(IJJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBuffering()F
    .locals 0

    iget p0, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    return p0
.end method

.method public getCacheChanged()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getEsChangedID()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    long-to-int p0, v0

    return p0
.end method

.method public getEsChangedType()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getLengthChanged()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    return-wide v0
.end method

.method public getNotifyInfo()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getPausable()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPositionChanged()F
    .locals 0

    iget p0, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    return p0
.end method

.method public getSeekable()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSubtitleDuration()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    long-to-int p0, v0

    return p0
.end method

.method public getSubtitleLoadStatus()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getSubtitleStart()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getSubtitleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-object p0
.end method

.method public getSubtitleType()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    long-to-int p0, v0

    return p0
.end method

.method public getSubtitleTypeId()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getTimeChanged()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    return-wide v0
.end method

.method public getUseMediaCodec()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVideoCodecName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/VLCEvent;->argstr:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoCodecStatus()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getVideoFPS()F
    .locals 0

    iget p0, p0, Lcom/transsion/tranplayer/VLCEvent;->argf1:F

    return p0
.end method

.method public getVideoHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg2:J

    long-to-int p0, v0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg4:J

    long-to-int p0, v0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg3:J

    long-to-int p0, v0

    return p0
.end method

.method public getVideoWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getVoutCount()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method
