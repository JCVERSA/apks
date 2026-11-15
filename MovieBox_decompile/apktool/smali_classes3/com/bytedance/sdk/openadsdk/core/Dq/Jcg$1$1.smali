.class Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v2, v3, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/utils/WMZ;J)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$Sj;

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/Jcg;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
