.class public Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLOAT_BYTE_SIZE:I = 0x78

.field private static final QUEUE_SIZE:I = 0xe


# instance fields
.field private mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "[F>;"
        }
    .end annotation
.end field

.field private mLastOriginData:[F

.field private mOriginData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    return-void
.end method

.method public fill([B[FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mOriginData:[B

    if-nez v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mOriginData:[B

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mOriginData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mOriginData:[B

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->treatByte([B[FF)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mLastOriginData:[F

    if-nez p1, :cond_1

    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mLastOriginData:[F

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mLastOriginData:[F

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->interceptValue([F[F)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mLastOriginData:[F

    array-length p1, p2

    invoke-static {p2, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public getFloatArray()[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public getmDrawDataQueue()Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "[F>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method public interceptValue([F[F)V
    .locals 11

    array-length v0, p2

    new-array v0, v0, [F

    array-length v1, p2

    new-array v1, v1, [F

    array-length v2, p2

    new-array v2, v2, [F

    array-length v3, p2

    new-array v3, v3, [F

    array-length v4, p2

    new-array v4, v4, [F

    array-length v5, p2

    new-array v5, v5, [F

    array-length v6, p2

    new-array v6, v6, [F

    const/4 v7, 0x0

    :goto_0
    array-length v8, p2

    if-ge v7, v8, :cond_0

    aget v8, p1, v7

    aget v9, p2, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    aput v8, v3, v7

    aget v10, p1, v7

    add-float/2addr v10, v8

    div-float/2addr v10, v9

    aput v10, v1, v7

    aget v8, p1, v7

    add-float/2addr v10, v8

    div-float/2addr v10, v9

    aput v10, v0, v7

    aget v8, v1, v7

    aget v10, v3, v7

    add-float/2addr v8, v10

    div-float/2addr v8, v9

    aput v8, v2, v7

    aget v8, v3, v7

    aget v10, p2, v7

    add-float/2addr v8, v10

    div-float/2addr v8, v9

    aput v8, v5, v7

    aget v10, v3, v7

    add-float/2addr v8, v10

    div-float/2addr v8, v9

    aput v8, v4, v7

    aget v8, v5, v7

    aget v10, p2, v7

    add-float/2addr v8, v10

    div-float/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->mDrawDataQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public recycle([F)V
    .locals 0

    return-void
.end method

.method public treatByte([B[FF)V
    .locals 5

    const/4 p0, 0x3

    invoke-static {p2, p1, p0}, Lcom/transsion/audio/widgets/musicwaveview/DataUtils;->calculateFft([F[BI)V

    const/16 p1, 0x8

    invoke-static {p2, p1}, Lcom/transsion/audio/widgets/musicwaveview/DataUtils;->filterAverage([FI)V

    invoke-static {p2}, Lcom/transsion/audio/widgets/musicwaveview/DataUtils;->calculateDB([F)V

    invoke-static {p2, p3, p0}, Lcom/transsion/audio/widgets/musicwaveview/WaveUtils;->calculateA([FFI)V

    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    array-length p3, p2

    div-int/2addr p3, p0

    if-ge p1, p3, :cond_4

    mul-int p3, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, p3

    move v2, v0

    :goto_1
    add-int/lit8 v3, p1, 0x1

    mul-int v4, p0, v3

    if-ge v1, v4, :cond_1

    aget v3, p2, v1

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-ge p3, v4, :cond_3

    aget p1, p2, p3

    div-float/2addr p1, v0

    aput p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    move p1, v3

    goto :goto_0

    :cond_4
    const/16 p0, 0xd

    invoke-static {p2, p0}, Lcom/transsion/audio/widgets/musicwaveview/DataUtils;->savitzkyGolay([FI)V

    return-void
.end method
