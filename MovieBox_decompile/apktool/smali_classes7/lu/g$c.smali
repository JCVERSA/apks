.class public final Llu/g$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baseui/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field final synthetic e:Llu/g;

.field final synthetic f:Landroid/content/Context;


# direct methods
.method constructor <init>(Llu/g;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llu/g$c;->e:Llu/g;

    .line 2
    .line 3
    iput-object p2, p0, Llu/g$c;->f:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    iput-object p1, p0, Llu/g$c;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 2
    .line 3
    invoke-static {v0}, Llu/g;->c(Llu/g;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 10
    .line 11
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Llu/g$a;->c()Lcom/tn/lib/pager/PagerLayoutManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/tn/lib/pager/PagerLayoutManager;->X(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 26
    .line 27
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iput-wide v2, p0, Llu/g$c;->a:J

    .line 42
    .line 43
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 44
    .line 45
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, v1}, Llu/g$a;->e(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 53
    .line 54
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Liu/r;->E:Landroid/widget/TextView;

    .line 63
    .line 64
    const-string v1, "tvUgcImmProgressDes"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 73
    .line 74
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v0, v0, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 83
    .line 84
    const-string v1, "seekUgcImmBar"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 93
    .line 94
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 103
    .line 104
    const-string v1, "progressUgcImmBar"

    .line 105
    .line 106
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 113
    .line 114
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, p0, Llu/g$c;->c:I

    .line 129
    .line 130
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 131
    .line 132
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getMaxProgress()J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    iput-wide v0, p0, Llu/g$c;->b:J

    .line 147
    .line 148
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Llu/g$c;->d:Ljava/lang/String;

    .line 153
    .line 154
    :cond_1
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    invoke-static {v0, v1}, Llu/g;->e(Llu/g;Z)V

    .line 158
    .line 159
    .line 160
    sub-float/2addr p2, p1

    .line 161
    iget-wide v0, p0, Llu/g$c;->b:J

    .line 162
    .line 163
    long-to-float p1, v0

    .line 164
    mul-float/2addr p2, p1

    .line 165
    iget p1, p0, Llu/g$c;->c:I

    .line 166
    .line 167
    int-to-float p1, p1

    .line 168
    div-float/2addr p2, p1

    .line 169
    iget-wide v2, p0, Llu/g$c;->a:J

    .line 170
    .line 171
    long-to-float p1, v2

    .line 172
    add-float/2addr p1, p2

    .line 173
    float-to-long p1, p1

    .line 174
    const-wide/16 v2, 0x0

    .line 175
    .line 176
    cmp-long v4, p1, v2

    .line 177
    .line 178
    if-gez v4, :cond_2

    .line 179
    .line 180
    move-wide v0, v2

    .line 181
    goto :goto_0

    .line 182
    :cond_2
    cmp-long v4, p1, v0

    .line 183
    .line 184
    if-lez v4, :cond_3

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_3
    move-wide v0, p1

    .line 188
    :goto_0
    invoke-static {}, Lah/c;->e()Lah/c$a;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    cmp-long p2, v0, v2

    .line 193
    .line 194
    if-gtz p2, :cond_4

    .line 195
    .line 196
    const-string p2, "00:00"

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_4
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    :goto_1
    invoke-virtual {p1, p2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object p2, p0, Llu/g$c;->f:Landroid/content/Context;

    .line 208
    .line 209
    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    .line 210
    .line 211
    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    invoke-virtual {p1, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iget-object p2, p0, Llu/g$c;->d:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v3, "  /  "

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p1, p2}, Lah/c$a;->e(Ljava/lang/CharSequence;)Lah/c$a;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget-object p2, p0, Llu/g$c;->f:Landroid/content/Context;

    .line 243
    .line 244
    sget v2, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 245
    .line 246
    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    invoke-virtual {p1, p2}, Lah/c$a;->c(I)Lah/c$a;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lah/c$a;->b()Lah/c;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iget-object p2, p0, Llu/g$c;->e:Llu/g;

    .line 259
    .line 260
    invoke-static {p2}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-interface {p2}, Llu/g$a;->a()Liu/r;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    iget-object p2, p2, Liu/r;->E:Landroid/widget/TextView;

    .line 269
    .line 270
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Llu/g$c;->e:Llu/g;

    .line 274
    .line 275
    invoke-static {p1}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-interface {p1, v0, v1}, Llu/g$a;->f(J)V

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public c(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 2
    .line 3
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Llu/g$a;->c()Lcom/tn/lib/pager/PagerLayoutManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/tn/lib/pager/PagerLayoutManager;->X(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 18
    .line 19
    invoke-static {v0}, Llu/g;->c(Llu/g;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v2}, Llu/g;->e(Llu/g;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 32
    .line 33
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, v1}, Llu/g$a;->e(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 41
    .line 42
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Liu/r;->E:Landroid/widget/TextView;

    .line 51
    .line 52
    const-string v2, "tvUgcImmProgressDes"

    .line 53
    .line 54
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 61
    .line 62
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 71
    .line 72
    const-string v2, "seekUgcImmBar"

    .line 73
    .line 74
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 81
    .line 82
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 91
    .line 92
    const-string v2, "progressUgcImmBar"

    .line 93
    .line 94
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 101
    .line 102
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 117
    .line 118
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Llu/g$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isDataComplete()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-ne v0, v1, :cond_2

    .line 133
    .line 134
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 135
    .line 136
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 147
    .line 148
    .line 149
    :cond_1
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 150
    .line 151
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {v0}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 168
    .line 169
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {v0}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 184
    .line 185
    iget-object v0, p0, Llu/g$c;->e:Llu/g;

    .line 186
    .line 187
    invoke-static {v0}, Llu/g;->b(Llu/g;)Llu/g$a;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0}, Llu/g$a;->getLogTag()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const/4 v5, 0x4

    .line 196
    const/4 v6, 0x0

    .line 197
    const-string v3, "\u6570\u636e\u8fd8\u6ca1\u6709\u62c9\u4e0b\u6765\uff0c\u4e0d\u8fdb\u884cseek"

    .line 198
    .line 199
    const/4 v4, 0x0

    .line 200
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_3
    :goto_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
