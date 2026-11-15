.class public Lcom/bytedance/sdk/component/TKC/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field Dq:J

.field EjP:J

.field HiB:J

.field Jcg:J

.field Sj:J

.field TKC:J

.field sP:J

.field vS:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Sj:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public Dq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->EjP:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public EjP()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Sj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public Fmk()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Dq:J

    .line 6
    .line 7
    return-void
.end method

.method public HiB()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->vS:J

    .line 6
    .line 7
    return-void
.end method

.method public Jcg()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->TKC:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public Sj()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->TKC:J

    .line 6
    .line 7
    return-void
.end method

.method public TEQ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Jcg:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public TKC()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->HiB:J

    .line 6
    .line 7
    return-void
.end method

.method public Ym()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Jcg:J

    .line 6
    .line 7
    return-void
.end method

.method public Zq()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sP:J

    .line 6
    .line 7
    return-void
.end method

.method public aa()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Dq:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public sP()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->EjP:J

    .line 6
    .line 7
    return-void
.end method

.method public sef()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sP:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RequestHttpTime{requestBuildTs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Sj:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", asyncCallExecTs="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sP:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", requestStartExecTs="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->TKC:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", requestConnectStartTs="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->EjP:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", requestConnectFinishTs="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->HiB:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", reqCallServerStartTs="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Jcg:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", reqCallServerFinishTs="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Dq:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x7d

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public uA()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->HiB:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public vS()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->vS:J

    .line 2
    .line 3
    return-wide v0
.end method
