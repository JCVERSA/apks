.class public Lcom/transsion/liblan/TranMediaPlayer$EventTran;
.super Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventTran"
.end annotation


# static fields
.field public static final BUFFERING:I = 0x103

.field public static final ENCOUNTERED_ERROR:I = 0x10a

.field public static final END_REACHED:I = 0x109

.field public static final ES_ADDED:I = 0x114

.field public static final ES_DELETED:I = 0x115

.field public static final ES_SELECTED:I = 0x116

.field public static final LENGTH_CHANGED:I = 0x111

.field public static final MEDIA_CHANGED:I = 0x100

.field public static final OPENING:I = 0x102

.field public static final PAUSABLE_CHANGED:I = 0x10e

.field public static final PAUSED:I = 0x105

.field public static final PLAYING:I = 0x104

.field public static final POSITION_CHANGED:I = 0x10c

.field public static final RECORD_CHANGED:I = 0x11e

.field public static final SEEKABLE_CHANGED:I = 0x10d

.field public static final STOPPED:I = 0x106

.field public static final TIME_CHANGED:I = 0x10b

.field public static final VOUT:I = 0x112


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(IJJ)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(IJLjava/lang/String;)V

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_6

    const/16 v0, 0x106

    if-eq p0, v0, :cond_5

    const/16 v0, 0x11e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x102

    if-eq p0, v0, :cond_3

    const/16 v0, 0x103

    if-eq p0, v0, :cond_2

    const/16 v0, 0x111

    if-eq p0, v0, :cond_1

    const/16 v0, 0x112

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ESSelected"

    return-object p0

    :pswitch_1
    const-string p0, "ESDeleted"

    return-object p0

    :pswitch_2
    const-string p0, "ESAdded"

    return-object p0

    :pswitch_3
    const-string p0, "PausableChanged"

    return-object p0

    :pswitch_4
    const-string p0, "SeekableChanged"

    return-object p0

    :pswitch_5
    const-string p0, "PositionChanged"

    return-object p0

    :pswitch_6
    const-string p0, "TimeChanged"

    return-object p0

    :pswitch_7
    const-string p0, "EncounteredError"

    return-object p0

    :pswitch_8
    const-string p0, "EndReached"

    return-object p0

    :cond_0
    const-string p0, "Vout"

    return-object p0

    :cond_1
    const-string p0, "LengthChanged"

    return-object p0

    :cond_2
    const-string p0, "Buffering"

    return-object p0

    :cond_3
    const-string p0, "Opening"

    return-object p0

    :cond_4
    const-string p0, "RecordChanged"

    return-object p0

    :cond_5
    const-string p0, "Stopped"

    return-object p0

    :cond_6
    const-string p0, "MediaChanged"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x109
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x114
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBuffering()F
    .locals 0

    iget p0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->argf1:F

    return p0
.end method

.method public getEsChangedID()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg2:J

    long-to-int p0, v0

    return p0
.end method

.method public getEsChangedType()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getLengthChanged()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    return-wide v0
.end method

.method public getPausable()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

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

    iget p0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->argf1:F

    return p0
.end method

.method public getRecordPath()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->args1:Ljava/lang/String;

    return-object p0
.end method

.method public getRecording()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

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

.method public getSeekable()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

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

.method public getTimeChanged()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    return-wide v0
.end method

.method public getVoutCount()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method
