.class public Lcom/bytedance/sdk/openadsdk/activity/TKC;
.super Lcom/bytedance/sdk/openadsdk/activity/vS;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;


# static fields
.field private static EjP:Ljava/lang/String;

.field private static Fmk:Ljava/lang/String;

.field private static HiB:Ljava/lang/String;

.field private static Jcg:Ljava/lang/String;

.field private static vS:Ljava/lang/String;


# instance fields
.field private RiZ:Ljava/lang/String;

.field protected final Sj:Lcom/bytedance/sdk/component/utils/LqL;

.field protected TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private TzV:Z

.field private Zq:I

.field private dNu:Z

.field private dx:Z

.field private ib:Lorg/json/JSONObject;

.field private kF:I

.field protected sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sU:Ljava/lang/String;

.field private sef:Landroid/os/Bundle;

.field private uP:Z

.field private uvD:Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

.field private zR:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/vS;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/bytedance/sdk/component/utils/LqL;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p3, v0, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Zq:I

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uP:Z

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sef:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TzV()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->ib:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/activity/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->WMZ()V

    return-void
.end method

.method private JcM()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

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

.method private Mts()Lorg/json/JSONObject;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dx()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    long-to-int v2, v2

    .line 17
    :try_start_0
    const-string v3, "oversea_version_type"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v3, "reward_name"

    .line 24
    .line 25
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 26
    .line 27
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 28
    .line 29
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uP()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string v3, "reward_amount"

    .line 37
    .line 38
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 39
    .line 40
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->wE()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string v3, "network"

    .line 50
    .line 51
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v3, "sdk_version"

    .line 63
    .line 64
    const-string v5, "7.1.1.4"

    .line 65
    .line 66
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HpB()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const-string v5, "unKnow"

    .line 78
    .line 79
    const/4 v6, 0x2

    .line 80
    if-ne v3, v6, :cond_0

    .line 81
    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    if-ne v3, v4, :cond_1

    .line 90
    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :cond_1
    :goto_0
    const-string v3, "user_agent"

    .line 96
    .line 97
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DhB()Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v4, "gaid"

    .line 109
    .line 110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/sP/Sj;->sP()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string v4, "extra"

    .line 122
    .line 123
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string v3, "media_extra"

    .line 127
    .line 128
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sU:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    const-string v3, "video_duration"

    .line 134
    .line 135
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 136
    .line 137
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, La6/b;->K()D

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v3, "play_start_ts"

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string v3, "play_end_ts"

    .line 157
    .line 158
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    const-string v3, "duration"

    .line 162
    .line 163
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    const-string v2, "user_id"

    .line 167
    .line 168
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->RiZ:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    const-string v2, "trans_id"

    .line 174
    .line 175
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const-string v4, "-"

    .line 180
    .line 181
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    .line 188
    return-object v1

    .line 189
    :goto_1
    const-string v2, "TTAD.EndCardScene"

    .line 190
    .line 191
    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    return-object v0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->zR:J

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WM()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->zR:J

    .line 43
    :cond_1
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->kF:I

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym()J

    move-result-wide v0

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 46
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->aa()Lv5/a;

    move-result-object p2

    .line 47
    invoke-static {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JLv5/a;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->ib:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/os/Bundle;)V
    .locals 8

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->wE()Landroid/app/Activity;

    move-result-object v6

    .line 49
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, v6

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/LqL;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;I)V

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP()Z

    move-result p1

    iput-boolean p1, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ir:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA()Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iput-object p0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ()Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    .line 55
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 57
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 58
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->fF()Z

    move-result p0

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/activity/TKC;ZZLjava/lang/Runnable;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(ZZLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private Sj(ZZLjava/lang/Runnable;)Z
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "reward_verify"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "user_has_give_up_reward"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 83
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Dq(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    return v1

    :cond_2
    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    return v2

    .line 85
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_4

    .line 86
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->sef()V

    .line 87
    :cond_4
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;-><init>(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    if-eqz p1, :cond_5

    .line 89
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->HiB:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->vS:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    goto :goto_0

    .line 92
    :cond_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Jcg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Fmk:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->vS:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;ZLcom/bytedance/sdk/openadsdk/core/widget/sP;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->show()V

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/activity/TKC;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->kF:I

    return p0
.end method

.method private TzV()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TzV:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TzV:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA()Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    .line 43
    .line 44
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/component/utils/LqL;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Ym()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private WMZ()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->EjP:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private dx()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dNu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dNu:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "ivrv_new_arch_endcard_view_add_at_first"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v0, :cond_3

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Landroid/view/View;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->aa:Lcom/bytedance/sdk/openadsdk/aa/vS;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private fF()Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 18
    .line 19
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 20
    .line 21
    const-string v5, "skip"

    .line 22
    .line 23
    new-instance v6, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;

    .line 24
    .line 25
    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;)V

    .line 26
    .line 27
    .line 28
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x4

    .line 37
    const/4 v9, 0x1

    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v8, p0

    .line 40
    invoke-virtual/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZZZI)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    return v0
.end method

.method private ib()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TKC$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 29
    .line 30
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/top/sP;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->zR:J

    return-wide v0
.end method


# virtual methods
.method public final Dq()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->Sj:Landroid/os/Bundle;

    .line 11
    .line 12
    const-string v1, "isSkip"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->Sj:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "force"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->Sj:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v1, "isFromLandingPage"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 40
    .line 41
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    .line 42
    .line 43
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 46
    .line 47
    iget v8, v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->sP:I

    .line 48
    .line 49
    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->Sj(ZZZLcom/bytedance/sdk/openadsdk/component/reward/sP/sP;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final EjP()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->LD()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jU()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Z)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

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

    .line 7
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(Landroid/app/Activity;)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM()V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/EjP;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public HiB()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->ley()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->sP()V

    return-void
.end method

.method public final HiB(Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->HiB(Landroid/app/Activity;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->sU()V

    return-void
.end method

.method public RiZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

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

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final Sj(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sef:Landroid/os/Bundle;

    .line 7
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 2

    .line 9
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 10
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 12
    const-string v0, "media_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sU:Ljava/lang/String;

    .line 13
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->RiZ:Ljava/lang/String;

    .line 14
    :try_start_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Jcg:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    const-string v0, "tt_reward_msg"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Jcg:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    const-string v0, "tt_msgPlayable"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    const-string v0, "tt_negtiveBtnBtnText"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->vS:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    const-string v0, "tt_postiveBtnText"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Fmk:Ljava/lang/String;

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    const-string v0, "tt_postiveBtnTextPlayable"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->HiB:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    const-string v0, "TTAD.EndCardScene"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 21
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz p1, :cond_2

    .line 22
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fmk:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fmk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Bml:J

    iput-wide v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Bml:J

    .line 24
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    iput-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 25
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result p2

    if-nez p2, :cond_1

    .line 26
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 29
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 30
    :cond_2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    if-eqz p1, :cond_3

    .line 31
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TzV()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 32
    :catchall_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    .line 33
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 35
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->tz:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    .line 36
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx()V

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->ib()V

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Dq()V

    return-void
.end method

.method public Sj(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final Sj(Landroid/os/Message;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/os/Message;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 70
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx:Z

    if-eqz p3, :cond_3

    .line 71
    instance-of p3, p2, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz p3, :cond_4

    .line 72
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    iget v0, p2, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    :goto_0
    check-cast p2, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz p1, :cond_1

    .line 75
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz p2, :cond_1

    .line 76
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    iput-boolean p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 77
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TzV()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 78
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    .line 79
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx()V

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_4

    if-eq p2, p0, :cond_4

    .line 80
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->dx()V

    :cond_4
    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    const-string p2, "skipToNextAd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg()Lcom/bytedance/sdk/openadsdk/activity/Sj;

    move-result-object p1

    if-nez p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TKC$4;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(ZZLjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 67
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->WMZ()V

    :cond_4
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC()V

    :cond_0
    return-void
.end method

.method public Sj(JZ)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final TEQ()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public TKC()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP(I)V

    return-void
.end method

.method public TKC(Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->TKC(Landroid/app/Activity;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->dx()V

    return-void
.end method

.method public final Ym()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

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

.method protected a_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    .line 4
    .line 5
    return v0
.end method

.method public aa()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public c_()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->LD()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public dNu()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->dNu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

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

.method public sP(I)V
    .locals 8

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reward_verify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "user_has_give_up_reward"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uvD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->wE()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uP()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v2, 0x1

    move-object v1, p0

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(ZILjava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Mts()Lorg/json/JSONObject;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TKC$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;I)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/RiZ$sP;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final sP(Landroid/app/Activity;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Landroid/app/Activity;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->dNu()V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    .line 6
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP(Lcom/bytedance/sdk/component/utils/LqL;)V

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->JcM()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RrR()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq()V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR()V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Fmk()V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Zq:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1, v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(ZLcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Z)V

    .line 15
    :cond_3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Zq:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Zq:I

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg()V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/component/utils/LqL;)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->RiZ()V

    :cond_5
    :goto_1
    return-void
.end method

.method public sP(Z)V
    .locals 5

    .line 28
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uP:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Bml:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->sP(Z)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->TKC(Z)V

    if-eqz p1, :cond_1

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iput-wide v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Bml:J

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    if-eqz v1, :cond_2

    .line 35
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;->sP(Z)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uP:Z

    :cond_3
    return-void
.end method

.method protected sU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->db:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public sef()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 6
    .line 7
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->vS:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->oWa()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->sP()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v1, v1

    .line 36
    div-float/2addr v2, v1

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    sub-float/2addr v1, v2

    .line 40
    const/high16 v2, 0x42c80000    # 100.0f

    .line 41
    .line 42
    mul-float/2addr v1, v2

    .line 43
    int-to-float v0, v0

    .line 44
    cmpl-float v0, v1, v0

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-ltz v0, :cond_0

    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v2

    .line 53
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 58
    .line 59
    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa()Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->TKC()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    move v3, v1

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v1, v2

    .line 100
    :goto_1
    move v2, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    if-ne v3, v1, :cond_4

    .line 103
    .line 104
    move v2, v0

    .line 105
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC()V

    .line 108
    .line 109
    .line 110
    :cond_5
    return-void
.end method

.method public final uA()V
    .locals 0

    .line 1
    return-void
.end method

.method public uvD()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 20
    .line 21
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->EjP:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final vS()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Yf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    return-object v0
.end method
