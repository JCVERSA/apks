.class Lcom/bytedance/sdk/openadsdk/component/reward/Dq;
.super Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;
.source "source.java"


# instance fields
.field private Dq:Z

.field private EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

.field private HiB:Z

.field private final Jcg:Ljava/lang/String;

.field private final Sj:Landroid/content/Context;

.field private final TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field private uA:Z

.field private final vS:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 17
    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Jcg:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;)Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    return-object p0
.end method

.method private Sj(I)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$3;

    const-string v1, "Reward_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tR()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 11
    :cond_3
    :try_start_0
    const-string v1, "rviv_new_arch"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    .line 13
    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 14
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 15
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_6
    return v0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    const/4 p0, 0x5

    if-eq v1, p0, :cond_1

    const/16 p0, 0x21

    if-eq v1, p0, :cond_1

    const/4 p0, 0x6

    if-eq v1, p0, :cond_1

    const/16 p0, 0x13

    if-eq v1, p0, :cond_1

    const/16 p0, 0xc

    if-eq v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Jcg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->HiB:Z

    return-void
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    const-string v0, "TTRewardVideoAdImpl"

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->uA:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->uA:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/uA;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/uA;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/uA;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/uA;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 11
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 12
    .line 13
    if-eqz v1, :cond_10

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->HiB()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-static {}, Lh6/a;->x()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "fullscreen_interstitial_ad"

    .line 40
    .line 41
    if-eqz v2, :cond_f

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v9, 0x1

    .line 77
    invoke-virtual {v2, v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    if-eqz v8, :cond_e

    .line 85
    .line 86
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_4
    if-nez p1, :cond_5

    .line 95
    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj:Landroid/content/Context;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move-object v2, p1

    .line 100
    :goto_1
    if-nez v2, :cond_6

    .line 101
    .line 102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eI()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_7

    .line 115
    .line 116
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 117
    .line 118
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_7

    .line 123
    .line 124
    new-instance v3, Landroid/content/Intent;

    .line 125
    .line 126
    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;

    .line 127
    .line 128
    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    move-object v10, v3

    .line 132
    goto :goto_4

    .line 133
    :cond_7
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;

    .line 134
    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    new-instance v5, Landroid/content/Intent;

    .line 138
    .line 139
    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    move-object v10, v5

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_9

    .line 149
    .line 150
    new-instance v5, Landroid/content/Intent;

    .line 151
    .line 152
    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_9
    new-instance v3, Landroid/content/Intent;

    .line 157
    .line 158
    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    .line 159
    .line 160
    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :goto_4
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->HiB:Z

    .line 165
    .line 166
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 167
    .line 168
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Jcg:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v10, p1, v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sP;->Sj(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediaExtra()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v3, "media_extra"

    .line 180
    .line 181
    invoke-virtual {v10, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserID()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string v3, "user_id"

    .line 191
    .line 192
    invoke-virtual {v10, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    const-string p1, "start_show_time"

    .line 196
    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 198
    .line 199
    .line 200
    move-result-wide v5

    .line 201
    invoke-virtual {v10, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_a

    .line 209
    .line 210
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    .line 215
    .line 216
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;)V

    .line 217
    .line 218
    .line 219
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    .line 220
    .line 221
    :cond_a
    const-string p1, "start_activity_async"

    .line 222
    .line 223
    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-ne p1, v9, :cond_b

    .line 228
    .line 229
    move v5, v9

    .line 230
    goto :goto_5

    .line 231
    :cond_b
    move v5, v4

    .line 232
    :goto_5
    if-eqz v5, :cond_c

    .line 233
    .line 234
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$1;

    .line 235
    .line 236
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;)V

    .line 237
    .line 238
    .line 239
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 240
    .line 241
    .line 242
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 243
    .line 244
    .line 245
    move-result-wide v6

    .line 246
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$2;

    .line 247
    .line 248
    move-object v3, p1

    .line 249
    move-object v4, p0

    .line 250
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;ZJLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v10, p1, v9}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;Z)Z

    .line 254
    .line 255
    .line 256
    if-nez v1, :cond_d

    .line 257
    .line 258
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->HiB:Z

    .line 265
    .line 266
    invoke-static {p1, v0, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZZ)V

    .line 267
    .line 268
    .line 269
    :cond_d
    return-void

    .line 270
    :cond_e
    :goto_6
    const-string p1, "materialMeta error "

    .line 271
    .line 272
    invoke-static {v8, v3, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_f
    const-string p1, "showFullScreenVideoAd error2: not main looper"

    .line 277
    .line 278
    invoke-static {v8, v3, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 282
    .line 283
    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTRewardVideoAd.showRewardVideoAd"

    .line 284
    .line 285
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :cond_10
    :goto_7
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Dq:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Dq:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method
