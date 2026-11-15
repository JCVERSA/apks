.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "Lkotlin/time/Instant;",
        "instant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "a",
        "(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .locals 23

    .line 1
    const-string v0, "instant"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/32 v4, 0x15180

    .line 13
    .line 14
    .line 15
    div-long v6, v2, v4

    .line 16
    .line 17
    xor-long v8, v2, v4

    .line 18
    .line 19
    const-wide/16 v10, 0x0

    .line 20
    .line 21
    cmp-long v0, v8, v10

    .line 22
    .line 23
    const-wide/16 v8, -0x1

    .line 24
    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    mul-long v12, v6, v4

    .line 28
    .line 29
    cmp-long v0, v12, v2

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    add-long/2addr v6, v8

    .line 34
    :cond_0
    rem-long/2addr v2, v4

    .line 35
    xor-long v12, v2, v4

    .line 36
    .line 37
    neg-long v14, v2

    .line 38
    or-long/2addr v14, v2

    .line 39
    and-long/2addr v12, v14

    .line 40
    const/16 v0, 0x3f

    .line 41
    .line 42
    shr-long/2addr v12, v0

    .line 43
    and-long/2addr v4, v12

    .line 44
    add-long/2addr v2, v4

    .line 45
    long-to-int v0, v2

    .line 46
    const v2, 0xafaa8

    .line 47
    .line 48
    .line 49
    int-to-long v2, v2

    .line 50
    add-long/2addr v6, v2

    .line 51
    const/16 v2, 0x3c

    .line 52
    .line 53
    int-to-long v2, v2

    .line 54
    sub-long/2addr v6, v2

    .line 55
    cmp-long v2, v6, v10

    .line 56
    .line 57
    const/16 v3, 0x190

    .line 58
    .line 59
    const v4, 0x23ab1

    .line 60
    .line 61
    .line 62
    if-gez v2, :cond_1

    .line 63
    .line 64
    const-wide/16 v12, 0x1

    .line 65
    .line 66
    add-long v14, v6, v12

    .line 67
    .line 68
    int-to-long v8, v4

    .line 69
    div-long/2addr v14, v8

    .line 70
    sub-long/2addr v14, v12

    .line 71
    int-to-long v12, v3

    .line 72
    mul-long/2addr v12, v14

    .line 73
    neg-long v14, v14

    .line 74
    mul-long/2addr v14, v8

    .line 75
    add-long/2addr v6, v14

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move-wide v12, v10

    .line 78
    :goto_0
    int-to-long v2, v3

    .line 79
    mul-long v8, v2, v6

    .line 80
    .line 81
    const/16 v5, 0x24f

    .line 82
    .line 83
    int-to-long v14, v5

    .line 84
    add-long/2addr v8, v14

    .line 85
    int-to-long v4, v4

    .line 86
    div-long/2addr v8, v4

    .line 87
    const/16 v4, 0x16d

    .line 88
    .line 89
    int-to-long v4, v4

    .line 90
    mul-long v14, v4, v8

    .line 91
    .line 92
    const/4 v10, 0x4

    .line 93
    int-to-long v10, v10

    .line 94
    div-long v20, v8, v10

    .line 95
    .line 96
    add-long v14, v14, v20

    .line 97
    .line 98
    const/16 v1, 0x64

    .line 99
    .line 100
    move/from16 v20, v0

    .line 101
    .line 102
    int-to-long v0, v1

    .line 103
    div-long v21, v8, v0

    .line 104
    .line 105
    sub-long v14, v14, v21

    .line 106
    .line 107
    div-long v21, v8, v2

    .line 108
    .line 109
    add-long v14, v14, v21

    .line 110
    .line 111
    sub-long v14, v6, v14

    .line 112
    .line 113
    const-wide/16 v18, 0x0

    .line 114
    .line 115
    cmp-long v18, v14, v18

    .line 116
    .line 117
    if-gez v18, :cond_2

    .line 118
    .line 119
    const-wide/16 v16, -0x1

    .line 120
    .line 121
    add-long v8, v8, v16

    .line 122
    .line 123
    mul-long/2addr v4, v8

    .line 124
    div-long v10, v8, v10

    .line 125
    .line 126
    add-long/2addr v4, v10

    .line 127
    div-long v0, v8, v0

    .line 128
    .line 129
    sub-long/2addr v4, v0

    .line 130
    div-long v0, v8, v2

    .line 131
    .line 132
    add-long/2addr v4, v0

    .line 133
    sub-long v14, v6, v4

    .line 134
    .line 135
    :cond_2
    add-long/2addr v8, v12

    .line 136
    long-to-int v0, v14

    .line 137
    mul-int/lit8 v1, v0, 0x5

    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x2

    .line 140
    .line 141
    div-int/lit16 v1, v1, 0x99

    .line 142
    .line 143
    add-int/lit8 v2, v1, 0x2

    .line 144
    .line 145
    rem-int/lit8 v2, v2, 0xc

    .line 146
    .line 147
    add-int/lit8 v12, v2, 0x1

    .line 148
    .line 149
    mul-int/lit16 v2, v1, 0x132

    .line 150
    .line 151
    add-int/lit8 v2, v2, 0x5

    .line 152
    .line 153
    div-int/lit8 v2, v2, 0xa

    .line 154
    .line 155
    sub-int/2addr v0, v2

    .line 156
    add-int/lit8 v13, v0, 0x1

    .line 157
    .line 158
    div-int/lit8 v1, v1, 0xa

    .line 159
    .line 160
    int-to-long v0, v1

    .line 161
    add-long/2addr v8, v0

    .line 162
    long-to-int v11, v8

    .line 163
    move/from16 v0, v20

    .line 164
    .line 165
    div-int/lit16 v14, v0, 0xe10

    .line 166
    .line 167
    mul-int/lit16 v1, v14, 0xe10

    .line 168
    .line 169
    sub-int/2addr v0, v1

    .line 170
    div-int/lit8 v15, v0, 0x3c

    .line 171
    .line 172
    mul-int/lit8 v1, v15, 0x3c

    .line 173
    .line 174
    sub-int v16, v0, v1

    .line 175
    .line 176
    new-instance v0, Lkotlin/time/UnboundLocalDateTime;

    .line 177
    .line 178
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    move-object v10, v0

    .line 183
    invoke-direct/range {v10 .. v17}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    .line 184
    .line 185
    .line 186
    return-object v0
.end method
