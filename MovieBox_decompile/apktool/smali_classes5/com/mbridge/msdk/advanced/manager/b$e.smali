.class Lcom/mbridge/msdk/advanced/manager/b$e;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/advanced/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

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
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_9

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v0, v3, :cond_5

    .line 12
    .line 13
    if-eq v0, v2, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    if-eqz p1, :cond_a

    .line 26
    .line 27
    instance-of v0, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 28
    .line 29
    if-eqz v0, :cond_a

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setVideoReady(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->f(Lcom/mbridge/msdk/advanced/manager/b;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    if-eqz p1, :cond_a

    .line 64
    .line 65
    instance-of v0, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 66
    .line 67
    if-eqz v0, :cond_a

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setEndCardReady(Z)V

    .line 84
    .line 85
    .line 86
    :cond_3
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->f(Lcom/mbridge/msdk/advanced/manager/b;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    if-eqz p1, :cond_a

    .line 102
    .line 103
    instance-of v0, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 104
    .line 105
    if-eqz v0, :cond_a

    .line 106
    .line 107
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->f(Lcom/mbridge/msdk/advanced/manager/b;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    :try_start_0
    instance-of v0, p1, Landroid/os/Bundle;

    .line 123
    .line 124
    if-eqz v0, :cond_a

    .line 125
    .line 126
    move-object v0, p1

    .line 127
    check-cast v0, Landroid/os/Bundle;

    .line 128
    .line 129
    const-string v4, "type"

    .line 130
    .line 131
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ne v0, v1, :cond_6

    .line 136
    .line 137
    const v0, 0xd6d84

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    if-ne v0, v3, :cond_7

    .line 142
    .line 143
    const v0, 0xd6d87

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_7
    if-ne v0, v2, :cond_8

    .line 148
    .line 149
    const v0, 0xd6d86

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_8
    const v0, 0xd6d98

    .line 154
    .line 155
    .line 156
    :goto_0
    new-instance v1, Lcom/mbridge/msdk/foundation/error/b;

    .line 157
    .line 158
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 159
    .line 160
    .line 161
    move-object v0, p1

    .line 162
    check-cast v0, Landroid/os/Bundle;

    .line 163
    .line 164
    const-string v2, "msg"

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast p1, Landroid/os/Bundle;

    .line 171
    .line 172
    const-string v2, "campaignex"

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/error/b;->c(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->g(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 193
    .line 194
    invoke-static {v3}, Lcom/mbridge/msdk/advanced/manager/b;->f(Lcom/mbridge/msdk/advanced/manager/b;)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :catch_0
    move-exception p1

    .line 203
    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    .line 204
    .line 205
    const v1, 0xd6d80

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/error/b;->a(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 215
    .line 216
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->g(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 221
    .line 222
    invoke-static {v2}, Lcom/mbridge/msdk/advanced/manager/b;->f(Lcom/mbridge/msdk/advanced/manager/b;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    const/4 v3, 0x0

    .line 227
    invoke-static {p1, v0, v1, v2, v3}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    .line 233
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    instance-of v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 238
    .line 239
    if-eqz v1, :cond_a

    .line 240
    .line 241
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 242
    .line 243
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/b$e;->a:Lcom/mbridge/msdk/advanced/manager/b;

    .line 256
    .line 257
    invoke-static {v2, v1, v0, p1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 258
    .line 259
    .line 260
    :cond_a
    :goto_1
    return-void
.end method
