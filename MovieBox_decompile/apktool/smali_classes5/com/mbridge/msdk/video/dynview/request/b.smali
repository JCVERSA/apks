.class public Lcom/mbridge/msdk/video/dynview/request/b;
.super Lcom/mbridge/msdk/foundation/same/net/wrapper/c;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V
    .locals 4

    .line 1
    const-string v0, "platform"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "os_version"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "package_name"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->B(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "app_version_name"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->A(Landroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "app_version_code"

    .line 61
    .line 62
    invoke-virtual {p1, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v2, "orientation"

    .line 87
    .line 88
    invoke-virtual {p1, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->n()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "model"

    .line 96
    .line 97
    invoke-virtual {p1, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->s()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v2, "brand"

    .line 105
    .line 106
    invoke-virtual {p1, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v0, "gaid"

    .line 110
    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->c()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v2, "gaid2"

    .line 119
    .line 120
    invoke-virtual {p1, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, "network_type"

    .line 145
    .line 146
    invoke-virtual {p1, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "network_str"

    .line 171
    .line 172
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "language"

    .line 182
    .line 183
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->w()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const-string v1, "timezone"

    .line 191
    .line 192
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->i()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v1, "useragent"

    .line 200
    .line 201
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v0, "sdk_version"

    .line 205
    .line 206
    const-string v1, "MAL_16.9.71"

    .line 207
    .line 208
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/f;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/f;->b(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/f;->j(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method


# virtual methods
.method public addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/video/dynview/request/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
