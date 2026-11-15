.class public Lcom/mbridge/msdk/setting/net/c;
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


# virtual methods
.method public addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "platform"

    .line 5
    .line 6
    const-string v0, "1"

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "os_version"

    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "package_name"

    .line 25
    .line 26
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->B(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "app_version_name"

    .line 36
    .line 37
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->A(Landroid/content/Context;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ""

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "app_version_code"

    .line 64
    .line 65
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v1, "orientation"

    .line 90
    .line 91
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->n()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v1, "model"

    .line 99
    .line 100
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->s()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v1, "brand"

    .line 108
    .line 109
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->c()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v1, "gaid2"

    .line 117
    .line 118
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "network_type"

    .line 143
    .line 144
    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v0, "network_str"

    .line 154
    .line 155
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v0, "language"

    .line 165
    .line 166
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->w()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v0, "timezone"

    .line 174
    .line 175
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->i()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v0, "useragent"

    .line 183
    .line 184
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string p1, "sdk_version"

    .line 188
    .line 189
    const-string v0, "MAL_16.9.71"

    .line 190
    .line 191
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->n(Landroid/content/Context;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v0, "x"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->m(Landroid/content/Context;)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    const-string v0, "screen_size"

    .line 227
    .line 228
    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    invoke-static {p1, p2}, Lcom/mbridge/msdk/setting/net/d;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 234
    .line 235
    .line 236
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/f;->h(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method
