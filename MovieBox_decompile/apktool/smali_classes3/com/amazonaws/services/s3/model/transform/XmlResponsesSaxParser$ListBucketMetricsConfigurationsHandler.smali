.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketMetricsConfigurationsHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

.field private d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

.field private e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string p1, "ListMetricsConfigurationsResult"

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
    const-string v0, "MetricsConfiguration"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p3, :cond_4

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->getMetricsConfigurationList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setMetricsConfigurationList(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->getMetricsConfigurationList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 47
    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

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
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

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
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setTruncated(Z)V

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
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setContinuationToken(Ljava/lang/String;)V

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
    if-eqz p1, :cond_f

    .line 106
    .line 107
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setNextContinuationToken(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_4
    filled-new-array {p1, v0}, [Ljava/lang/String;

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
    const-string v2, "Filter"

    .line 127
    .line 128
    if-eqz p3, :cond_6

    .line 129
    .line 130
    const-string p1, "Id"

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setId(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_f

    .line 154
    .line 155
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    .line 160
    .line 161
    .line 162
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_6
    filled-new-array {p1, v0, v2}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    const-string v3, "Prefix"

    .line 175
    .line 176
    const-string v4, "And"

    .line 177
    .line 178
    const-string v5, "Tag"

    .line 179
    .line 180
    if-eqz p3, :cond_9

    .line 181
    .line 182
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_7

    .line 187
    .line 188
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 189
    .line 190
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_7
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_8

    .line 209
    .line 210
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 211
    .line 212
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    .line 213
    .line 214
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 215
    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 219
    .line 220
    invoke-direct {p3, v0, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 227
    .line 228
    .line 229
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 230
    .line 231
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_8
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_f

    .line 240
    .line 241
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 242
    .line 243
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;

    .line 244
    .line 245
    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 246
    .line 247
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;-><init>(Ljava/util/List;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->setPredicate(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 251
    .line 252
    .line 253
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_9
    filled-new-array {p1, v0, v2, v5}, [Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p3

    .line 261
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result p3

    .line 265
    const-string v6, "Value"

    .line 266
    .line 267
    const-string v7, "Key"

    .line 268
    .line 269
    if-eqz p3, :cond_b

    .line 270
    .line 271
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_a

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_a
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_f

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 295
    .line 296
    goto :goto_0

    .line 297
    :cond_b
    filled-new-array {p1, v0, v2, v4}, [Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p3

    .line 301
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result p3

    .line 305
    if-eqz p3, :cond_d

    .line 306
    .line 307
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_c

    .line 312
    .line 313
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 314
    .line 315
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p3

    .line 321
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    goto :goto_0

    .line 328
    :cond_c
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_f

    .line 333
    .line 334
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 335
    .line 336
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    .line 337
    .line 338
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 339
    .line 340
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 341
    .line 342
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 343
    .line 344
    invoke-direct {p3, v0, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 348
    .line 349
    .line 350
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 354
    .line 355
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 356
    .line 357
    goto :goto_0

    .line 358
    :cond_d
    filled-new-array {p1, v0, v2, v4, v5}, [Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-eqz p1, :cond_f

    .line 367
    .line 368
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-eqz p1, :cond_e

    .line 373
    .line 374
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 379
    .line 380
    goto :goto_0

    .line 381
    :cond_e
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-eqz p1, :cond_f

    .line 386
    .line 387
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->d()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 392
    .line 393
    :cond_f
    :goto_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1
    const-string p1, "ListMetricsConfigurationsResult"

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
    const-string p4, "MetricsConfiguration"

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
    if-eqz p1, :cond_2

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

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
    if-eqz p3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance p1, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    filled-new-array {p1, p4, v0}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->e([Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    const-string p1, "And"

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
