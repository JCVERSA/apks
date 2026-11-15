.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketLifecycleConfigurationHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

.field private d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

.field private e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

.field private f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

.field private g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

.field private h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

.field private i:Ljava/util/List;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;-><init>(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string p1, "LifecycleConfiguration"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v0, 0x0

    .line 12
    const-string v1, "Rule"

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1a

    .line 21
    .line 22
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->getRules()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 29
    .line 30
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    const-string v2, "AbortIncompleteMultipartUpload"

    .line 46
    .line 47
    const-string v3, "NoncurrentVersionTransition"

    .line 48
    .line 49
    const-string v4, "Transition"

    .line 50
    .line 51
    const-string v5, "Prefix"

    .line 52
    .line 53
    const-string v6, "Filter"

    .line 54
    .line 55
    if-eqz p3, :cond_7

    .line 56
    .line 57
    const-string p1, "ID"

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setId(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setPrefix(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_2
    const-string p1, "Status"

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setStatus(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->addTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 136
    .line 137
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->addNoncurrentVersionTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 153
    .line 154
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setAbortIncompleteMultipartUpload(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_1a

    .line 168
    .line 169
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 170
    .line 171
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setFilter(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_7
    const-string p3, "Expiration"

    .line 181
    .line 182
    filled-new-array {p1, v1, p3}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    const-string v7, "Days"

    .line 191
    .line 192
    const-string v8, "Date"

    .line 193
    .line 194
    if-eqz p3, :cond_a

    .line 195
    .line 196
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_8

    .line 201
    .line 202
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d(Ljava/lang/String;)Ljava/util/Date;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationDate(Ljava/util/Date;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_8
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_9

    .line 222
    .line 223
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationInDays(I)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_9
    const-string p1, "ExpiredObjectDeleteMarker"

    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_1a

    .line 245
    .line 246
    const-string p1, "true"

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-eqz p1, :cond_1a

    .line 257
    .line 258
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 259
    .line 260
    const/4 p2, 0x1

    .line 261
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpiredObjectDeleteMarker(Z)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_a
    filled-new-array {p1, v1, v4}, [Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p3

    .line 270
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result p3

    .line 274
    const-string v4, "StorageClass"

    .line 275
    .line 276
    if-eqz p3, :cond_d

    .line 277
    .line 278
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_b

    .line 283
    .line 284
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_b
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_c

    .line 300
    .line 301
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d(Ljava/lang/String;)Ljava/util/Date;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDate(Ljava/util/Date;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_c
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_1a

    .line 321
    .line 322
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDays(I)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_d
    const-string p3, "NoncurrentVersionExpiration"

    .line 338
    .line 339
    filled-new-array {p1, v1, p3}, [Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p3

    .line 343
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result p3

    .line 347
    const-string v7, "NoncurrentDays"

    .line 348
    .line 349
    if-eqz p3, :cond_e

    .line 350
    .line 351
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-eqz p1, :cond_1a

    .line 356
    .line 357
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setNoncurrentVersionExpirationInDays(I)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :cond_e
    filled-new-array {p1, v1, v3}, [Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p3

    .line 376
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result p3

    .line 380
    if-eqz p3, :cond_10

    .line 381
    .line 382
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-eqz p1, :cond_f

    .line 387
    .line 388
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 389
    .line 390
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->setStorageClass(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_f
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-eqz p1, :cond_1a

    .line 404
    .line 405
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 406
    .line 407
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->setDays(I)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_10
    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p3

    .line 424
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result p3

    .line 428
    if-eqz p3, :cond_11

    .line 429
    .line 430
    const-string p1, "DaysAfterInitiation"

    .line 431
    .line 432
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-eqz p1, :cond_1a

    .line 437
    .line 438
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    move-result p2

    .line 448
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->setDaysAfterInitiation(I)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_11
    filled-new-array {p1, v1, v6}, [Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p3

    .line 457
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result p3

    .line 461
    const-string v2, "And"

    .line 462
    .line 463
    const-string v3, "Tag"

    .line 464
    .line 465
    if-eqz p3, :cond_14

    .line 466
    .line 467
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result p1

    .line 471
    if-eqz p1, :cond_12

    .line 472
    .line 473
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 474
    .line 475
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;

    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p3

    .line 481
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->setPredicate(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_12
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    if-eqz p1, :cond_13

    .line 494
    .line 495
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 496
    .line 497
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;

    .line 498
    .line 499
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 500
    .line 501
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 502
    .line 503
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 504
    .line 505
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->setPredicate(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 512
    .line 513
    .line 514
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 515
    .line 516
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 517
    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :cond_13
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result p1

    .line 524
    if-eqz p1, :cond_1a

    .line 525
    .line 526
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 527
    .line 528
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;

    .line 529
    .line 530
    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 531
    .line 532
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;-><init>(Ljava/util/List;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->setPredicate(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 536
    .line 537
    .line 538
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :cond_14
    filled-new-array {p1, v1, v6, v3}, [Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p3

    .line 546
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result p3

    .line 550
    const-string v4, "Value"

    .line 551
    .line 552
    const-string v7, "Key"

    .line 553
    .line 554
    if-eqz p3, :cond_16

    .line 555
    .line 556
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result p1

    .line 560
    if-eqz p1, :cond_15

    .line 561
    .line 562
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 567
    .line 568
    goto :goto_0

    .line 569
    :cond_15
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result p1

    .line 573
    if-eqz p1, :cond_1a

    .line 574
    .line 575
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 580
    .line 581
    goto :goto_0

    .line 582
    :cond_16
    filled-new-array {p1, v1, v6, v2}, [Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p3

    .line 586
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result p3

    .line 590
    if-eqz p3, :cond_18

    .line 591
    .line 592
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result p1

    .line 596
    if-eqz p1, :cond_17

    .line 597
    .line 598
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 599
    .line 600
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;

    .line 601
    .line 602
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object p3

    .line 606
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    goto :goto_0

    .line 613
    :cond_17
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result p1

    .line 617
    if-eqz p1, :cond_1a

    .line 618
    .line 619
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 620
    .line 621
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;

    .line 622
    .line 623
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 624
    .line 625
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 626
    .line 627
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 628
    .line 629
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 633
    .line 634
    .line 635
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 639
    .line 640
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 641
    .line 642
    goto :goto_0

    .line 643
    :cond_18
    filled-new-array {p1, v1, v6, v2, v3}, [Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 648
    .line 649
    .line 650
    move-result p1

    .line 651
    if-eqz p1, :cond_1a

    .line 652
    .line 653
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result p1

    .line 657
    if-eqz p1, :cond_19

    .line 658
    .line 659
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 664
    .line 665
    goto :goto_0

    .line 666
    :cond_19
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    if-eqz p1, :cond_1a

    .line 671
    .line 672
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 677
    .line 678
    :cond_1a
    :goto_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1
    const-string p1, "LifecycleConfiguration"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string p4, "Rule"

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const-string v0, "Filter"

    .line 38
    .line 39
    if-eqz p3, :cond_4

    .line 40
    .line 41
    const-string p1, "Transition"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p1, "NoncurrentVersionTransition"

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string p1, "AbortIncompleteMultipartUpload"

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    new-instance p1, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 82
    .line 83
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    new-instance p1, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    filled-new-array {p1, p4, v0}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    const-string p1, "And"

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    new-instance p1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 127
    .line 128
    :cond_5
    :goto_0
    return-void
.end method
