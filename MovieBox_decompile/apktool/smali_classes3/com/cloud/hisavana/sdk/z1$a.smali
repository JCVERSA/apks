.class Lcom/cloud/hisavana/sdk/z1$a;
.super Landroidx/room/h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/z1;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/z1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/z1;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/z1$a;->d:Lcom/cloud/hisavana/sdk/z1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/h;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `default_ad_room` (`ad_creative_id`,`codeSeatId`,`ad_type`,`price`,`ad_request_ver`,`displayed_times`,`displayed_date`,`start_date`,`end_date`,`display_max_times`,`file_path`,`default_country_white`,`default_country_black`,`default_brand_white`,`default_brand_black`,`ad_bean`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic j(Lz3/h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/cloud/hisavana/sdk/c2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/z1$a;->n(Lz3/h;Lcom/cloud/hisavana/sdk/c2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected n(Lz3/h;Lcom/cloud/hisavana/sdk/c2;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->d()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v0, v0

    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->o()Ljava/lang/Double;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x4

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->o()Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-interface {p1, v1, v2, v3}, Lz3/f;->a(ID)V

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->c()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-long v0, v0

    .line 73
    const/4 v2, 0x5

    .line 74
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->l()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    int-to-long v0, v0

    .line 82
    const/4 v2, 0x6

    .line 83
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->k()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v1, 0x7

    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->k()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->p()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/16 v1, 0x8

    .line 109
    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->p()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->m()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/16 v1, 0x9

    .line 128
    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->m()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_5
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->j()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    int-to-long v0, v0

    .line 147
    const/16 v2, 0xa

    .line 148
    .line 149
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->n()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/16 v1, 0xb

    .line 157
    .line 158
    if-nez v0, :cond_6

    .line 159
    .line 160
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_6
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->n()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_6
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->i()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const/16 v1, 0xc

    .line 176
    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_7
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->i()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_7
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->h()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const/16 v1, 0xd

    .line 195
    .line 196
    if-nez v0, :cond_8

    .line 197
    .line 198
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_8
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->h()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :goto_8
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->g()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const/16 v1, 0xe

    .line 214
    .line 215
    if-nez v0, :cond_9

    .line 216
    .line 217
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_9

    .line 221
    :cond_9
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->g()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_9
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->f()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const/16 v1, 0xf

    .line 233
    .line 234
    if-nez v0, :cond_a

    .line 235
    .line 236
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 237
    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_a
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->f()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :goto_a
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->a()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const/16 v1, 0x10

    .line 252
    .line 253
    if-nez v0, :cond_b

    .line 254
    .line 255
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_b

    .line 259
    :cond_b
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/c2;->a()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-interface {p1, v1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :goto_b
    return-void
.end method
