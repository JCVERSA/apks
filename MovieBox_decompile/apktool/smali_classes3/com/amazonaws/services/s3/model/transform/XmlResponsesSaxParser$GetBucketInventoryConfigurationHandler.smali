.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetBucketInventoryConfigurationHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

.field private final d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

.field private e:Ljava/util/List;

.field private f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

.field private g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

.field private h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

.field private i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    .line 10
    .line 11
    new-instance v0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p1, "InventoryConfiguration"

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
    const-string v0, "OptionalFields"

    .line 12
    .line 13
    const-string v1, "Schedule"

    .line 14
    .line 15
    const-string v2, "Filter"

    .line 16
    .line 17
    const-string v3, "Destination"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz p3, :cond_6

    .line 21
    .line 22
    const-string p1, "Id"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setId(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setDestination(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_1
    const-string p1, "IsEnabled"

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 67
    .line 68
    const-string p2, "true"

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setEnabled(Ljava/lang/Boolean;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 94
    .line 95
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setInventoryFilter(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    .line 98
    .line 99
    .line 100
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_3
    const-string p1, "IncludedObjectVersions"

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setIncludedObjectVersions(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 130
    .line 131
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setSchedule(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    .line 134
    .line 135
    .line 136
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_e

    .line 145
    .line 146
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 147
    .line 148
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->setOptionalFields(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_6
    filled-new-array {p1, v3}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    const-string v5, "S3BucketDestination"

    .line 166
    .line 167
    if-eqz p3, :cond_7

    .line 168
    .line 169
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_e

    .line 174
    .line 175
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 176
    .line 177
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->setS3BucketDestination(Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;)V

    .line 180
    .line 181
    .line 182
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_7
    filled-new-array {p1, v3, v5}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    const-string v3, "Prefix"

    .line 195
    .line 196
    if-eqz p3, :cond_b

    .line 197
    .line 198
    const-string p1, "AccountId"

    .line 199
    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_8

    .line 205
    .line 206
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setAccountId(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_8
    const-string p1, "Bucket"

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_9

    .line 224
    .line 225
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setBucketArn(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_9
    const-string p1, "Format"

    .line 237
    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_a

    .line 243
    .line 244
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setFormat(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_e

    .line 259
    .line 260
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->setPrefix(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_b
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p3

    .line 274
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    if-eqz p3, :cond_c

    .line 279
    .line 280
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-eqz p1, :cond_e

    .line 285
    .line 286
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 287
    .line 288
    new-instance p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p3

    .line 294
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->setPredicate(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    .line 298
    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_c
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result p3

    .line 309
    if-eqz p3, :cond_d

    .line 310
    .line 311
    const-string p1, "Frequency"

    .line 312
    .line 313
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_e

    .line 318
    .line 319
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->setFrequency(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_d
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_e

    .line 338
    .line 339
    const-string p1, "Field"

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_e

    .line 346
    .line 347
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 348
    .line 349
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    :cond_e
    :goto_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    const-string p1, "InventoryConfiguration"

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
    const-string p4, "Destination"

    .line 12
    .line 13
    if-eqz p3, :cond_3

    .line 14
    .line 15
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "Filter"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p1, "Schedule"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string p1, "OptionalFields"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    const-string p1, "S3BucketDestination"

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 101
    .line 102
    :cond_4
    :goto_0
    return-void
.end method
