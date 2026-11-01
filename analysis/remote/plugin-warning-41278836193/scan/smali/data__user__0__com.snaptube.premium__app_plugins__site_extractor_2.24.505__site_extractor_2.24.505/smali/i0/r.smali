.class public final Li0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:[B


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:[B

.field private c:Ljava/security/Key;

.field private d:Ljava/security/Key;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Li0/r;->f:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "AES/CTR/NoPadding"

    .line 5
    .line 6
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Li0/r;->a:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :catch_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_2
    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Li0/d;->c(Z)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    iput v1, p0, Li0/r;->e:I

    .line 30
    .line 31
    array-length v2, p1

    .line 32
    const/4 v3, 0x0

    .line 33
    const/16 v4, 0x10

    .line 34
    .line 35
    if-gt v2, v4, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :cond_0
    const-string v2, "projectKey must contain 16-byte key"

    .line 39
    .line 40
    invoke-static {v0, v2}, Li0/d;->d(ZLjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    array-length v0, p1

    .line 44
    sub-int/2addr v0, v4

    .line 45
    new-array v2, v4, [B

    .line 46
    .line 47
    new-array v5, v0, [B

    .line 48
    .line 49
    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v4, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 56
    .line 57
    const-string v6, "AES"

    .line 58
    .line 59
    invoke-direct {v3, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Li0/r;->c:Ljava/security/Key;

    .line 63
    .line 64
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 65
    .line 66
    const-string v6, "HmacSHA1"

    .line 67
    .line 68
    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object v3, p0, Li0/r;->d:Ljava/security/Key;

    .line 72
    .line 73
    array-length p1, p1

    .line 74
    add-int/2addr p1, v4

    .line 75
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-wide/16 v3, 0x10

    .line 80
    .line 81
    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    int-to-long v2, v0

    .line 88
    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Li0/m;->a([B)[B

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1, v1}, Li0/g;->b([BI)[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Li0/r;->b:[B

    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v2, p1

    .line 8
    const/16 v3, 0x11

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-le v2, v3, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    const-string v3, "Encrypted string is invalid."

    .line 17
    .line 18
    invoke-static {v2, v3}, Li0/d;->e(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    aget-byte v2, p1, v1

    .line 22
    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-static {p1, v4, v2}, Li0/g;->c([BII)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Li0/r;->b:[B

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    array-length v2, p1

    .line 39
    iget v3, p0, Li0/r;->e:I

    .line 40
    .line 41
    sub-int/2addr v2, v3

    .line 42
    invoke-static {p1, v1, v2}, Li0/g;->c([BII)[B

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget v5, p0, Li0/r;->e:I

    .line 47
    .line 48
    invoke-static {p1, v2, v5}, Li0/g;->c([BII)[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v5, p0, Li0/r;->d:Ljava/security/Key;

    .line 53
    .line 54
    new-array v6, v0, [[B

    .line 55
    .line 56
    sget-object v7, Li0/r;->f:[B

    .line 57
    .line 58
    aput-object v7, v6, v1

    .line 59
    .line 60
    aput-object v3, v6, v4

    .line 61
    .line 62
    invoke-static {v6}, Li0/g;->d([[B)[B

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v5, v1}, Li0/o;->a(Ljava/security/Key;[B)[B

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget v3, p0, Li0/r;->e:I

    .line 71
    .line 72
    invoke-static {v1, v3}, Li0/g;->b([BI)[B

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    const/4 v1, 0x5

    .line 83
    const/16 v2, 0x8

    .line 84
    .line 85
    invoke-static {p1, v1, v2}, Li0/g;->c([BII)[B

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Li0/g;->a([B)[B

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    array-length v2, p1

    .line 94
    const/16 v3, 0xd

    .line 95
    .line 96
    sub-int/2addr v2, v3

    .line 97
    iget v4, p0, Li0/r;->e:I

    .line 98
    .line 99
    sub-int/2addr v2, v4

    .line 100
    invoke-static {p1, v3, v2}, Li0/g;->c([BII)[B

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Li0/g;->a([B)[B

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :try_start_0
    iget-object v3, p0, Li0/r;->a:Ljavax/crypto/Cipher;

    .line 109
    .line 110
    monitor-enter v3
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 111
    :try_start_1
    iget-object v4, p0, Li0/r;->a:Ljavax/crypto/Cipher;

    .line 112
    .line 113
    iget-object v5, p0, Li0/r;->c:Ljava/security/Key;

    .line 114
    .line 115
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 116
    .line 117
    invoke-direct {v6, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v0, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Li0/r;->a:Ljavax/crypto/Cipher;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1, v2}, Li0/g;->b([BI)[B

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    monitor-exit v3

    .line 134
    return-object p1

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 138
    :catch_0
    move-exception p1

    .line 139
    goto :goto_1

    .line 140
    :catch_1
    move-exception p1

    .line 141
    goto :goto_2

    .line 142
    :catch_2
    move-exception p1

    .line 143
    goto :goto_3

    .line 144
    :catch_3
    new-instance p1, Lorg/json/JSONException;

    .line 145
    .line 146
    const-string v0, "Bad input padding."

    .line 147
    .line 148
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 153
    .line 154
    const-string v1, "Unexpected IllegalBlockSizeException."

    .line 155
    .line 156
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 161
    .line 162
    const-string v1, "Fatal error: initialization vector is the wrong size."

    .line 163
    .line 164
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 169
    .line 170
    const-string v1, "Fatal error: project encryption key invalid."

    .line 171
    .line 172
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    .line 177
    .line 178
    const-string v0, "HMAC signature does not match."

    .line 179
    .line 180
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    .line 185
    .line 186
    const-string v0, "Project key signature does not match."

    .line 187
    .line 188
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_3
    new-instance p1, Lorg/json/JSONException;

    .line 193
    .line 194
    const-string v0, "Bad \'type\' in encoded string."

    .line 195
    .line 196
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1
.end method
