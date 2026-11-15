.class Lvh/t$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvh/t;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvh/t;


# direct methods
.method constructor <init>(Lvh/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvh/t$a;->a:Lvh/t;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lvh/t$a;->f(Ly3/e;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `ps_link_ad` (`id`,`nonId`,`adSource`,`extAdSlot`,`rank`,`psPlanId`,`psLinkAdInfoStr`,`psInfoJson`,`updateTimestamp`,`showMax`,`clickMax`,`showHours`,`showedTimes`,`clickedTimes`,`showDate`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getNonId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getNonId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getAdSource()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x3

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getAdSource()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getExtAdSlot()Ljava/lang/String;

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
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getExtAdSlot()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getRank()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-long v0, v0

    .line 69
    const/4 v2, 0x5

    .line 70
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsPlanId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x6

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsPlanId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsLinkAdInfoStr()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x7

    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsLinkAdInfoStr()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsInfoJson()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsInfoJson()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getUpdateTimestamp()Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/16 v1, 0x9

    .line 133
    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getUpdateTimestamp()Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 149
    .line 150
    .line 151
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/16 v1, 0xa

    .line 156
    .line 157
    if-nez v0, :cond_7

    .line 158
    .line 159
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-long v2, v0

    .line 172
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 173
    .line 174
    .line 175
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v1, 0xb

    .line 180
    .line 181
    if-nez v0, :cond_8

    .line 182
    .line 183
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    int-to-long v2, v0

    .line 196
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 197
    .line 198
    .line 199
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowHours()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const/16 v1, 0xc

    .line 204
    .line 205
    if-nez v0, :cond_9

    .line 206
    .line 207
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowHours()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowedTimes()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    int-to-long v0, v0

    .line 223
    const/16 v2, 0xd

    .line 224
    .line 225
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickedTimes()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    int-to-long v0, v0

    .line 233
    const/16 v2, 0xe

    .line 234
    .line 235
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowDate()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const/16 v1, 0xf

    .line 243
    .line 244
    if-nez v0, :cond_a

    .line 245
    .line 246
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_a

    .line 250
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowDate()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-interface {p1, v1, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :goto_a
    return-void
.end method
