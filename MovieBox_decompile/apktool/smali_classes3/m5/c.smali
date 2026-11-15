.class public Lm5/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "hh:mm:ss,ms"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    const v3, 0x36ee80

    .line 14
    .line 15
    .line 16
    const v4, 0xea60

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x2

    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/16 v2, 0x9

    .line 50
    .line 51
    const/16 v5, 0xc

    .line 52
    .line 53
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    mul-int/lit16 v1, v1, 0x3e8

    .line 62
    .line 63
    add-int/2addr p2, v1

    .line 64
    mul-int/2addr v0, v4

    .line 65
    add-int/2addr p2, v0

    .line 66
    mul-int/2addr p1, v3

    .line 67
    add-int/2addr p2, p1

    .line 68
    iput p2, p0, Lm5/c;->a:I

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_0
    const-string v0, "h:mm:ss.cs"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const-string v8, ":"

    .line 79
    .line 80
    const/4 v9, 0x1

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    array-length v0, p1

    .line 88
    const/16 v8, 0xa

    .line 89
    .line 90
    const/4 v10, 0x4

    .line 91
    if-ne v0, v10, :cond_1

    .line 92
    .line 93
    aget-object p2, p1, v7

    .line 94
    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    aget-object v0, p1, v9

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    aget-object v1, p1, v6

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    aget-object p1, p1, v5

    .line 112
    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/4 v5, 0x7

    .line 135
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {p2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    move v1, v2

    .line 152
    move v11, p2

    .line 153
    move p2, p1

    .line 154
    move p1, v11

    .line 155
    :goto_0
    mul-int/2addr p1, v8

    .line 156
    mul-int/lit16 v1, v1, 0x3e8

    .line 157
    .line 158
    add-int/2addr p1, v1

    .line 159
    mul-int/2addr v0, v4

    .line 160
    add-int/2addr p1, v0

    .line 161
    mul-int/2addr p2, v3

    .line 162
    add-int/2addr p1, p2

    .line 163
    iput p1, p0, Lm5/c;->a:I

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    const-string v0, "h:m:s:f/fps"

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    const-string p1, "/"

    .line 175
    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    aget-object p2, p1, v9

    .line 181
    .line 182
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    aget-object p1, p1, v7

    .line 187
    .line 188
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    aget-object v0, p1, v7

    .line 193
    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    aget-object v1, p1, v9

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    aget-object v2, p1, v6

    .line 205
    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    aget-object p1, p1, v5

    .line 211
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    mul-int/lit16 p1, p1, 0x3e8

    .line 217
    .line 218
    int-to-float p1, p1

    .line 219
    div-float/2addr p1, p2

    .line 220
    float-to-int p1, p1

    .line 221
    mul-int/lit16 v2, v2, 0x3e8

    .line 222
    .line 223
    add-int/2addr p1, v2

    .line 224
    mul-int/2addr v1, v4

    .line 225
    add-int/2addr p1, v1

    .line 226
    mul-int/2addr v0, v3

    .line 227
    add-int/2addr p1, v0

    .line 228
    iput p1, p0, Lm5/c;->a:I

    .line 229
    .line 230
    :cond_3
    :goto_1
    return-void
.end method
