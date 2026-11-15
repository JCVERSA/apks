.class public abstract Lcom/bytedance/sdk/openadsdk/activity/Sj;
.super Lcom/bytedance/sdk/openadsdk/activity/vS;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;


# instance fields
.field protected EjP:I

.field private Fmk:I

.field private final HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Jcg:Landroid/os/Bundle;

.field protected final Sj:Lcom/bytedance/sdk/component/utils/LqL;

.field protected TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private Zq:Z

.field protected sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sef:Z

.field private vS:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/vS;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytedance/sdk/component/utils/LqL;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->vS:I

    .line 25
    .line 26
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk:I

    .line 27
    .line 28
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sef:Z

    .line 29
    .line 30
    return-void
.end method

.method private JcM()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    return v0
.end method

.method private Mts()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sget v1, Lcom/bytedance/sdk/openadsdk/EjP/sP$sP;->TKC:I

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(ZI)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->vS()Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/widget/FrameLayout;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->wE()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/activity/Sj;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->vS:I

    return p0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/os/Bundle;)V
    .locals 8

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->wE()Landroid/app/Activity;

    move-result-object v6

    .line 19
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, v6

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/LqL;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;I)V

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP()Z

    move-result v0

    iput-boolean v0, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ir:Z

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA()Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 24
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ()Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    .line 25
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {v1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sP;->Sj(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 28
    const-string v1, "start_show_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(J)V

    :cond_0
    if-eqz p2, :cond_1

    .line 30
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gY:Z

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP()V

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 34
    iget-object p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB$Sj;)V

    .line 35
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    if-eqz v0, :cond_2

    .line 36
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/Sj$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Sj;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA()Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->setShowSound(Z)V

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sef;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ir:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;)I

    .line 43
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v2, "ad_show_order"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v2, "pag_json_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private WMZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sef:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sef:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Sj$2;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Sj;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private fF()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->aa:Lcom/bytedance/sdk/openadsdk/aa/vS;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Yf()D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->EjP:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->HiB()Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->EjP()Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Mts()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-wide/16 v1, 0x0

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(J)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method private ib()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/component/utils/LqL;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Ym()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final Dq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Fmk()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final EjP()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->LD()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jU()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Z)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->SPg()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final EjP(Landroid/app/Activity;)V
    .locals 1

    .line 6
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(Landroid/app/Activity;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM()V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/EjP;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method protected final Fmk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    const/16 v1, 0x190

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected final HiB()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x190

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2710

    .line 4
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final HiB(Landroid/app/Activity;)V
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->HiB(Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->sU()V

    return-void
.end method

.method protected abstract Jcg()V
.end method

.method public RiZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uP()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final Sj()Landroid/view/View;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    return-object v0
.end method

.method public Sj(F)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(F)V

    .line 76
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Zq:Z

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eJi()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Zq:Z

    .line 79
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg()Lcom/bytedance/sdk/openadsdk/activity/Sj;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TzV()V

    :cond_1
    return-void
.end method

.method public Sj(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj()V

    return-void
.end method

.method public final Sj(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Jcg:Landroid/os/Bundle;

    .line 5
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(Landroid/os/Bundle;)V

    return-void
.end method

.method public Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 1

    .line 8
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->vS:I

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Jcg:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/os/Bundle;)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    if-lez v0, :cond_0

    .line 12
    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->EjP:Z

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 13
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->ib()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->fF()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    const-string p2, "TTAD.AdScene"

    const-string v0, "onCreate: "

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->sP()V

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    return-void
.end method

.method public abstract Sj(Landroid/os/Bundle;)V
.end method

.method public final Sj(Landroid/os/Message;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/os/Message;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 2

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    if-ne p1, p0, :cond_3

    .line 59
    instance-of p1, p2, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz p1, :cond_3

    .line 60
    iget p1, p3, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->sP:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->LqL()Z

    move-result p3

    xor-int/2addr p3, v1

    const/4 v0, 0x2

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->LqL()Z

    move-result p3

    xor-int/2addr p3, v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->LqL()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p3, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->HiB:Z

    if-eqz p1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    const-string p3, "skip"

    invoke-virtual {p1, p3, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Ljava/lang/String;Z)V

    .line 65
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    .line 67
    :cond_3
    iget p1, p2, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    if-eqz p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WMZ()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "0"

    if-nez p1, :cond_4

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uA(Ljava/lang/String;)V

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 72
    const-string p3, "price"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    const-string p2, "skipToNextAd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    :cond_2
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public final Sj(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(ZZI)V

    return-void
.end method

.method public final Sj(ZZI)V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->Sj(ZZZLcom/bytedance/sdk/openadsdk/component/reward/sP/sP;I)V

    return-void
.end method

.method public Sj(ZZZLcom/bytedance/sdk/openadsdk/component/reward/sP/sP;I)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(ZZZI)V

    return-void
.end method

.method public final TEQ()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->fF()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected abstract TKC()V
.end method

.method public TKC(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->TKC(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->dx()V

    return-void
.end method

.method public TzV()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lz5/b;->Sj()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "material_meta"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "ad_slot"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Sj$3;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Sj;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lx5/a$a;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final Ym()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public Zq()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Zq()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->zR()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public aa()V
    .locals 0

    .line 1
    return-void
.end method

.method public dNu()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->dNu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->ib()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public dx()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/bytedance/sdk/openadsdk/EjP/sP$sP;->sP:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;
    .locals 2

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->EjP:Z

    return-object v0
.end method

.method protected abstract sP()V
.end method

.method public final sP(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->dNu()V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    .line 5
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP(Lcom/bytedance/sdk/component/utils/LqL;)V

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->JcM()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RrR()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq()V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR()V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Fmk()V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1, v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(ZLcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Z)V

    .line 14
    :cond_3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk:I

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->WMZ()V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg()V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/component/utils/LqL;)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->RiZ()V

    :cond_5
    :goto_1
    return-void
.end method

.method public sP(Z)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->sP(Z)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->TKC(Z)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;->sP(Z)V

    :cond_1
    return-void
.end method

.method protected sU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->db:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public sef()V
    .locals 0

    .line 1
    return-void
.end method

.method public final uA()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->LD()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public uvD()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->vS()Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->HiB()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final vS()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "invoke callback onShow, "

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BVA"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Jcg()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    return-object v0
.end method
