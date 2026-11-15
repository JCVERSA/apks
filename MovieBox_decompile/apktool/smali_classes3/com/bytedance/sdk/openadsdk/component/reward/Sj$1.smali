.class final Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Z

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->sP:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->TKC:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->sP()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne v2, v3, :cond_3

    .line 32
    .line 33
    :cond_1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->sP:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->TKC:Z

    .line 65
    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj$1;->sP:Z

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/HiB;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method
