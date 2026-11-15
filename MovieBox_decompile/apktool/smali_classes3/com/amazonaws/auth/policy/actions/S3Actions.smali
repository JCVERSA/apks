.class public final enum Lcom/amazonaws/auth/policy/actions/S3Actions;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/actions/S3Actions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum AbortMultipartUpload:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum AllS3Actions:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum CreateBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum DeleteObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLocation:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum GetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListBucketMultipartUploads:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListBuckets:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListMultipartUploadParts:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListObjectVersions:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum ListObjects:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum PutObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum RestoreObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

.field public static final enum SetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1
    new-instance v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "s3:*"

    .line 5
    .line 6
    const-string v3, "AllS3Actions"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->AllS3Actions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 12
    .line 13
    new-instance v2, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "s3:GetObject"

    .line 17
    .line 18
    const-string v5, "GetObject"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 24
    .line 25
    new-instance v4, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "s3:GetObjectVersion"

    .line 29
    .line 30
    const-string v7, "GetObjectVersion"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 36
    .line 37
    new-instance v6, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const-string v8, "s3:PutObject"

    .line 41
    .line 42
    const-string v9, "PutObject"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/amazonaws/auth/policy/actions/S3Actions;->PutObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 48
    .line 49
    new-instance v8, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const-string v10, "s3:GetObjectAcl"

    .line 53
    .line 54
    const-string v11, "GetObjectAcl"

    .line 55
    .line 56
    invoke-direct {v8, v11, v9, v10}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 60
    .line 61
    new-instance v10, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 62
    .line 63
    const/4 v11, 0x5

    .line 64
    const-string v12, "s3:GetObjectVersionAcl"

    .line 65
    .line 66
    const-string v13, "GetObjectVersionAcl"

    .line 67
    .line 68
    invoke-direct {v10, v13, v11, v12}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v10, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 72
    .line 73
    new-instance v12, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 74
    .line 75
    const/4 v13, 0x6

    .line 76
    const-string v14, "s3:PutObjectAcl"

    .line 77
    .line 78
    const-string v15, "SetObjectAcl"

    .line 79
    .line 80
    invoke-direct {v12, v15, v13, v14}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v12, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 84
    .line 85
    new-instance v14, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 86
    .line 87
    const/4 v15, 0x7

    .line 88
    const-string v13, "s3:PutObjectAclVersion"

    .line 89
    .line 90
    const-string v11, "SetObjectVersionAcl"

    .line 91
    .line 92
    invoke-direct {v14, v11, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v14, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetObjectVersionAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 96
    .line 97
    new-instance v11, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 98
    .line 99
    const/16 v13, 0x8

    .line 100
    .line 101
    const-string v15, "s3:DeleteObject"

    .line 102
    .line 103
    const-string v9, "DeleteObject"

    .line 104
    .line 105
    invoke-direct {v11, v9, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v11, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 109
    .line 110
    new-instance v9, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 111
    .line 112
    const/16 v15, 0x9

    .line 113
    .line 114
    const-string v13, "s3:DeleteObjectVersion"

    .line 115
    .line 116
    const-string v7, "DeleteObjectVersion"

    .line 117
    .line 118
    invoke-direct {v9, v7, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v9, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteObjectVersion:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 122
    .line 123
    new-instance v7, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 124
    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    const-string v15, "s3:ListMultipartUploadParts"

    .line 128
    .line 129
    const-string v5, "ListMultipartUploadParts"

    .line 130
    .line 131
    invoke-direct {v7, v5, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v7, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListMultipartUploadParts:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 135
    .line 136
    new-instance v5, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 137
    .line 138
    const/16 v15, 0xb

    .line 139
    .line 140
    const-string v13, "s3:AbortMultipartUpload"

    .line 141
    .line 142
    const-string v3, "AbortMultipartUpload"

    .line 143
    .line 144
    invoke-direct {v5, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v5, Lcom/amazonaws/auth/policy/actions/S3Actions;->AbortMultipartUpload:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 148
    .line 149
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 150
    .line 151
    const/16 v13, 0xc

    .line 152
    .line 153
    const-string v15, "s3:RestoreObject"

    .line 154
    .line 155
    const-string v1, "RestoreObject"

    .line 156
    .line 157
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->RestoreObject:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 161
    .line 162
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 163
    .line 164
    const/16 v15, 0xd

    .line 165
    .line 166
    const-string v13, "s3:CreateBucket"

    .line 167
    .line 168
    move-object/from16 v16, v3

    .line 169
    .line 170
    const-string v3, "CreateBucket"

    .line 171
    .line 172
    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->CreateBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 176
    .line 177
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 178
    .line 179
    const/16 v13, 0xe

    .line 180
    .line 181
    const-string v15, "s3:DeleteBucket"

    .line 182
    .line 183
    move-object/from16 v17, v1

    .line 184
    .line 185
    const-string v1, "DeleteBucket"

    .line 186
    .line 187
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucket:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 191
    .line 192
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 193
    .line 194
    const/16 v15, 0xf

    .line 195
    .line 196
    const-string v13, "s3:ListBucket"

    .line 197
    .line 198
    move-object/from16 v18, v3

    .line 199
    .line 200
    const-string v3, "ListObjects"

    .line 201
    .line 202
    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjects:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 206
    .line 207
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 208
    .line 209
    const/16 v13, 0x10

    .line 210
    .line 211
    const-string v15, "s3:ListBucketVersions"

    .line 212
    .line 213
    move-object/from16 v19, v1

    .line 214
    .line 215
    const-string v1, "ListObjectVersions"

    .line 216
    .line 217
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListObjectVersions:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 221
    .line 222
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 223
    .line 224
    const/16 v15, 0x11

    .line 225
    .line 226
    const-string v13, "s3:ListAllMyBuckets"

    .line 227
    .line 228
    move-object/from16 v20, v3

    .line 229
    .line 230
    const-string v3, "ListBuckets"

    .line 231
    .line 232
    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBuckets:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 236
    .line 237
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 238
    .line 239
    const/16 v13, 0x12

    .line 240
    .line 241
    const-string v15, "s3:ListBucketMultipartUploads"

    .line 242
    .line 243
    move-object/from16 v21, v1

    .line 244
    .line 245
    const-string v1, "ListBucketMultipartUploads"

    .line 246
    .line 247
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->ListBucketMultipartUploads:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 251
    .line 252
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 253
    .line 254
    const/16 v15, 0x13

    .line 255
    .line 256
    const-string v13, "s3:GetBucketAcl"

    .line 257
    .line 258
    move-object/from16 v22, v3

    .line 259
    .line 260
    const-string v3, "GetBucketAcl"

    .line 261
    .line 262
    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 266
    .line 267
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 268
    .line 269
    const/16 v13, 0x14

    .line 270
    .line 271
    const-string v15, "s3:PutBucketAcl"

    .line 272
    .line 273
    move-object/from16 v23, v1

    .line 274
    .line 275
    const-string v1, "SetBucketAcl"

    .line 276
    .line 277
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketAcl:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 281
    .line 282
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 283
    .line 284
    const/16 v15, 0x15

    .line 285
    .line 286
    const-string v13, "s3:GetBucketCORS"

    .line 287
    .line 288
    move-object/from16 v24, v3

    .line 289
    .line 290
    const-string v3, "GetBucketCrossOriginConfiguration"

    .line 291
    .line 292
    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 296
    .line 297
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 298
    .line 299
    const/16 v13, 0x16

    .line 300
    .line 301
    const-string v15, "s3:PutBucketCORS"

    .line 302
    .line 303
    move-object/from16 v25, v1

    .line 304
    .line 305
    const-string v1, "SetBucketCrossOriginConfiguration"

    .line 306
    .line 307
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketCrossOriginConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 311
    .line 312
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 313
    .line 314
    const/16 v13, 0x17

    .line 315
    .line 316
    const-string v15, "s3:GetBucketVersioning"

    .line 317
    .line 318
    move-object/from16 v26, v3

    .line 319
    .line 320
    const-string v3, "GetBucketVersioningConfiguration"

    .line 321
    .line 322
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 326
    .line 327
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 328
    .line 329
    const/16 v13, 0x18

    .line 330
    .line 331
    const-string v15, "s3:PutBucketVersioning"

    .line 332
    .line 333
    move-object/from16 v27, v1

    .line 334
    .line 335
    const-string v1, "SetBucketVersioningConfiguration"

    .line 336
    .line 337
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketVersioningConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 341
    .line 342
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 343
    .line 344
    const/16 v13, 0x19

    .line 345
    .line 346
    const-string v15, "s3:GetBucketRequestPayment"

    .line 347
    .line 348
    move-object/from16 v28, v3

    .line 349
    .line 350
    const-string v3, "GetBucketRequesterPays"

    .line 351
    .line 352
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 356
    .line 357
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 358
    .line 359
    const/16 v13, 0x1a

    .line 360
    .line 361
    const-string v15, "s3:PutBucketRequestPayment"

    .line 362
    .line 363
    move-object/from16 v29, v1

    .line 364
    .line 365
    const-string v1, "SetBucketRequesterPays"

    .line 366
    .line 367
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketRequesterPays:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 371
    .line 372
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 373
    .line 374
    const/16 v13, 0x1b

    .line 375
    .line 376
    const-string v15, "s3:GetBucketLocation"

    .line 377
    .line 378
    move-object/from16 v30, v3

    .line 379
    .line 380
    const-string v3, "GetBucketLocation"

    .line 381
    .line 382
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    .line 384
    .line 385
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLocation:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 386
    .line 387
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 388
    .line 389
    const/16 v13, 0x1c

    .line 390
    .line 391
    const-string v15, "s3:GetBucketPolicy"

    .line 392
    .line 393
    move-object/from16 v31, v1

    .line 394
    .line 395
    const-string v1, "GetBucketPolicy"

    .line 396
    .line 397
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    .line 399
    .line 400
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 401
    .line 402
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 403
    .line 404
    const/16 v13, 0x1d

    .line 405
    .line 406
    const-string v15, "s3:PutBucketPolicy"

    .line 407
    .line 408
    move-object/from16 v32, v3

    .line 409
    .line 410
    const-string v3, "SetBucketPolicy"

    .line 411
    .line 412
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 416
    .line 417
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 418
    .line 419
    const/16 v13, 0x1e

    .line 420
    .line 421
    const-string v15, "s3:DeleteBucketPolicy"

    .line 422
    .line 423
    move-object/from16 v33, v1

    .line 424
    .line 425
    const-string v1, "DeleteBucketPolicy"

    .line 426
    .line 427
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 428
    .line 429
    .line 430
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketPolicy:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 431
    .line 432
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 433
    .line 434
    const/16 v13, 0x1f

    .line 435
    .line 436
    const-string v15, "s3:GetBucketNotification"

    .line 437
    .line 438
    move-object/from16 v34, v3

    .line 439
    .line 440
    const-string v3, "GetBucketNotificationConfiguration"

    .line 441
    .line 442
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 446
    .line 447
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 448
    .line 449
    const/16 v13, 0x20

    .line 450
    .line 451
    const-string v15, "s3:PutBucketNotification"

    .line 452
    .line 453
    move-object/from16 v35, v1

    .line 454
    .line 455
    const-string v1, "SetBucketNotificationConfiguration"

    .line 456
    .line 457
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketNotificationConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 461
    .line 462
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 463
    .line 464
    const/16 v13, 0x21

    .line 465
    .line 466
    const-string v15, "s3:GetBucketLogging"

    .line 467
    .line 468
    move-object/from16 v36, v3

    .line 469
    .line 470
    const-string v3, "GetBucketLogging"

    .line 471
    .line 472
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 476
    .line 477
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 478
    .line 479
    const/16 v13, 0x22

    .line 480
    .line 481
    const-string v15, "s3:PutBucketLogging"

    .line 482
    .line 483
    move-object/from16 v37, v1

    .line 484
    .line 485
    const-string v1, "SetBucketLogging"

    .line 486
    .line 487
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    .line 489
    .line 490
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLogging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 491
    .line 492
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 493
    .line 494
    const/16 v13, 0x23

    .line 495
    .line 496
    const-string v15, "s3:GetBucketTagging"

    .line 497
    .line 498
    move-object/from16 v38, v3

    .line 499
    .line 500
    const-string v3, "GetBucketTagging"

    .line 501
    .line 502
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 503
    .line 504
    .line 505
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 506
    .line 507
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 508
    .line 509
    const/16 v13, 0x24

    .line 510
    .line 511
    const-string v15, "s3:PutBucketTagging"

    .line 512
    .line 513
    move-object/from16 v39, v1

    .line 514
    .line 515
    const-string v1, "SetBucketTagging"

    .line 516
    .line 517
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 518
    .line 519
    .line 520
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketTagging:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 521
    .line 522
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 523
    .line 524
    const/16 v13, 0x25

    .line 525
    .line 526
    const-string v15, "s3:GetBucketWebsite"

    .line 527
    .line 528
    move-object/from16 v40, v3

    .line 529
    .line 530
    const-string v3, "GetBucketWebsiteConfiguration"

    .line 531
    .line 532
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 536
    .line 537
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 538
    .line 539
    const/16 v13, 0x26

    .line 540
    .line 541
    const-string v15, "s3:PutBucketWebsite"

    .line 542
    .line 543
    move-object/from16 v41, v1

    .line 544
    .line 545
    const-string v1, "SetBucketWebsiteConfiguration"

    .line 546
    .line 547
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    .line 549
    .line 550
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 551
    .line 552
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 553
    .line 554
    const/16 v13, 0x27

    .line 555
    .line 556
    const-string v15, "s3:DeleteBucketWebsite"

    .line 557
    .line 558
    move-object/from16 v42, v3

    .line 559
    .line 560
    const-string v3, "DeleteBucketWebsiteConfiguration"

    .line 561
    .line 562
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 563
    .line 564
    .line 565
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->DeleteBucketWebsiteConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 566
    .line 567
    new-instance v3, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 568
    .line 569
    const/16 v13, 0x28

    .line 570
    .line 571
    const-string v15, "s3:GetLifecycleConfiguration"

    .line 572
    .line 573
    move-object/from16 v43, v1

    .line 574
    .line 575
    const-string v1, "GetBucketLifecycleConfiguration"

    .line 576
    .line 577
    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 578
    .line 579
    .line 580
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->GetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 581
    .line 582
    new-instance v1, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 583
    .line 584
    const/16 v13, 0x29

    .line 585
    .line 586
    const-string v15, "s3:PutLifecycleConfiguration"

    .line 587
    .line 588
    move-object/from16 v44, v3

    .line 589
    .line 590
    const-string v3, "SetBucketLifecycleConfiguration"

    .line 591
    .line 592
    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/auth/policy/actions/S3Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    sput-object v1, Lcom/amazonaws/auth/policy/actions/S3Actions;->SetBucketLifecycleConfiguration:Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 596
    .line 597
    const/16 v3, 0x2a

    .line 598
    .line 599
    new-array v3, v3, [Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 600
    .line 601
    const/4 v13, 0x0

    .line 602
    aput-object v0, v3, v13

    .line 603
    .line 604
    const/4 v0, 0x1

    .line 605
    aput-object v2, v3, v0

    .line 606
    .line 607
    const/4 v0, 0x2

    .line 608
    aput-object v4, v3, v0

    .line 609
    .line 610
    const/4 v0, 0x3

    .line 611
    aput-object v6, v3, v0

    .line 612
    .line 613
    const/4 v0, 0x4

    .line 614
    aput-object v8, v3, v0

    .line 615
    .line 616
    const/4 v0, 0x5

    .line 617
    aput-object v10, v3, v0

    .line 618
    .line 619
    const/4 v0, 0x6

    .line 620
    aput-object v12, v3, v0

    .line 621
    .line 622
    const/4 v0, 0x7

    .line 623
    aput-object v14, v3, v0

    .line 624
    .line 625
    const/16 v0, 0x8

    .line 626
    .line 627
    aput-object v11, v3, v0

    .line 628
    .line 629
    const/16 v0, 0x9

    .line 630
    .line 631
    aput-object v9, v3, v0

    .line 632
    .line 633
    const/16 v0, 0xa

    .line 634
    .line 635
    aput-object v7, v3, v0

    .line 636
    .line 637
    const/16 v0, 0xb

    .line 638
    .line 639
    aput-object v5, v3, v0

    .line 640
    .line 641
    const/16 v0, 0xc

    .line 642
    .line 643
    aput-object v16, v3, v0

    .line 644
    .line 645
    const/16 v0, 0xd

    .line 646
    .line 647
    aput-object v17, v3, v0

    .line 648
    .line 649
    const/16 v0, 0xe

    .line 650
    .line 651
    aput-object v18, v3, v0

    .line 652
    .line 653
    const/16 v0, 0xf

    .line 654
    .line 655
    aput-object v19, v3, v0

    .line 656
    .line 657
    const/16 v0, 0x10

    .line 658
    .line 659
    aput-object v20, v3, v0

    .line 660
    .line 661
    const/16 v0, 0x11

    .line 662
    .line 663
    aput-object v21, v3, v0

    .line 664
    .line 665
    const/16 v0, 0x12

    .line 666
    .line 667
    aput-object v22, v3, v0

    .line 668
    .line 669
    const/16 v0, 0x13

    .line 670
    .line 671
    aput-object v23, v3, v0

    .line 672
    .line 673
    const/16 v0, 0x14

    .line 674
    .line 675
    aput-object v24, v3, v0

    .line 676
    .line 677
    const/16 v0, 0x15

    .line 678
    .line 679
    aput-object v25, v3, v0

    .line 680
    .line 681
    const/16 v0, 0x16

    .line 682
    .line 683
    aput-object v26, v3, v0

    .line 684
    .line 685
    const/16 v0, 0x17

    .line 686
    .line 687
    aput-object v27, v3, v0

    .line 688
    .line 689
    const/16 v0, 0x18

    .line 690
    .line 691
    aput-object v28, v3, v0

    .line 692
    .line 693
    const/16 v0, 0x19

    .line 694
    .line 695
    aput-object v29, v3, v0

    .line 696
    .line 697
    const/16 v0, 0x1a

    .line 698
    .line 699
    aput-object v30, v3, v0

    .line 700
    .line 701
    const/16 v0, 0x1b

    .line 702
    .line 703
    aput-object v31, v3, v0

    .line 704
    .line 705
    const/16 v0, 0x1c

    .line 706
    .line 707
    aput-object v32, v3, v0

    .line 708
    .line 709
    const/16 v0, 0x1d

    .line 710
    .line 711
    aput-object v33, v3, v0

    .line 712
    .line 713
    const/16 v0, 0x1e

    .line 714
    .line 715
    aput-object v34, v3, v0

    .line 716
    .line 717
    const/16 v0, 0x1f

    .line 718
    .line 719
    aput-object v35, v3, v0

    .line 720
    .line 721
    const/16 v0, 0x20

    .line 722
    .line 723
    aput-object v36, v3, v0

    .line 724
    .line 725
    const/16 v0, 0x21

    .line 726
    .line 727
    aput-object v37, v3, v0

    .line 728
    .line 729
    const/16 v0, 0x22

    .line 730
    .line 731
    aput-object v38, v3, v0

    .line 732
    .line 733
    const/16 v0, 0x23

    .line 734
    .line 735
    aput-object v39, v3, v0

    .line 736
    .line 737
    const/16 v0, 0x24

    .line 738
    .line 739
    aput-object v40, v3, v0

    .line 740
    .line 741
    const/16 v0, 0x25

    .line 742
    .line 743
    aput-object v41, v3, v0

    .line 744
    .line 745
    const/16 v0, 0x26

    .line 746
    .line 747
    aput-object v42, v3, v0

    .line 748
    .line 749
    const/16 v0, 0x27

    .line 750
    .line 751
    aput-object v43, v3, v0

    .line 752
    .line 753
    const/16 v0, 0x28

    .line 754
    .line 755
    aput-object v44, v3, v0

    .line 756
    .line 757
    const/16 v0, 0x29

    .line 758
    .line 759
    aput-object v1, v3, v0

    .line 760
    .line 761
    sput-object v3, Lcom/amazonaws/auth/policy/actions/S3Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 762
    .line 763
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/amazonaws/auth/policy/actions/S3Actions;->action:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/S3Actions;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/actions/S3Actions;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/auth/policy/actions/S3Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/actions/S3Actions;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/auth/policy/actions/S3Actions;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/policy/actions/S3Actions;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
