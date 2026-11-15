.class Lhy/c$a;
.super Lhy/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:[[B


# direct methods
.method constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lhy/c;-><init>()V

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
    new-array v3, v0, [B

    .line 16
    .line 17
    fill-array-data v3, :array_2

    .line 18
    .line 19
    .line 20
    new-array v4, v0, [B

    .line 21
    .line 22
    fill-array-data v4, :array_3

    .line 23
    .line 24
    .line 25
    new-array v5, v0, [B

    .line 26
    .line 27
    fill-array-data v5, :array_4

    .line 28
    .line 29
    .line 30
    new-array v6, v0, [B

    .line 31
    .line 32
    fill-array-data v6, :array_5

    .line 33
    .line 34
    .line 35
    new-array v7, v0, [B

    .line 36
    .line 37
    fill-array-data v7, :array_6

    .line 38
    .line 39
    .line 40
    new-array v8, v0, [B

    .line 41
    .line 42
    fill-array-data v8, :array_7

    .line 43
    .line 44
    .line 45
    new-array v9, v0, [B

    .line 46
    .line 47
    fill-array-data v9, :array_8

    .line 48
    .line 49
    .line 50
    const/4 v10, 0x2

    .line 51
    new-array v11, v10, [B

    .line 52
    .line 53
    fill-array-data v11, :array_9

    .line 54
    .line 55
    .line 56
    new-array v12, v10, [B

    .line 57
    .line 58
    fill-array-data v12, :array_a

    .line 59
    .line 60
    .line 61
    const/16 v13, 0xb

    .line 62
    .line 63
    new-array v13, v13, [[B

    .line 64
    .line 65
    const/4 v14, 0x0

    .line 66
    aput-object v1, v13, v14

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    aput-object v2, v13, v1

    .line 70
    .line 71
    aput-object v3, v13, v10

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    aput-object v4, v13, v1

    .line 75
    .line 76
    aput-object v5, v13, v0

    .line 77
    .line 78
    const/4 v0, 0x5

    .line 79
    aput-object v6, v13, v0

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    aput-object v7, v13, v0

    .line 83
    .line 84
    const/4 v0, 0x7

    .line 85
    aput-object v8, v13, v0

    .line 86
    .line 87
    const/16 v0, 0x8

    .line 88
    .line 89
    aput-object v9, v13, v0

    .line 90
    .line 91
    const/16 v0, 0x9

    .line 92
    .line 93
    aput-object v11, v13, v0

    .line 94
    .line 95
    const/16 v0, 0xa

    .line 96
    .line 97
    aput-object v12, v13, v0

    .line 98
    .line 99
    iput-object v13, p0, Lhy/c$a;->a:[[B

    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x41t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x47t
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_2
    .array-data 1
        0x1bt
        0x24t
        0x2at
        0x48t
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_3
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x45t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_4
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x49t
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_5
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4at
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_6
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4bt
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_7
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4ct
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_8
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4dt
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_9
    .array-data 1
        0x1bt
        0x4et
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    nop

    .line 163
    :array_a
    .array-data 1
        0x1bt
        0x4ft
    .end array-data
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ISO-2022-CN"

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
    iget-object v2, p0, Lhy/c$a;->a:[[B

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
