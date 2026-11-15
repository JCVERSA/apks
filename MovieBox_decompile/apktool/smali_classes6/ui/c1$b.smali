.class Lui/c1$b;
.super Landroidx/room/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/c1;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui/c1;


# direct methods
.method constructor <init>(Lui/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c1$b;->a:Lui/c1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lui/c1$b;->d(Ly3/e;Lcom/transsion/baselib/db/download/SubtitleBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE OR ABORT `download_subtitle_table` SET `resourceId` = ?,`postId` = ?,`url` = ?,`path` = ?,`lan` = ?,`lanName` = ?,`subtitleName` = ?,`size` = ?,`delayDuration` = ?,`status` = ?,`type` = ?,`fileCharsetName` = ?,`subjectId` = ?,`ep` = ?,`se` = ?,`resolution` = ? WHERE `resourceId` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/baselib/db/download/SubtitleBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

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
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPostId()Ljava/lang/String;

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
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPostId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x3

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x4

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x5

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLanName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x6

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLanName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubtitleName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v1, 0x7

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubtitleName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSize()Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/16 v1, 0x8

    .line 132
    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSize()Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 148
    .line 149
    .line 150
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getDelayDuration()Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/16 v1, 0x9

    .line 155
    .line 156
    if-nez v0, :cond_8

    .line 157
    .line 158
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getDelayDuration()Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 171
    .line 172
    .line 173
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getStatus()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    int-to-long v0, v0

    .line 178
    const/16 v2, 0xa

    .line 179
    .line 180
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getType()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    int-to-long v0, v0

    .line 188
    const/16 v2, 0xb

    .line 189
    .line 190
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getFileCharsetName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const/16 v1, 0xc

    .line 198
    .line 199
    if-nez v0, :cond_9

    .line 200
    .line 201
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getFileCharsetName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const/16 v1, 0xd

    .line 217
    .line 218
    if-nez v0, :cond_a

    .line 219
    .line 220
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_a

    .line 224
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getEp()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    int-to-long v0, v0

    .line 236
    const/16 v2, 0xe

    .line 237
    .line 238
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSe()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    int-to-long v0, v0

    .line 246
    const/16 v2, 0xf

    .line 247
    .line 248
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResolution()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    int-to-long v0, v0

    .line 256
    const/16 v2, 0x10

    .line 257
    .line 258
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const/16 v1, 0x11

    .line 266
    .line 267
    if-nez v0, :cond_b

    .line 268
    .line 269
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-interface {p1, v1, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :goto_b
    return-void
.end method
