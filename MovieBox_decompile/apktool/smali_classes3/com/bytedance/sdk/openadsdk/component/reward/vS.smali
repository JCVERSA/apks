.class Lcom/bytedance/sdk/openadsdk/component/reward/vS;
.super Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;
.source "source.java"


# instance fields
.field private Dq:Z

.field private EjP:Z

.field private final HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Jcg:Ljava/lang/String;

.field private final Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field private uA:Z

.field private vS:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;-><init>()V

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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->vS:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->EjP:Z

    .line 19
    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Jcg:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method private Sj(I)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/vS$3;

    const-string v1, "FullScreen_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/vS;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/vS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->vS:Z

    return p0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    .line 6
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

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/vS;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Jcg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/vS;)Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->EjP:Z

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->vS:Z

    return-void
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    const-string v0, "TTFullScreenVideoAdImpl"

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->uA:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->uA:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/TKC/Sj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/TKC/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/TKC/Sj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/TKC/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 11

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 12
    .line 13
    if-eqz v1, :cond_12

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 32
    .line 33
    .line 34
    move-result-object v5

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
    if-eqz v2, :cond_11

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v6, v4}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    const/4 v9, 0x1

    .line 85
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    .line 87
    .line 88
    if-eqz v5, :cond_10

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_4
    if-nez p1, :cond_5

    .line 105
    .line 106
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj:Landroid/content/Context;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move-object v2, p1

    .line 110
    :goto_1
    if-nez v2, :cond_6

    .line 111
    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eI()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    new-instance v3, Landroid/content/Intent;

    .line 135
    .line 136
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;

    .line 137
    .line 138
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    move-object v10, v3

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    .line 144
    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    new-instance v4, Landroid/content/Intent;

    .line 148
    .line 149
    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    move-object v10, v4

    .line 153
    goto :goto_4

    .line 154
    :cond_8
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_a

    .line 159
    .line 160
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    new-instance v3, Landroid/content/Intent;

    .line 167
    .line 168
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTInterstitialExpressActivity;

    .line 169
    .line 170
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    new-instance v4, Landroid/content/Intent;

    .line 175
    .line 176
    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_a
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_b

    .line 185
    .line 186
    new-instance v3, Landroid/content/Intent;

    .line 187
    .line 188
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTInterstitialActivity;

    .line 189
    .line 190
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_b
    new-instance v3, Landroid/content/Intent;

    .line 195
    .line 196
    const-class v4, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    .line 197
    .line 198
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :goto_4
    const-string v3, "start_show_time"

    .line 203
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v6

    .line 208
    invoke-virtual {v10, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->EjP:Z

    .line 212
    .line 213
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 214
    .line 215
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Jcg:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v10, p1, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sP;->Sj(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string p1, "is_verity_playable"

    .line 221
    .line 222
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->vS:Z

    .line 223
    .line 224
    invoke-virtual {v10, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_c

    .line 232
    .line 233
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 238
    .line 239
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;)V

    .line 240
    .line 241
    .line 242
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 243
    .line 244
    :cond_c
    const-string p1, "start_activity_async"

    .line 245
    .line 246
    const/4 v0, 0x0

    .line 247
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-ne p1, v9, :cond_d

    .line 252
    .line 253
    move v6, v9

    .line 254
    goto :goto_5

    .line 255
    :cond_d
    move v6, v0

    .line 256
    :goto_5
    if-eqz v6, :cond_e

    .line 257
    .line 258
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/vS$1;

    .line 259
    .line 260
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/vS;)V

    .line 261
    .line 262
    .line 263
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 264
    .line 265
    .line 266
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 267
    .line 268
    .line 269
    move-result-wide v7

    .line 270
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;

    .line 271
    .line 272
    move-object v3, p1

    .line 273
    move-object v4, p0

    .line 274
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/vS;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZJ)V

    .line 275
    .line 276
    .line 277
    invoke-static {v2, v10, p1, v9}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;Z)Z

    .line 278
    .line 279
    .line 280
    if-nez v1, :cond_f

    .line 281
    .line 282
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->EjP:Z

    .line 289
    .line 290
    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZZ)V

    .line 291
    .line 292
    .line 293
    :cond_f
    return-void

    .line 294
    :cond_10
    :goto_6
    const-string p1, "materialMeta error "

    .line 295
    .line 296
    invoke-static {v5, v3, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_11
    const-string p1, "showFullScreenVideoAd error2: not main looper"

    .line 301
    .line 302
    invoke-static {v5, v3, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 306
    .line 307
    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTFullScreenVideoAd.showFullScreenVideoAd"

    .line 308
    .line 309
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p1

    .line 313
    :cond_12
    :goto_7
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Dq:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Dq:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method
