.class public final Lcom/transsion/subtitle/VideoSubtitleControl$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Llt/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleControl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/VideoSubtitleControl;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "bottom"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 14
    .line 15
    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->x(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->z(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->n(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public d()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "top"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 14
    .line 15
    return-object v0
.end method

.method public e(Lht/a;Lht/a;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0, p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->C(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v3, v2

    .line 33
    :goto_0
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v4, v2

    .line 47
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " --> onSubtitleSelect() --> isOpenBilingual = "

    .line 56
    .line 57
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, " --> top = "

    .line 64
    .line 65
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p3, " --> bottom = "

    .line 72
    .line 73
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {v0, p3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 87
    .line 88
    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->r(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function3;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    const-string v0, ""

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    :cond_2
    move-object v1, v0

    .line 109
    :cond_3
    if-eqz p1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move-object v0, v3

    .line 125
    :cond_5
    :goto_2
    const/4 v3, 0x1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_6

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    goto :goto_3

    .line 139
    :cond_6
    move v4, v3

    .line 140
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-interface {p3, v1, v0, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 148
    .line 149
    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->s(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function2;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_4

    .line 166
    :cond_7
    move-object v0, v2

    .line 167
    :goto_4
    if-eqz p2, :cond_8

    .line 168
    .line 169
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :cond_8
    invoke-interface {p3, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 183
    .line 184
    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string v1, "top"

    .line 189
    .line 190
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 195
    .line 196
    invoke-static {p3, p1, v0, v3}, Lcom/transsion/subtitle/VideoSubtitleControl;->D(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 197
    .line 198
    .line 199
    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 200
    .line 201
    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "bottom"

    .line 206
    .line 207
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 212
    .line 213
    const/4 v1, 0x0

    .line 214
    invoke-static {p3, p2, v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->D(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    .line 215
    .line 216
    .line 217
    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 218
    .line 219
    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 224
    .line 225
    .line 226
    if-eqz p1, :cond_9

    .line 227
    .line 228
    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 229
    .line 230
    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_9
    if-eqz p2, :cond_a

    .line 238
    .line 239
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 240
    .line 241
    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    :cond_a
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->C(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->y(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->w(Lcom/transsion/subtitle/VideoSubtitleControl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSubtitleViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->t(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Lcom/transsion/moviedetailapi/bean/DubsInfo;)V
    .locals 1

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->f(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public i()Lcom/transsion/subtitle/helper/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->l(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "subtitle_options_position"

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->l(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/d;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->i(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/transsion/subtitle/VideoSubtitleControl;->t(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroid/view/ViewGroup;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/subtitle/helper/d;->j(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->h(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "Off"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    xor-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    return v0
.end method

.method public l(Lht/a;J)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->A(Lcom/transsion/subtitle/VideoSubtitleControl;Lht/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lht/a;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-eqz p1, :cond_8

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v1, "top"

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    const v2, 0xc652

    .line 27
    .line 28
    .line 29
    if-eq v0, v2, :cond_4

    .line 30
    .line 31
    const v1, 0xc968

    .line 32
    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string v0, "2nd"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "bottom"

    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 59
    .line 60
    if-eqz p1, :cond_9

    .line 61
    .line 62
    invoke-virtual {p1, p2, p3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const-string v0, "1st"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 86
    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    invoke-virtual {p1, p2, p3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    const-string v0, ""

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_7
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 113
    .line 114
    if-eqz p1, :cond_9

    .line 115
    .line 116
    invoke-virtual {p1, p2, p3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    :goto_1
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 121
    .line 122
    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, " --> onSubtitleDelay() --> \u5f02\u5e38"

    .line 141
    .line 142
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    :goto_2
    return-void
.end method
