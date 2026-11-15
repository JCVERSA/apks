.class Lcom/cloud/hisavana/sdk/common/activity/b$a;
.super Landroid/webkit/WebChromeClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/b;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/16 v2, 0x64

    .line 12
    .line 13
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ne v1, p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 33
    .line 34
    iget-object v1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->d(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->k(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v1, 0x1

    .line 53
    if-nez p1, :cond_8

    .line 54
    .line 55
    if-ne p2, v2, :cond_8

    .line 56
    .line 57
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {p1, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setSpendEndTime(J)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 69
    .line 70
    invoke-static {p1, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->e(Lcom/cloud/hisavana/sdk/common/activity/b;Z)Z

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getSpendTime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    const/16 v4, 0x64

    .line 114
    .line 115
    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 151
    .line 152
    iget-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 153
    .line 154
    if-eqz p2, :cond_5

    .line 155
    .line 156
    const-string v5, "fail"

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    const-string v5, "success"

    .line 160
    .line 161
    :goto_1
    if-eqz p2, :cond_6

    .line 162
    .line 163
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getErrorType()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :goto_2
    move-object v6, p1

    .line 170
    goto :goto_3

    .line 171
    :cond_6
    const-string p1, "succeed"

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 175
    .line 176
    iget-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 177
    .line 178
    if-eqz p2, :cond_7

    .line 179
    .line 180
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getErrorCode()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    :goto_4
    move v7, p1

    .line 187
    goto :goto_5

    .line 188
    :cond_7
    const/16 p1, 0x1f40

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :goto_5
    const-wide/16 v8, -0x1

    .line 192
    .line 193
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 203
    .line 204
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->p(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_9

    .line 209
    .line 210
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 211
    .line 212
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->k(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_9

    .line 217
    .line 218
    const/16 p1, 0x32

    .line 219
    .line 220
    if-lt p2, p1, :cond_9

    .line 221
    .line 222
    if-ge p2, v2, :cond_9

    .line 223
    .line 224
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 227
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v2

    .line 232
    invoke-virtual {p1, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setSpendEndTime(J)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 236
    .line 237
    invoke-static {p1, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->l(Lcom/cloud/hisavana/sdk/common/activity/b;Z)Z

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 241
    .line 242
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 257
    .line 258
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 265
    .line 266
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 273
    .line 274
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getSpendTime()J

    .line 277
    .line 278
    .line 279
    move-result-wide v5

    .line 280
    const/16 v3, 0x32

    .line 281
    .line 282
    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 283
    .line 284
    .line 285
    :cond_9
    :goto_6
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onReceivedTitle "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "TBaseLandingActivity"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->f:Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->f:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method
