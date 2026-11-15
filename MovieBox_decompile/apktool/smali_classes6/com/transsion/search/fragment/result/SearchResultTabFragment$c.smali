.class public final Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultTabFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/result/SearchResultTabFragment$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 9

    .line 1
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p4, 0x0

    .line 21
    :goto_0
    if-lt p1, p4, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 25
    .line 26
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    if-eqz p4, :cond_3

    .line 31
    .line 32
    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/adapter/a;->Q1()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    if-nez p4, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    move-object v7, p4

    .line 40
    goto :goto_3

    .line 41
    :cond_3
    :goto_2
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 42
    .line 43
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->k0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    goto :goto_1

    .line 48
    :goto_3
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 49
    .line 50
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p4, :cond_4

    .line 56
    .line 57
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    if-eqz p4, :cond_4

    .line 62
    .line 63
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    check-cast p4, Lcom/transsion/search/fragment/result/ResultWrapData;

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move-object p4, v0

    .line 71
    :goto_4
    if-eqz p4, :cond_5

    .line 72
    .line 73
    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getType()Lcom/transsion/search/fragment/result/ResultType;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_5
    if-nez v0, :cond_6

    .line 78
    .line 79
    const/4 v0, -0x1

    .line 80
    goto :goto_5

    .line 81
    :cond_6
    sget-object v1, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c$a;->a:[I

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    aget v0, v1, v0

    .line 88
    .line 89
    :goto_5
    const/4 v1, 0x1

    .line 90
    const-string v2, "mb_sug"

    .line 91
    .line 92
    if-eq v0, v1, :cond_10

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    if-eq v0, v1, :cond_d

    .line 96
    .line 97
    const/4 v1, 0x3

    .line 98
    if-eq v0, v1, :cond_a

    .line 99
    .line 100
    const/4 v1, 0x4

    .line 101
    if-eq v0, v1, :cond_7

    .line 102
    .line 103
    goto/16 :goto_e

    .line 104
    .line 105
    :cond_7
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 106
    .line 107
    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 112
    .line 113
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 118
    .line 119
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 124
    .line 125
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    if-eqz p4, :cond_9

    .line 130
    .line 131
    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    if-nez p4, :cond_8

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_8
    move-object v8, p4

    .line 139
    goto :goto_7

    .line 140
    :cond_9
    :goto_6
    move-object v8, v2

    .line 141
    :goto_7
    move v2, p1

    .line 142
    move-wide v3, p2

    .line 143
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->j(Lcom/transsion/search/bean/VerticalRank;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_e

    .line 147
    .line 148
    :cond_a
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 149
    .line 150
    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getGroups()Lcom/transsion/moviedetailapi/bean/Group;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 155
    .line 156
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 161
    .line 162
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 167
    .line 168
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    if-eqz p4, :cond_c

    .line 173
    .line 174
    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p4

    .line 178
    if-nez p4, :cond_b

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_b
    move-object v8, p4

    .line 182
    goto :goto_9

    .line 183
    :cond_c
    :goto_8
    move-object v8, v2

    .line 184
    :goto_9
    move v2, p1

    .line 185
    move-wide v3, p2

    .line 186
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->a(Lcom/transsion/moviedetailapi/bean/Group;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_e

    .line 190
    :cond_d
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 191
    .line 192
    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getStaff()Lcom/transsion/moviedetailapi/bean/Staff;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 197
    .line 198
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 203
    .line 204
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 209
    .line 210
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 211
    .line 212
    .line 213
    move-result-object p4

    .line 214
    if-eqz p4, :cond_f

    .line 215
    .line 216
    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p4

    .line 220
    if-nez p4, :cond_e

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_e
    move-object v8, p4

    .line 224
    goto :goto_b

    .line 225
    :cond_f
    :goto_a
    move-object v8, v2

    .line 226
    :goto_b
    move v2, p1

    .line 227
    move-wide v3, p2

    .line 228
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->r(Lcom/transsion/moviedetailapi/bean/Staff;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_e

    .line 232
    :cond_10
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 233
    .line 234
    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 239
    .line 240
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 245
    .line 246
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 251
    .line 252
    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 253
    .line 254
    .line 255
    move-result-object p4

    .line 256
    if-eqz p4, :cond_12

    .line 257
    .line 258
    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p4

    .line 262
    if-nez p4, :cond_11

    .line 263
    .line 264
    goto :goto_c

    .line 265
    :cond_11
    move-object v8, p4

    .line 266
    goto :goto_d

    .line 267
    :cond_12
    :goto_c
    move-object v8, v2

    .line 268
    :goto_d
    move v2, p1

    .line 269
    move-wide v3, p2

    .line 270
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->t(Lcom/transsion/moviedetailapi/bean/Subject;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_e
    return-void
.end method
