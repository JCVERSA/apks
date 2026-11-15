.class public Lcom/bytedance/sdk/openadsdk/component/reward/Ym;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;
    }
.end annotation


# instance fields
.field private EjP:J

.field private HiB:Z

.field private final Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

.field private TKC:J

.field private sP:J

.field private vS:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

    .line 8
    .line 9
    const-string p1, "reward_callback_fallback"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->vS:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZI)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string p1, "reward_callback"

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    const-string p1, "reward_fail_callback"

    goto :goto_0

    :goto_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/reward/Ym$1;

    invoke-direct {v5, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym$1;-><init>(I)V

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->EjP:J

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    .line 20
    .line 21
    sub-long v4, v2, v4

    .line 22
    .line 23
    :cond_0
    add-long/2addr v0, v4

    .line 24
    const-wide/16 v2, 0x3e8

    .line 25
    .line 26
    div-long/2addr v0, v2

    .line 27
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->vS:Z

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->sP:J

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-gez v0, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;->Sj()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public Sj()V
    .locals 8

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 6
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->EjP:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->EjP:J

    .line 7
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    :cond_1
    return-void
.end method

.method public Sj(J)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->sP:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->sP:J

    return-void
.end method

.method public TKC()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    .line 3
    .line 4
    return-void
.end method

.method public sP()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->HiB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC:J

    .line 11
    .line 12
    return-void
.end method
