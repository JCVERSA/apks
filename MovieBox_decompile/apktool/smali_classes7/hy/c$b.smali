.class Lhy/c$b;
.super Lhy/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:[[B


# direct methods
.method constructor <init>()V
    .locals 16

    .line 1
    invoke-direct/range {p0 .. p0}, Lhy/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v4, v3, [B

    .line 17
    .line 18
    fill-array-data v4, :array_2

    .line 19
    .line 20
    .line 21
    new-array v5, v3, [B

    .line 22
    .line 23
    fill-array-data v5, :array_3

    .line 24
    .line 25
    .line 26
    new-array v6, v3, [B

    .line 27
    .line 28
    fill-array-data v6, :array_4

    .line 29
    .line 30
    .line 31
    new-array v7, v3, [B

    .line 32
    .line 33
    fill-array-data v7, :array_5

    .line 34
    .line 35
    .line 36
    new-array v8, v3, [B

    .line 37
    .line 38
    fill-array-data v8, :array_6

    .line 39
    .line 40
    .line 41
    new-array v9, v3, [B

    .line 42
    .line 43
    fill-array-data v9, :array_7

    .line 44
    .line 45
    .line 46
    new-array v10, v3, [B

    .line 47
    .line 48
    fill-array-data v10, :array_8

    .line 49
    .line 50
    .line 51
    new-array v11, v3, [B

    .line 52
    .line 53
    fill-array-data v11, :array_9

    .line 54
    .line 55
    .line 56
    new-array v12, v3, [B

    .line 57
    .line 58
    fill-array-data v12, :array_a

    .line 59
    .line 60
    .line 61
    new-array v13, v3, [B

    .line 62
    .line 63
    fill-array-data v13, :array_b

    .line 64
    .line 65
    .line 66
    const/16 v14, 0xc

    .line 67
    .line 68
    new-array v14, v14, [[B

    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    aput-object v1, v14, v15

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    aput-object v2, v14, v1

    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    aput-object v4, v14, v1

    .line 78
    .line 79
    aput-object v5, v14, v3

    .line 80
    .line 81
    aput-object v6, v14, v0

    .line 82
    .line 83
    const/4 v0, 0x5

    .line 84
    aput-object v7, v14, v0

    .line 85
    .line 86
    const/4 v0, 0x6

    .line 87
    aput-object v8, v14, v0

    .line 88
    .line 89
    const/4 v0, 0x7

    .line 90
    aput-object v9, v14, v0

    .line 91
    .line 92
    const/16 v0, 0x8

    .line 93
    .line 94
    aput-object v10, v14, v0

    .line 95
    .line 96
    const/16 v0, 0x9

    .line 97
    .line 98
    aput-object v11, v14, v0

    .line 99
    .line 100
    const/16 v0, 0xa

    .line 101
    .line 102
    aput-object v12, v14, v0

    .line 103
    .line 104
    const/16 v0, 0xb

    .line 105
    .line 106
    aput-object v13, v14, v0

    .line 107
    .line 108
    move-object/from16 v0, p0

    .line 109
    .line 110
    iput-object v14, v0, Lhy/c$b;->a:[[B

    .line 111
    .line 112
    return-void

    .line 113
    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x43t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x44t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 1
        0x1bt
        0x24t
        0x40t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_3
    .array-data 1
        0x1bt
        0x24t
        0x41t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_4
    .array-data 1
        0x1bt
        0x24t
        0x42t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_5
    .array-data 1
        0x1bt
        0x26t
        0x40t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_6
    .array-data 1
        0x1bt
        0x28t
        0x42t
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_7
    .array-data 1
        0x1bt
        0x28t
        0x48t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_8
    .array-data 1
        0x1bt
        0x28t
        0x49t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_9
    .array-data 1
        0x1bt
        0x28t
        0x4at
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_a
    .array-data 1
        0x1bt
        0x2et
        0x41t
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_b
    .array-data 1
        0x1bt
        0x2et
        0x46t
    .end array-data
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ISO-2022-JP"

    .line 2
    .line 3
    return-object v0
.end method

.method c(Lhy/a;)Lhy/b;
    .locals 3

    .line 1
    iget-object v0, p1, Lhy/a;->a:[B

    .line 2
    .line 3
    iget v1, p1, Lhy/a;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lhy/c$b;->a:[[B

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lhy/c;->d([BI[[B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lhy/b;

    .line 16
    .line 17
    invoke-direct {v1, p1, p0, v0}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 18
    .line 19
    .line 20
    move-object p1, v1

    .line 21
    :goto_0
    return-object p1
.end method
