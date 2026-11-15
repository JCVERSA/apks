.class public Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;
.super Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;
.source "source.java"

# interfaces
.implements Lw5/b$a;
.implements Lw5/b$c;
.implements Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj$Sj;


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

.field private Fmk:J

.field private TEQ:Z

.field private Ym:Z

.field private aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZ)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    .line 4
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->HiB:I

    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    .line 7
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->vS:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(I)V

    .line 8
    const-string p1, "embeded_ad"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Lcom/bytedance/sdk/openadsdk/core/uvD;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZ)V

    .line 11
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    .line 13
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    .line 14
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    .line 15
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->HiB:I

    .line 16
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 17
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    .line 18
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->vS:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(I)V

    .line 19
    const-string p1, "embeded_ad"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Sj(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p5, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    return-object p0
.end method

.method private Sj(I)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result p1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v2, p1, :cond_4

    .line 10
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    if-ne v2, p1, :cond_6

    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    .line 13
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    if-eqz p1, :cond_7

    .line 14
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public HiB()Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->TKC:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v2, "getAdView null"

    .line 17
    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->TKC:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    .line 27
    .line 28
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-direct {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_3

    .line 59
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/uvD;->Sj(Lw5/b;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdClickListenerTTNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$1;

    .line 79
    .line 80
    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$2;

    .line 87
    .line 88
    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdLoadListener(Lw5/b$a;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdInteractionListener(Lw5/b$c;)V

    .line 98
    .line 99
    .line 100
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->HiB:I

    .line 101
    .line 102
    const/4 v4, 0x5

    .line 103
    if-ne v4, v3, :cond_4

    .line 104
    .line 105
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->TEQ:Z

    .line 106
    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    .line 117
    .line 118
    :goto_1
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Ym:Z

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->vS:I

    .line 132
    .line 133
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    const-string v4, "feedGetAdView"

    .line 142
    .line 143
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :goto_3
    const-string v3, ""

    .line 148
    .line 149
    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    move-object v0, v1

    .line 153
    :goto_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 154
    .line 155
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_7

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    const/4 v3, 0x1

    .line 164
    const/4 v4, 0x0

    .line 165
    const-wide/16 v5, 0x0

    .line 166
    .line 167
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_6

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_6
    return-object v0

    .line 175
    :cond_7
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v4, ","

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v3, Ljava/lang/RuntimeException;

    .line 202
    .line 203
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    :cond_8
    :goto_6
    return-object v1
.end method

.method public Sj(II)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(II)V

    :cond_0
    return-void
.end method

.method public Sj(JJ)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Fmk:J

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    return-void
.end method

.method protected Sj(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method public d_()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public g_()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public h_()V
    .locals 0

    .line 1
    return-void
.end method

.method public i_()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->Dq:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showPrivacyActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->aa()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public vS()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/sP;->uA:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    .line 2
    .line 3
    return-object v0
.end method
