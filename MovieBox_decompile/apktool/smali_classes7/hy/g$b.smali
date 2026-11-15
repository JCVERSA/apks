.class Lhy/g$b;
.super Lhy/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field protected static a:[B

.field private static b:[Lhy/g$y;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x100

    .line 3
    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v1, Lhy/g$b;->a:[B

    .line 10
    .line 11
    new-instance v1, Lhy/g$y;

    .line 12
    .line 13
    const/16 v2, 0x40

    .line 14
    .line 15
    new-array v3, v2, [I

    .line 16
    .line 17
    fill-array-data v3, :array_1

    .line 18
    .line 19
    .line 20
    const-string v4, "cs"

    .line 21
    .line 22
    invoke-direct {v1, v4, v3}, Lhy/g$y;-><init>(Ljava/lang/String;[I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lhy/g$y;

    .line 26
    .line 27
    new-array v4, v2, [I

    .line 28
    .line 29
    fill-array-data v4, :array_2

    .line 30
    .line 31
    .line 32
    const-string v5, "hu"

    .line 33
    .line 34
    invoke-direct {v3, v5, v4}, Lhy/g$y;-><init>(Ljava/lang/String;[I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lhy/g$y;

    .line 38
    .line 39
    new-array v5, v2, [I

    .line 40
    .line 41
    fill-array-data v5, :array_3

    .line 42
    .line 43
    .line 44
    const-string v6, "pl"

    .line 45
    .line 46
    invoke-direct {v4, v6, v5}, Lhy/g$y;-><init>(Ljava/lang/String;[I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lhy/g$y;

    .line 50
    .line 51
    new-array v2, v2, [I

    .line 52
    .line 53
    fill-array-data v2, :array_4

    .line 54
    .line 55
    .line 56
    const-string v6, "ro"

    .line 57
    .line 58
    invoke-direct {v5, v6, v2}, Lhy/g$y;-><init>(Ljava/lang/String;[I)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x4

    .line 62
    new-array v2, v2, [Lhy/g$y;

    .line 63
    .line 64
    aput-object v1, v2, v0

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aput-object v3, v2, v0

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    aput-object v4, v2, v0

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    aput-object v5, v2, v0

    .line 74
    .line 75
    sput-object v2, Lhy/g$b;->b:[Lhy/g$y;

    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x0t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x4ft
        0x20t
        -0x4dt
        0x20t
        -0x4bt
        -0x4at
        0x20t
        0x20t
        -0x47t
        -0x46t
        -0x45t
        -0x44t
        0x20t
        -0x42t
        -0x41t
        0x20t
        -0x4ft
        0x20t
        -0x4dt
        0x20t
        -0x4bt
        -0x4at
        -0x49t
        0x20t
        -0x47t
        -0x46t
        -0x45t
        -0x44t
        0x20t
        -0x42t
        -0x41t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        0x20t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x21t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        0x20t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        0x20t
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    :array_1
    .array-data 4
        0x206120
        0x206279
        0x20646f
        0x206a65
        0x206e61
        0x206e65
        0x206f20
        0x206f64
        0x20706f
        0x207072
        0x2070f8
        0x20726f
        0x207365
        0x20736f
        0x207374
        0x20746f
        0x207620
        0x207679
        0x207a61
        0x612070
        0x636520
        0x636820
        0x652070
        0x652073
        0x652076
        0x656d20
        0x656eed
        0x686f20
        0x686f64
        0x697374
        0x6a6520
        0x6b7465
        0x6c6520
        0x6c6920
        0x6e6120
        0x6ee920
        0x6eec20
        0x6eed20
        0x6f2070
        0x6f646e
        0x6f6a69
        0x6f7374
        0x6f7520
        0x6f7661
        0x706f64
        0x706f6a
        0x70726f
        0x70f865
        0x736520
        0x736f75
        0x737461
        0x737469
        0x73746e
        0x746572
        0x746eed
        0x746f20
        0x752070
        0xbe6520
        0xe16eed
        0xe9686f
        0xed2070
        0xed2073
        0xed6d20
        0xf86564
    .end array-data

    :array_2
    .array-data 4
        0x206120
        0x20617a
        0x206265
        0x206567
        0x20656c
        0x206665
        0x206861
        0x20686f
        0x206973
        0x206b65
        0x206b69
        0x206bf6
        0x206c65
        0x206d61
        0x206d65
        0x206d69
        0x206e65
        0x20737a
        0x207465
        0x20e973
        0x612061
        0x61206b
        0x61206d
        0x612073
        0x616b20
        0x616e20
        0x617a20
        0x62616e
        0x62656e
        0x656779
        0x656b20
        0x656c20
        0x656c65
        0x656d20
        0x656e20
        0x657265
        0x657420
        0x657465
        0x657474
        0x677920
        0x686f67
        0x696e74
        0x697320
        0x6b2061
        0x6bf67a
        0x6d6567
        0x6d696e
        0x6e2061
        0x6e616b
        0x6e656b
        0x6e656d
        0x6e7420
        0x6f6779
        0x732061
        0x737a65
        0x737a74
        0x737ae1
        0x73e967
        0x742061
        0x747420
        0x74e173
        0x7a6572
        0xe16e20
        0xe97320
    .end array-data

    :array_3
    .array-data 4
        0x20637a
        0x20646f
        0x206920
        0x206a65
        0x206b6f
        0x206d61
        0x206d69
        0x206e61
        0x206e69
        0x206f64
        0x20706f
        0x207072
        0x207369
        0x207720
        0x207769
        0x207779
        0x207a20
        0x207a61
        0x612070
        0x612077
        0x616e69
        0x636820
        0x637a65
        0x637a79
        0x646f20
        0x647a69
        0x652070
        0x652073
        0x652077
        0x65207a
        0x65676f
        0x656a20
        0x656d20
        0x656e69
        0x676f20
        0x696120
        0x696520
        0x69656a
        0x6b6120
        0x6b6920
        0x6b6965
        0x6d6965
        0x6e6120
        0x6e6961
        0x6e6965
        0x6f2070
        0x6f7761
        0x6f7769
        0x706f6c
        0x707261
        0x70726f
        0x70727a
        0x727a65
        0x727a79
        0x7369ea
        0x736b69
        0x737461
        0x776965
        0x796368
        0x796d20
        0x7a6520
        0x7a6965
        0x7a7920
        0xf37720
    .end array-data

    :array_4
    .array-data 4
        0x206120
        0x206163
        0x206361
        0x206365
        0x20636f
        0x206375
        0x206465
        0x206469
        0x206c61
        0x206d61
        0x207065
        0x207072
        0x207365
        0x2073e3
        0x20756e
        0x20ba69
        0x20ee6e
        0x612063
        0x612064
        0x617265
        0x617420
        0x617465
        0x617520
        0x636172
        0x636f6e
        0x637520
        0x63e320
        0x646520
        0x652061    # 9.287E-39f
        0x652063
        0x652064
        0x652070
        0x652073
        0x656120
        0x656920
        0x656c65
        0x656e74
        0x657374
        0x692061
        0x692063
        0x692064
        0x692070
        0x696520
        0x696920
        0x696e20
        0x6c6120
        0x6c6520
        0x6c6f72
        0x6c7569
        0x6e6520
        0x6e7472
        0x6f7220
        0x70656e
        0x726520
        0x726561
        0x727520
        0x73e320
        0x746520
        0x747275
        0x74e320
        0x756920
        0x756c20
        0xba6920
        0xee6e20
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ISO-8859-2"

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lhy/a;)Lhy/b;
    .locals 10

    .line 1
    iget-boolean v0, p1, Lhy/a;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "windows-1250"

    .line 6
    .line 7
    :goto_0
    move-object v5, v0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-string v0, "ISO-8859-2"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    sget-object v0, Lhy/g$b;->b:[Lhy/g$y;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v7, v2

    .line 19
    move v6, v3

    .line 20
    :goto_2
    if-ge v4, v1, :cond_2

    .line 21
    .line 22
    aget-object v3, v0, v4

    .line 23
    .line 24
    iget-object v8, v3, Lhy/g$y;->a:[I

    .line 25
    .line 26
    sget-object v9, Lhy/g$b;->a:[B

    .line 27
    .line 28
    invoke-virtual {p0, p1, v8, v9}, Lhy/g;->d(Lhy/a;[I[B)I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-le v8, v6, :cond_1

    .line 33
    .line 34
    iget-object v7, v3, Lhy/g$y;->b:Ljava/lang/String;

    .line 35
    .line 36
    move v6, v8

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    if-gtz v6, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    new-instance v0, Lhy/b;

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    move-object v2, p1

    .line 47
    move-object v3, p0

    .line 48
    move v4, v6

    .line 49
    move-object v6, v7

    .line 50
    invoke-direct/range {v1 .. v6}, Lhy/b;-><init>(Lhy/a;Lhy/h;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v2, v0

    .line 54
    :goto_3
    return-object v2
.end method
