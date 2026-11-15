.class final Lcom/transsion/usercenter/profile/see/h$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/see/h;->o(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/see/h;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/see/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h$a;->a:Lcom/transsion/usercenter/profile/see/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/lib/net/bean/BaseDto;)Lio/reactivex/rxjava3/core/m;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "it"

    .line 5
    .line 6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_8

    .line 17
    .line 18
    iget-object v5, p0, Lcom/transsion/usercenter/profile/see/h$a;->a:Lcom/transsion/usercenter/profile/see/h;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;->getItems()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    check-cast v3, Ljava/lang/Iterable;

    .line 27
    .line 28
    new-instance v6, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_7

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;

    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;->getSubject()Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v7}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;->getStaff()Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-wide/16 v9, 0x0

    .line 58
    .line 59
    if-eqz v8, :cond_2

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getMySeeTime()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    if-eqz v7, :cond_0

    .line 66
    .line 67
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    :cond_0
    invoke-static {v5, v9, v10}, Lcom/transsion/usercenter/profile/see/h;->d(Lcom/transsion/usercenter/profile/see/h;J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-eqz v9, :cond_1

    .line 84
    .line 85
    new-array v7, v2, [Lp6/a;

    .line 86
    .line 87
    aput-object v8, v7, v1

    .line 88
    .line 89
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v9, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;

    .line 102
    .line 103
    invoke-direct {v9, v7}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-array v7, v0, [Lp6/a;

    .line 107
    .line 108
    aput-object v9, v7, v1

    .line 109
    .line 110
    aput-object v8, v7, v2

    .line 111
    .line 112
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    if-eqz v7, :cond_5

    .line 118
    .line 119
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Staff;->getMySeeTime()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    if-eqz v8, :cond_3

    .line 124
    .line 125
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v9

    .line 129
    :cond_3
    invoke-static {v5, v9, v10}, Lcom/transsion/usercenter/profile/see/h;->d(Lcom/transsion/usercenter/profile/see/h;J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v9, :cond_4

    .line 142
    .line 143
    new-array v8, v2, [Lp6/a;

    .line 144
    .line 145
    aput-object v7, v8, v1

    .line 146
    .line 147
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v9, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;

    .line 160
    .line 161
    invoke-direct {v9, v8}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-array v8, v0, [Lp6/a;

    .line 165
    .line 166
    aput-object v9, v8, v1

    .line 167
    .line 168
    aput-object v7, v8, v2

    .line 169
    .line 170
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    goto :goto_1

    .line 175
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    :goto_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    check-cast v7, Ljava/lang/Iterable;

    .line 183
    .line 184
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_6
    move-object v6, v4

    .line 190
    :cond_7
    if-nez v6, :cond_9

    .line 191
    .line 192
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    :cond_9
    new-instance v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 198
    .line 199
    invoke-direct {v0}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    .line 200
    .line 201
    .line 202
    new-instance v1, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;

    .line 209
    .line 210
    if-eqz v2, :cond_a

    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    :cond_a
    invoke-direct {v1, v4, v6}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;-><init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/tn/lib/net/bean/BaseDto;->setCode(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lcom/tn/lib/net/bean/BaseDto;->setMsg(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {v0, p1}, Lcom/tn/lib/net/bean/BaseDto;->setReason(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/see/h$a;->a(Lcom/tn/lib/net/bean/BaseDto;)Lio/reactivex/rxjava3/core/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
