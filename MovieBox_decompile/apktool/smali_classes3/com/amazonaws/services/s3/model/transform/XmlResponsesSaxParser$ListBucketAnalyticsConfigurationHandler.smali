.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketAnalyticsConfigurationHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

.field private d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

.field private e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

.field private f:Ljava/util/List;

.field private g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

.field private h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

.field private i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

.field private j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string p1, "ListBucketAnalyticsConfigurationsResult"

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
    const-string v1, "AnalyticsConfiguration"

    .line 13
    .line 14
    if-eqz p3, :cond_4

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->getAnalyticsConfigurationList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->setAnalyticsConfigurationList(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->getAnalyticsConfigurationList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 47
    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    const-string p1, "IsTruncated"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 64
    .line 65
    const-string p2, "true"

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->setTruncated(Z)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_2
    const-string p1, "ContinuationToken"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->setContinuationToken(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_3
    const-string p1, "NextContinuationToken"

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_18

    .line 106
    .line 107
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->setNextContinuationToken(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_4
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    const-string v2, "StorageClassAnalysis"

    .line 127
    .line 128
    const-string v3, "Filter"

    .line 129
    .line 130
    if-eqz p3, :cond_7

    .line 131
    .line 132
    const-string p1, "Id"

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setId(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 158
    .line 159
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_18

    .line 171
    .line 172
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 173
    .line 174
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setStorageClassAnalysis(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_7
    filled-new-array {p1, v1, v3}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    const-string v4, "And"

    .line 190
    .line 191
    const-string v5, "Prefix"

    .line 192
    .line 193
    const-string v6, "Tag"

    .line 194
    .line 195
    if-eqz p3, :cond_a

    .line 196
    .line 197
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 204
    .line 205
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_8
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_9

    .line 224
    .line 225
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 226
    .line 227
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;

    .line 228
    .line 229
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 234
    .line 235
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 242
    .line 243
    .line 244
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_9
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_18

    .line 255
    .line 256
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 257
    .line 258
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;

    .line 259
    .line 260
    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 261
    .line 262
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;-><init>(Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_a
    filled-new-array {p1, v1, v3, v6}, [Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result p3

    .line 280
    const-string v7, "Value"

    .line 281
    .line 282
    const-string v8, "Key"

    .line 283
    .line 284
    if-eqz p3, :cond_c

    .line 285
    .line 286
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_b

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_b
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_18

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :cond_c
    filled-new-array {p1, v1, v3, v4}, [Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p3

    .line 318
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result p3

    .line 322
    if-eqz p3, :cond_e

    .line 323
    .line 324
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_d

    .line 329
    .line 330
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 331
    .line 332
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;

    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p3

    .line 338
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_d
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-eqz p1, :cond_18

    .line 351
    .line 352
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 353
    .line 354
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;

    .line 355
    .line 356
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 357
    .line 358
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 359
    .line 360
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 361
    .line 362
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 366
    .line 367
    .line 368
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 372
    .line 373
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :cond_e
    filled-new-array {p1, v1, v3, v4, v6}, [Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p3

    .line 381
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result p3

    .line 385
    if-eqz p3, :cond_10

    .line 386
    .line 387
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-eqz p1, :cond_f

    .line 392
    .line 393
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_f
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-eqz p1, :cond_18

    .line 406
    .line 407
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_10
    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p3

    .line 419
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result p3

    .line 423
    const-string v0, "DataExport"

    .line 424
    .line 425
    if-eqz p3, :cond_11

    .line 426
    .line 427
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-eqz p1, :cond_18

    .line 432
    .line 433
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 434
    .line 435
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 436
    .line 437
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;->setDataExport(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_0

    .line 441
    .line 442
    :cond_11
    filled-new-array {p1, v1, v2, v0}, [Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p3

    .line 446
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result p3

    .line 450
    const-string v3, "Destination"

    .line 451
    .line 452
    if-eqz p3, :cond_13

    .line 453
    .line 454
    const-string p1, "OutputSchemaVersion"

    .line 455
    .line 456
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-eqz p1, :cond_12

    .line 461
    .line 462
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 463
    .line 464
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setOutputSchemaVersion(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :cond_12
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    if-eqz p1, :cond_18

    .line 478
    .line 479
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 480
    .line 481
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 482
    .line 483
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V

    .line 484
    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :cond_13
    filled-new-array {p1, v1, v2, v0, v3}, [Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    if-eqz p1, :cond_14

    .line 497
    .line 498
    const-string p1, "S3BucketDestination"

    .line 499
    .line 500
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result p1

    .line 504
    if-eqz p1, :cond_18

    .line 505
    .line 506
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 507
    .line 508
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 509
    .line 510
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->setS3BucketDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)V

    .line 511
    .line 512
    .line 513
    goto :goto_0

    .line 514
    :cond_14
    const-string v10, "Destination"

    .line 515
    .line 516
    const-string v11, "S3BucketDestination"

    .line 517
    .line 518
    const-string v6, "ListBucketAnalyticsConfigurationsResult"

    .line 519
    .line 520
    const-string v7, "AnalyticsConfiguration"

    .line 521
    .line 522
    const-string v8, "StorageClassAnalysis"

    .line 523
    .line 524
    const-string v9, "DataExport"

    .line 525
    .line 526
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-eqz p1, :cond_18

    .line 535
    .line 536
    const-string p1, "Format"

    .line 537
    .line 538
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    if-eqz p1, :cond_15

    .line 543
    .line 544
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 545
    .line 546
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object p2

    .line 550
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setFormat(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    goto :goto_0

    .line 554
    :cond_15
    const-string p1, "BucketAccountId"

    .line 555
    .line 556
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result p1

    .line 560
    if-eqz p1, :cond_16

    .line 561
    .line 562
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 563
    .line 564
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p2

    .line 568
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setBucketAccountId(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    goto :goto_0

    .line 572
    :cond_16
    const-string p1, "Bucket"

    .line 573
    .line 574
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    if-eqz p1, :cond_17

    .line 579
    .line 580
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 581
    .line 582
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p2

    .line 586
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setBucketArn(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    goto :goto_0

    .line 590
    :cond_17
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result p1

    .line 594
    if-eqz p1, :cond_18

    .line 595
    .line 596
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 597
    .line 598
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p2

    .line 602
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->setPrefix(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    :cond_18
    :goto_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const-string p1, "ListBucketAnalyticsConfigurationsResult"

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
    const-string p4, "AnalyticsConfiguration"

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
    if-eqz p1, :cond_6

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const-string v0, "Filter"

    .line 39
    .line 40
    const-string v1, "StorageClassAnalysis"

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    filled-new-array {p1, p4, v0}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_3

    .line 82
    .line 83
    const-string p1, "And"

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    new-instance p1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    filled-new-array {p1, p4, v1}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    const-string v0, "DataExport"

    .line 108
    .line 109
    if-eqz p3, :cond_4

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    filled-new-array {p1, p4, v1, v0}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    const-string v2, "Destination"

    .line 134
    .line 135
    if-eqz p3, :cond_5

    .line 136
    .line 137
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 144
    .line 145
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    filled-new-array {p1, p4, v1, v0, v2}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    const-string p1, "S3BucketDestination"

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 170
    .line 171
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 175
    .line 176
    :cond_6
    :goto_0
    return-void
.end method
