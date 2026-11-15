.class public abstract Ltu/j;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:[B

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "#PART#"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ltu/j;->a:[B

    .line 15
    .line 16
    const-string v0, "rsa_public_key.pem"

    .line 17
    .line 18
    sput-object v0, Ltu/j;->b:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public static a([B[B)[B
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "data"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "publicKey"

    .line 11
    .line 12
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    array-length v4, v0

    .line 16
    const-string v5, "doFinal(...)"

    .line 17
    .line 18
    const-string v6, "RSA/ECB/PKCS1Padding"

    .line 19
    .line 20
    const-string v7, "RSA"

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    const/16 v9, 0xf5

    .line 24
    .line 25
    if-gt v4, v9, :cond_0

    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 36
    .line 37
    .line 38
    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v8, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    new-array v11, v9, [B

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    const/4 v14, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    :goto_0
    if-ge v13, v4, :cond_6

    .line 72
    .line 73
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v12, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 77
    .line 78
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v12, v11

    .line 82
    check-cast v12, [B

    .line 83
    .line 84
    aget-byte v16, v0, v13

    .line 85
    .line 86
    aput-byte v16, v12, v14

    .line 87
    .line 88
    add-int/2addr v14, v8

    .line 89
    if-eq v14, v9, :cond_2

    .line 90
    .line 91
    add-int/lit8 v12, v4, -0x1

    .line 92
    .line 93
    if-ne v13, v12, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move/from16 v18, v9

    .line 97
    .line 98
    move v9, v8

    .line 99
    move-object v8, v11

    .line 100
    move/from16 v11, v18

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 104
    .line 105
    if-eq v15, v8, :cond_3

    .line 106
    .line 107
    sget-object v12, Ltu/j;->a:[B

    .line 108
    .line 109
    array-length v14, v12

    .line 110
    const/4 v9, 0x0

    .line 111
    :goto_2
    if-ge v9, v14, :cond_3

    .line 112
    .line 113
    aget-byte v17, v12, v9

    .line 114
    .line 115
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    add-int/lit8 v9, v9, 0x1

    .line 123
    .line 124
    const/4 v8, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    .line 136
    .line 137
    invoke-direct {v8, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 138
    .line 139
    .line 140
    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    const/4 v12, 0x1

    .line 153
    invoke-virtual {v9, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v11}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    array-length v9, v8

    .line 164
    const/4 v11, 0x0

    .line 165
    :goto_3
    if-ge v11, v9, :cond_4

    .line 166
    .line 167
    aget-byte v12, v8, v11

    .line 168
    .line 169
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    add-int/lit8 v11, v11, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    add-int/lit8 v8, v4, -0x1

    .line 180
    .line 181
    if-ne v13, v8, :cond_5

    .line 182
    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v9, 0x1

    .line 185
    const/16 v11, 0xf5

    .line 186
    .line 187
    :goto_4
    const/4 v14, 0x0

    .line 188
    goto :goto_5

    .line 189
    :cond_5
    sub-int v8, v4, v13

    .line 190
    .line 191
    const/4 v9, 0x1

    .line 192
    sub-int/2addr v8, v9

    .line 193
    const/16 v11, 0xf5

    .line 194
    .line 195
    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    new-array v8, v8, [B

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 203
    .line 204
    move/from16 v18, v11

    .line 205
    .line 206
    move-object v11, v8

    .line 207
    move v8, v9

    .line 208
    move/from16 v9, v18

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    new-array v0, v0, [B

    .line 217
    .line 218
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const/4 v12, 0x0

    .line 223
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_7

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Ljava/lang/Byte;

    .line 234
    .line 235
    add-int/lit8 v3, v12, 0x1

    .line 236
    .line 237
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    aput-byte v2, v0, v12

    .line 245
    .line 246
    move v12, v3

    .line 247
    goto :goto_6

    .line 248
    :cond_7
    return-object v0
.end method
