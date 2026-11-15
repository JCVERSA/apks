.class Lcom/transsion/baselib/db/video/m$c;
.super Landroidx/room/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/m;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/video/m;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/m$c;->a:Lcom/transsion/baselib/db/video/m;

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
    check-cast p2, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/video/m$c;->d(Ly3/e;Lcom/transsion/baselib/db/video/ShortTVPlayBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE OR ABORT `short_tv_play` SET `subjectId` = ?,`id` = ?,`ep` = ?,`se` = ?,`totalEp` = ?,`progress` = ?,`title` = ?,`description` = ?,`coverUrl` = ?,`thumbnail` = ?,`videoId` = ?,`videoUrl` = ?,`timeStamp` = ?,`subtitleSelectId` = ? WHERE `subjectId` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/baselib/db/video/ShortTVPlayBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getEp()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v0, v0

    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSe()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v0, v0

    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTotalEp()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-long v0, v0

    .line 60
    const/4 v2, 0x5

    .line 61
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x6

    .line 65
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getProgress()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x7

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTitle()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getDescription()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/16 v1, 0x8

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getDescription()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/16 v1, 0x9

    .line 114
    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getThumbnail()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/16 v1, 0xa

    .line 133
    .line 134
    if-nez v0, :cond_5

    .line 135
    .line 136
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getThumbnail()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/16 v1, 0xb

    .line 152
    .line 153
    if-nez v0, :cond_6

    .line 154
    .line 155
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoUrl()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const/16 v1, 0xc

    .line 171
    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoUrl()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_7
    const/16 v0, 0xd

    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTimeStamp()J

    .line 188
    .line 189
    .line 190
    move-result-wide v1

    .line 191
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const/16 v1, 0xe

    .line 199
    .line 200
    if-nez v0, :cond_8

    .line 201
    .line 202
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const/16 v1, 0xf

    .line 218
    .line 219
    if-nez v0, :cond_9

    .line 220
    .line 221
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p1, v1, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :goto_9
    return-void
.end method
