.class Lcom/cloud/hisavana/sdk/s5$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/s5;->j(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/cloud/hisavana/sdk/s5;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/s5;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/s5$a;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/s5;->o(Lcom/cloud/hisavana/sdk/s5;Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/s5$a;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_7

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x6

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-lez v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdType()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eq v4, v5, :cond_2

    .line 66
    .line 67
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getStore()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-static {v4, v6}, Lcom/cloud/hisavana/sdk/s5;->n(Lcom/cloud/hisavana/sdk/s5;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdType()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-ne v4, v5, :cond_3

    .line 85
    .line 86
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v4, v5}, Lcom/cloud/hisavana/sdk/s5;->n(Lcom/cloud/hisavana/sdk/s5;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v4, v5}, Lcom/cloud/hisavana/sdk/s5;->n(Lcom/cloud/hisavana/sdk/s5;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_4

    .line 120
    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfoStatus()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_5

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-static {v5}, Lcom/cloud/hisavana/sdk/common/util/m;->e(Ljava/lang/String;)Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setIconUri(Landroid/net/Uri;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    const-string v5, "ssp"

    .line 191
    .line 192
    const-string v6, "pslink half set icon uri"

    .line 193
    .line 194
    invoke-virtual {v4, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_5
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-eqz v4, :cond_0

    .line 202
    .line 203
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    if-eqz v4, :cond_0

    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    const/4 v6, 0x2

    .line 230
    if-ne v4, v6, :cond_6

    .line 231
    .line 232
    if-eqz v5, :cond_0

    .line 233
    .line 234
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->checkVast()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_0

    .line 239
    .line 240
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_6
    if-eqz v5, :cond_0

    .line 253
    .line 254
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->checkVast()Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_0

    .line 259
    .line 260
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_8

    .line 277
    .line 278
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 279
    .line 280
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 281
    .line 282
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/s5;->h(Lcom/cloud/hisavana/sdk/s5;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_8
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/J0;->q(Ljava/util/List;)V

    .line 287
    .line 288
    .line 289
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 290
    .line 291
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/s5;->m(Lcom/cloud/hisavana/sdk/s5;)Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/s5;->p(Lcom/cloud/hisavana/sdk/s5;Z)V

    .line 296
    .line 297
    .line 298
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/s5$a;->b:Lcom/cloud/hisavana/sdk/s5;

    .line 299
    .line 300
    invoke-static {v2, v0, v1}, Lcom/cloud/hisavana/sdk/s5;->i(Lcom/cloud/hisavana/sdk/s5;Ljava/util/List;Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    :goto_2
    return-void
.end method
