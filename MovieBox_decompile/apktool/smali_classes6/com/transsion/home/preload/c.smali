.class public abstract Lcom/transsion/home/preload/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/home/bean/OperateItem;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-static {v0}, Lsm/d;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public static final b(Ljava/util/List;)V
    .locals 9

    .line 1
    if-eqz p0, :cond_12

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_12

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 26
    .line 27
    .line 28
    :cond_0
    check-cast v2, Lcom/transsion/home/bean/OperateItem;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-ge v1, v4, :cond_1

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v4, Lcom/transsion/moviedetailapi/bean/PostItemType;->FILTER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const-string v5, ""

    .line 50
    .line 51
    if-eqz v4, :cond_6

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getFilters()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_11

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move v2, v0

    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_11

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    add-int/lit8 v6, v2, 0x1

    .line 77
    .line 78
    if-gez v2, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 81
    .line 82
    .line 83
    :cond_2
    check-cast v4, Lcom/transsion/home/bean/FilterItem;

    .line 84
    .line 85
    const/4 v7, 0x3

    .line 86
    if-ge v2, v7, :cond_5

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/transsion/home/bean/FilterItem;->getImage()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    :cond_3
    move-object v2, v5

    .line 101
    :cond_4
    invoke-static {v2}, Lsm/d;->b(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    move v2, v6

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    sget-object v4, Lcom/transsion/moviedetailapi/bean/PostItemType;->OP_SUBJECTS_MOVIE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_b

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_11

    .line 123
    .line 124
    check-cast v1, Ljava/lang/Iterable;

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    move v2, v0

    .line 131
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_11

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    add-int/lit8 v6, v2, 0x1

    .line 142
    .line 143
    if-gez v2, :cond_7

    .line 144
    .line 145
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 146
    .line 147
    .line 148
    :cond_7
    check-cast v4, Lcom/transsion/home/bean/AppointSubject;

    .line 149
    .line 150
    const/4 v7, 0x4

    .line 151
    if-ge v2, v7, :cond_a

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-nez v2, :cond_9

    .line 164
    .line 165
    :cond_8
    move-object v2, v5

    .line 166
    :cond_9
    invoke-static {v2}, Lsm/d;->b(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_a
    move v2, v6

    .line 170
    goto :goto_2

    .line 171
    :cond_b
    sget-object v4, Lcom/transsion/moviedetailapi/bean/PostItemType;->CUSTOM_DATA:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_11

    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getCustomData()Lcom/transsion/home/bean/CustomData;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_11

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-eqz v1, :cond_11

    .line 194
    .line 195
    check-cast v1, Ljava/lang/Iterable;

    .line 196
    .line 197
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    move v4, v0

    .line 202
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_11

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    add-int/lit8 v7, v4, 0x1

    .line 213
    .line 214
    if-gez v4, :cond_c

    .line 215
    .line 216
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 217
    .line 218
    .line 219
    :cond_c
    check-cast v6, Lcom/transsion/home/bean/BannerData;

    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getCustomData()Lcom/transsion/home/bean/CustomData;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    if-eqz v8, :cond_d

    .line 226
    .line 227
    invoke-virtual {v8}, Lcom/transsion/home/bean/CustomData;->getRowCount()I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    goto :goto_4

    .line 232
    :cond_d
    move v8, v0

    .line 233
    :goto_4
    if-ge v4, v8, :cond_10

    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    if-eqz v4, :cond_e

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    if-nez v4, :cond_f

    .line 246
    .line 247
    :cond_e
    move-object v4, v5

    .line 248
    :cond_f
    invoke-static {v4}, Lsm/d;->b(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_10
    move v4, v7

    .line 252
    goto :goto_3

    .line 253
    :cond_11
    :goto_5
    move v1, v3

    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_12
    return-void
.end method
