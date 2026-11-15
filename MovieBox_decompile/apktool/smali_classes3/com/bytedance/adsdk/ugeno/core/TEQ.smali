.class public Lcom/bytedance/adsdk/ugeno/core/TEQ;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private TKC:Lorg/json/JSONObject;

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP:I

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC:Lorg/json/JSONObject;

    return-void
.end method

.method public TKC()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP:I

    return v0
.end method

.method public sP(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UGenEvent{mWidget="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mEventType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mEvent="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC:Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
