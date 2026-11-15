.class public abstract Lcom/transsion/audio/widgets/musicwaveview/BaseWave;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/musicwaveview/Wave;


# instance fields
.field protected fCount:I

.field protected height:I

.field protected volatile isStop:Z

.field protected maxF:I

.field protected volatile pauseDraw:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->fCount:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->maxF:I

    return-void
.end method


# virtual methods
.method public getFCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->fCount:I

    return p0
.end method

.method public getMaxF()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->maxF:I

    return p0
.end method

.method public onSurfaceSize(II)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->width:I

    iput p2, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->height:I

    return-void
.end method

.method public setFCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->fCount:I

    return-void
.end method

.method public setMaxF(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->maxF:I

    return-void
.end method

.method public setPauseDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->pauseDraw:Z

    return-void
.end method

.method public setStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->isStop:Z

    return-void
.end method
