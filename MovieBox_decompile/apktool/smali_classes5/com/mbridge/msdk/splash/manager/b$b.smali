.class Lcom/mbridge/msdk/splash/manager/b$b;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "OMSDK"

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_2

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/b;->d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_7

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/b;->d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_7

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->c:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 39
    .line 40
    if-eqz p1, :cond_7

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/mbridge/msdk/splash/manager/b;->a(Lcom/mbridge/msdk/splash/manager/b;Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/mbridge/msdk/splash/manager/b;->e(Lcom/mbridge/msdk/splash/manager/b;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/mbridge/msdk/splash/manager/b;->e(Lcom/mbridge/msdk/splash/manager/b;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->c()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    const-string v1, "adSession.impressionOccurred()"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/b;->d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/b;->d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/b;->d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/b;->d(Lcom/mbridge/msdk/splash/manager/b;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/h;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {v2, p1}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 146
    .line 147
    iget-object v6, p1, Lcom/mbridge/msdk/splash/manager/b;->i:Ljava/lang/String;

    .line 148
    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v0, "fetch OM failed, exception"

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/b;->b(Lcom/mbridge/msdk/splash/manager/b;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_3

    .line 181
    .line 182
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 183
    .line 184
    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/b;->c(Lcom/mbridge/msdk/splash/manager/b;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 188
    .line 189
    iget v0, p1, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 190
    .line 191
    if-lez v0, :cond_6

    .line 192
    .line 193
    sget-boolean p1, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 194
    .line 195
    if-nez p1, :cond_4

    .line 196
    .line 197
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 198
    .line 199
    iget-boolean v0, p1, Lcom/mbridge/msdk/splash/manager/b;->q:Z

    .line 200
    .line 201
    if-nez v0, :cond_4

    .line 202
    .line 203
    iget v0, p1, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 204
    .line 205
    sub-int/2addr v0, v2

    .line 206
    iput v0, p1, Lcom/mbridge/msdk/splash/manager/b;->l:I

    .line 207
    .line 208
    invoke-static {p1, v0}, Lcom/mbridge/msdk/splash/manager/b;->a(Lcom/mbridge/msdk/splash/manager/b;I)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 212
    .line 213
    iget-boolean v0, p1, Lcom/mbridge/msdk/splash/manager/b;->t:Z

    .line 214
    .line 215
    if-nez v0, :cond_5

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/manager/b;->g()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/mbridge/msdk/splash/manager/b;->f()V

    .line 224
    .line 225
    .line 226
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/b$b;->a:Lcom/mbridge/msdk/splash/manager/b;

    .line 227
    .line 228
    iget-object p1, p1, Lcom/mbridge/msdk/splash/manager/b;->y:Landroid/os/Handler;

    .line 229
    .line 230
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    .line 232
    .line 233
    const-wide/16 v0, 0x3e8

    .line 234
    .line 235
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/splash/manager/b;->b(I)V

    .line 240
    .line 241
    .line 242
    :cond_7
    :goto_3
    return-void
.end method
