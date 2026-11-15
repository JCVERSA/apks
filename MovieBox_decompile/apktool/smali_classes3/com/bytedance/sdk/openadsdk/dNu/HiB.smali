.class Lcom/bytedance/sdk/openadsdk/dNu/HiB;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dNu/EjP;


# instance fields
.field private EjP:I

.field private HiB:I

.field Sj:J

.field private TKC:I

.field private sP:Lcom/bytedance/sdk/openadsdk/dNu/EjP;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->sP:Lcom/bytedance/sdk/openadsdk/dNu/EjP;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->Sj:J

    .line 11
    .line 12
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->TKC:I

    .line 13
    .line 14
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->EjP:I

    .line 15
    .line 16
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->HiB:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->sP:Lcom/bytedance/sdk/openadsdk/dNu/EjP;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/EjP;->generatorModel()Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "7.1.1.4"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->TKC:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(I)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->EjP:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(I)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->HiB:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC(I)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->Sj:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->Jcg()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->EjP()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP(I)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
