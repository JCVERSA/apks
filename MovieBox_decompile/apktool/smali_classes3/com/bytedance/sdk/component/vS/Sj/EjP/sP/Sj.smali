.class public Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Sj:I

.field private sP:I


# direct methods
.method constructor <init>(IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lt p2, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj:I

    .line 7
    .line 8
    iput p2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public static EjP()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;-><init>(IIJ)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static HiB()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-wide/32 v2, 0xa4cb800

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;-><init>(IIJ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static TKC()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-wide/32 v2, 0xa4cb800

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;-><init>(IIJ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj:I

    .line 2
    .line 3
    return v0
.end method

.method public sP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP:I

    .line 2
    .line 3
    return v0
.end method
