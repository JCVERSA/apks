.class public Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;
.super Lcom/transsion/audio/widgets/musicwaveview/BaseWave;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;
    }
.end annotation


# static fields
.field private static final BASE_H:F = 0.1f

.field public static final DATATHREAD_NAME:Ljava/lang/String; = "WaveDATAThread"

.field private static final HOR_MARGIN:I = 0x5

.field private static final LINE_COUNT_MIN:I

.field private static final LINE_W:I = 0xd

.field private static final MARGIN_W:I = 0x9

.field private static final TOP_MARGIN:F = 0.1f


# instance fields
.field private baseHeight:F

.field private dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

.field private drawHeight:F

.field private firstPaint:Landroid/graphics/Paint;

.field private horMargin:F

.field private layer1:[F

.field private layer2:[F

.field private layer3:[F

.field private lineCount:I

.field private lineWidth:F

.field private mDataManager:Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

.field private mMagnitudeData:[F

.field private mOriginByte:[B

.field private marginWidth:F

.field private secondPaint:Landroid/graphics/Paint;

.field private thirdPaint:Landroid/graphics/Paint;

.field private topMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lka2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    sput v0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->LINE_COUNT_MIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->firstPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->secondPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->thirdPaint:Landroid/graphics/Paint;

    sget v0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->LINE_COUNT_MIN:I

    iput v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineCount:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mMagnitudeData:[F

    const/high16 v1, 0x41100000    # 9.0f

    iput v1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->marginWidth:F

    const/high16 v1, 0x41500000    # 13.0f

    iput v1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineWidth:F

    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->layer1:[F

    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->layer2:[F

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->layer3:[F

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->firstPaint:Landroid/graphics/Paint;

    const-string v1, "#33FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->firstPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->firstPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->firstPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->secondPaint:Landroid/graphics/Paint;

    const-string v4, "#66FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->thirdPaint:Landroid/graphics/Paint;

    const-string v4, "#FFFFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->thirdPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->thirdPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->thirdPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    invoke-direct {v0}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mDataManager:Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->horMargin:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->isStop:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->pauseDraw:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->maxF:I

    return p0
.end method

.method public static synthetic access$300(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->fCount:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mDataManager:Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mMagnitudeData:[F

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mOriginByte:[B

    return-object p0
.end method


# virtual methods
.method public drawWave(Landroid/graphics/Canvas;[FII)V
    .locals 8

    iget p3, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->marginWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p3, v0

    iget v2, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineWidth:F

    div-float v0, v2, v0

    add-float/2addr v1, v0

    iget v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->horMargin:F

    add-float/2addr v1, v0

    add-float/2addr p3, v2

    int-to-float p4, p4

    iget v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->baseHeight:F

    sub-float/2addr p4, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineCount:I

    if-ge v0, v3, :cond_0

    int-to-float v3, v2

    mul-float/2addr v3, p3

    add-float/2addr v3, v1

    iget v4, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->drawHeight:F

    iget v5, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->topMargin:F

    add-float/2addr v5, v4

    aget v6, p2, v0

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    float-to-int v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->layer1:[F

    mul-int/lit8 v6, v2, 0x4

    aput v3, v5, v6

    add-int/lit8 v7, v6, 0x1

    aput p4, v5, v7

    add-int/lit8 v7, v6, 0x2

    aput v3, v5, v7

    add-int/lit8 v6, v6, 0x3

    sub-float v3, p4, v4

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v7

    sub-float/2addr v4, v3

    aput v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->layer1:[F

    iget-object p4, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->thirdPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mDataManager:Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    invoke-virtual {p0, p2}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->recycle([F)V

    return-void
.end method

.method public getDrawData()[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mDataManager:Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->getFloatArray()[F

    move-result-object p0

    return-object p0
.end method

.method public onAttached()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    const-string v1, "WaveDATAThread"

    invoke-direct {v0, p0, v1}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;-><init>(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mDataManager:Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->getmDrawDataQueue()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    return-void
.end method

.method public onFftData([B)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->pauseDraw:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->isStop:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mOriginByte:[B

    if-nez v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mOriginByte:[B

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mOriginByte:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->setWaveData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMusicChange()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->mDataManager:Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->clearData()V

    return-void
.end method

.method public onSurfaceSize(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->onSurfaceSize(II)V

    iget p1, p0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->width:I

    int-to-float v0, p1

    iget v1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->horMargin:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v0, v3

    const/16 v3, 0x16

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v4, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineCount:I

    add-int/lit8 v5, v4, 0x1

    int-to-float v5, v5

    div-float/2addr v0, v5

    iput v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->marginWidth:F

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr p1, v2

    const/high16 v0, 0x41500000    # 13.0f

    mul-float/2addr p1, v0

    div-float/2addr p1, v3

    add-int/lit8 v4, v4, 0x1

    int-to-float v0, v4

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineWidth:F

    int-to-float p2, p2

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->baseHeight:F

    iput v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->topMargin:F

    sub-float/2addr p2, v0

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->drawHeight:F

    iget-object p2, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->thirdPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->secondPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->firstPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->lineWidth:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setPauseDraw(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->setPauseDraw(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->getDataHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->getDataHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$2;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$2;-><init>(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setWaveData()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->dataThread:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;-><init>(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
