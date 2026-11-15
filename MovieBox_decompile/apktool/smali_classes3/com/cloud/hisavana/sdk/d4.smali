.class public Lcom/cloud/hisavana/sdk/d4;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/d4$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/d4$a;

.field private b:Z

.field private final c:Lcom/cloud/hisavana/sdk/v2;

.field private d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/v2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/d4;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/d4;->e:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d4;->c:Lcom/cloud/hisavana/sdk/v2;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/d4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/d4;Lcom/cloud/hisavana/sdk/d4$a;)Lcom/cloud/hisavana/sdk/d4$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/d4;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d4;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/d4;)Lcom/cloud/hisavana/sdk/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/d4;->c:Lcom/cloud/hisavana/sdk/v2;

    .line 2
    .line 3
    return-object p0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "_adx_"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getId()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method private h()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/d4;->b:Z

    .line 2
    .line 3
    const-string v1, "InterGemini"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "registerInterstitialAdReceiver: already registered, skip"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d4;->g()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, "_click"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, "_close"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v4, "_show"

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v4, "_pre_imp"

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v4, "_error"

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, "_destroy"

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    .line 148
    const/16 v3, 0x21

    .line 149
    .line 150
    if-lt v2, v3, :cond_1

    .line 151
    .line 152
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 157
    .line 158
    const/4 v4, 0x2

    .line 159
    invoke-static {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    goto :goto_1

    .line 165
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 170
    .line 171
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    :goto_0
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/d4;->b:Z

    .line 176
    .line 177
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v2, "registerInterstitialAdReceiver"

    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "registerInterstitialAdReceiver error: "

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/d4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d4;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "InterGemini"

    .line 6
    .line 7
    const-string v2, "interstitial showNormalAd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/cloud/hisavana/sdk/d4$a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/d4$a;-><init>(Lcom/cloud/hisavana/sdk/d4;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d4;->h()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d4;->c:Lcom/cloud/hisavana/sdk/v2;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/F;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setCloseDelayTime(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d4;->c:Lcom/cloud/hisavana/sdk/v2;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/F;->x()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setRetentionEndCardRatio(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4;->c:Lcom/cloud/hisavana/sdk/v2;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G(Lcom/cloud/hisavana/sdk/v2;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/content/Intent;

    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-class v2, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    const/high16 v1, 0x10010000

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 72
    .line 73
    const-string v2, "mAdBean"

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d4;->g()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "BroadCastPrefix"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v2

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v2

    .line 20
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "InterGemini"

    .line 25
    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "unregisterReceiver: "

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v3, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    :goto_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/d4;->b:Z

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4$a;

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/d4;->b:Z

    .line 58
    .line 59
    throw v2

    .line 60
    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d4;->k()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "InterGemini"

    .line 9
    .line 10
    const-string v2, "destroy"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d4;->c:Lcom/cloud/hisavana/sdk/v2;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/v2;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "InterGemini"

    .line 19
    .line 20
    const-string v1, "show() --> mAdBean == null"

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d4;->j()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
