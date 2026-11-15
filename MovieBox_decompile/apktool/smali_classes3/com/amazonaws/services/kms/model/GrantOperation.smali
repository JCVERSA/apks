.class public final enum Lcom/amazonaws/services/kms/model/GrantOperation;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/GrantOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum CreateGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum Decrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum DescribeKey:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum Encrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum GenerateDataKey:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum GenerateDataKeyPair:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum GenerateDataKeyPairWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum GenerateDataKeyWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum GetPublicKey:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum ReEncryptFrom:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum ReEncryptTo:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum RetireGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum Sign:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum Verify:Lcom/amazonaws/services/kms/model/GrantOperation;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/GrantOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Decrypt"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->Decrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 10
    .line 11
    new-instance v3, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "Encrypt"

    .line 15
    .line 16
    invoke-direct {v3, v5, v4, v5}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v3, Lcom/amazonaws/services/kms/model/GrantOperation;->Encrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 20
    .line 21
    new-instance v6, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 22
    .line 23
    const/4 v7, 0x2

    .line 24
    const-string v8, "GenerateDataKey"

    .line 25
    .line 26
    invoke-direct {v6, v8, v7, v8}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v6, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 30
    .line 31
    new-instance v9, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 32
    .line 33
    const/4 v10, 0x3

    .line 34
    const-string v11, "GenerateDataKeyWithoutPlaintext"

    .line 35
    .line 36
    invoke-direct {v9, v11, v10, v11}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v9, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKeyWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 40
    .line 41
    new-instance v12, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 42
    .line 43
    const/4 v13, 0x4

    .line 44
    const-string v14, "ReEncryptFrom"

    .line 45
    .line 46
    invoke-direct {v12, v14, v13, v14}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v12, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptFrom:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 50
    .line 51
    new-instance v15, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 52
    .line 53
    const/4 v13, 0x5

    .line 54
    const-string v10, "ReEncryptTo"

    .line 55
    .line 56
    invoke-direct {v15, v10, v13, v10}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v15, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptTo:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 60
    .line 61
    new-instance v13, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 62
    .line 63
    const/4 v7, 0x6

    .line 64
    const-string v4, "Sign"

    .line 65
    .line 66
    invoke-direct {v13, v4, v7, v4}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v13, Lcom/amazonaws/services/kms/model/GrantOperation;->Sign:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 70
    .line 71
    new-instance v7, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    move-object/from16 v21, v4

    .line 75
    .line 76
    const-string v4, "Verify"

    .line 77
    .line 78
    invoke-direct {v7, v4, v1, v4}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v7, Lcom/amazonaws/services/kms/model/GrantOperation;->Verify:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 82
    .line 83
    new-instance v1, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 84
    .line 85
    move-object/from16 v22, v4

    .line 86
    .line 87
    const/16 v4, 0x8

    .line 88
    .line 89
    move-object/from16 v23, v10

    .line 90
    .line 91
    const-string v10, "GetPublicKey"

    .line 92
    .line 93
    invoke-direct {v1, v10, v4, v10}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sput-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->GetPublicKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 97
    .line 98
    new-instance v4, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 99
    .line 100
    move-object/from16 v24, v10

    .line 101
    .line 102
    const/16 v10, 0x9

    .line 103
    .line 104
    move-object/from16 v25, v14

    .line 105
    .line 106
    const-string v14, "CreateGrant"

    .line 107
    .line 108
    invoke-direct {v4, v14, v10, v14}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sput-object v4, Lcom/amazonaws/services/kms/model/GrantOperation;->CreateGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 112
    .line 113
    new-instance v10, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 114
    .line 115
    move-object/from16 v26, v14

    .line 116
    .line 117
    const/16 v14, 0xa

    .line 118
    .line 119
    move-object/from16 v27, v11

    .line 120
    .line 121
    const-string v11, "RetireGrant"

    .line 122
    .line 123
    invoke-direct {v10, v11, v14, v11}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sput-object v10, Lcom/amazonaws/services/kms/model/GrantOperation;->RetireGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 127
    .line 128
    new-instance v14, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 129
    .line 130
    move-object/from16 v28, v11

    .line 131
    .line 132
    const/16 v11, 0xb

    .line 133
    .line 134
    move-object/from16 v29, v8

    .line 135
    .line 136
    const-string v8, "DescribeKey"

    .line 137
    .line 138
    invoke-direct {v14, v8, v11, v8}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v14, Lcom/amazonaws/services/kms/model/GrantOperation;->DescribeKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 142
    .line 143
    new-instance v11, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 144
    .line 145
    move-object/from16 v30, v8

    .line 146
    .line 147
    const/16 v8, 0xc

    .line 148
    .line 149
    move-object/from16 v31, v5

    .line 150
    .line 151
    const-string v5, "GenerateDataKeyPair"

    .line 152
    .line 153
    invoke-direct {v11, v5, v8, v5}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sput-object v11, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKeyPair:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 157
    .line 158
    new-instance v8, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 159
    .line 160
    move-object/from16 v32, v5

    .line 161
    .line 162
    const/16 v5, 0xd

    .line 163
    .line 164
    move-object/from16 v33, v2

    .line 165
    .line 166
    const-string v2, "GenerateDataKeyPairWithoutPlaintext"

    .line 167
    .line 168
    invoke-direct {v8, v2, v5, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v8, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKeyPairWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 172
    .line 173
    const/16 v5, 0xe

    .line 174
    .line 175
    new-array v5, v5, [Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 176
    .line 177
    const/16 v20, 0x0

    .line 178
    .line 179
    aput-object v0, v5, v20

    .line 180
    .line 181
    const/16 v19, 0x1

    .line 182
    .line 183
    aput-object v3, v5, v19

    .line 184
    .line 185
    const/16 v18, 0x2

    .line 186
    .line 187
    aput-object v6, v5, v18

    .line 188
    .line 189
    const/16 v17, 0x3

    .line 190
    .line 191
    aput-object v9, v5, v17

    .line 192
    .line 193
    const/16 v16, 0x4

    .line 194
    .line 195
    aput-object v12, v5, v16

    .line 196
    .line 197
    const/16 v16, 0x5

    .line 198
    .line 199
    aput-object v15, v5, v16

    .line 200
    .line 201
    const/16 v16, 0x6

    .line 202
    .line 203
    aput-object v13, v5, v16

    .line 204
    .line 205
    const/16 v16, 0x7

    .line 206
    .line 207
    aput-object v7, v5, v16

    .line 208
    .line 209
    const/16 v16, 0x8

    .line 210
    .line 211
    aput-object v1, v5, v16

    .line 212
    .line 213
    const/16 v16, 0x9

    .line 214
    .line 215
    aput-object v4, v5, v16

    .line 216
    .line 217
    const/16 v16, 0xa

    .line 218
    .line 219
    aput-object v10, v5, v16

    .line 220
    .line 221
    const/16 v16, 0xb

    .line 222
    .line 223
    aput-object v14, v5, v16

    .line 224
    .line 225
    const/16 v16, 0xc

    .line 226
    .line 227
    aput-object v11, v5, v16

    .line 228
    .line 229
    const/16 v16, 0xd

    .line 230
    .line 231
    aput-object v8, v5, v16

    .line 232
    .line 233
    sput-object v5, Lcom/amazonaws/services/kms/model/GrantOperation;->$VALUES:[Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 234
    .line 235
    new-instance v5, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    sput-object v5, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    .line 241
    .line 242
    move-object/from16 v16, v2

    .line 243
    .line 244
    move-object/from16 v2, v33

    .line 245
    .line 246
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-object/from16 v0, v31

    .line 250
    .line 251
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-object/from16 v0, v29

    .line 255
    .line 256
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-object/from16 v0, v27

    .line 260
    .line 261
    invoke-interface {v5, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-object/from16 v0, v25

    .line 265
    .line 266
    invoke-interface {v5, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-object/from16 v0, v23

    .line 270
    .line 271
    invoke-interface {v5, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-object/from16 v0, v21

    .line 275
    .line 276
    invoke-interface {v5, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-object/from16 v0, v22

    .line 280
    .line 281
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-object/from16 v0, v24

    .line 285
    .line 286
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-object/from16 v0, v26

    .line 290
    .line 291
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-object/from16 v0, v28

    .line 295
    .line 296
    invoke-interface {v5, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-object/from16 v0, v30

    .line 300
    .line 301
    invoke-interface {v5, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-object/from16 v0, v32

    .line 305
    .line 306
    invoke-interface {v5, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-object/from16 v0, v16

    .line 310
    .line 311
    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
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
    iput-object p3, p0, Lcom/amazonaws/services/kms/model/GrantOperation;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantOperation;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Cannot create enum from "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, " value!"

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v0, "Value cannot be null or empty!"

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantOperation;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/GrantOperation;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->$VALUES:[Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/GrantOperation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantOperation;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
