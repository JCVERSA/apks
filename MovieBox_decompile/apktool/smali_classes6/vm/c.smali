.class public final Lvm/c;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm/c$a;
    }
.end annotation


# static fields
.field public static final i:Lvm/c$a;


# instance fields
.field private a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private b:Lwm/a;

.field private c:Lvm/d;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvm/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvm/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lvm/c;->i:Lvm/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lvm/c;->d:I

    .line 6
    .line 7
    iput v0, p0, Lvm/c;->e:I

    .line 8
    .line 9
    iput v0, p0, Lvm/c;->f:I

    .line 10
    .line 11
    iput v0, p0, Lvm/c;->g:I

    .line 12
    .line 13
    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    invoke-direct {p0}, Lvm/c;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lvm/c;->b:Lwm/a;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lvm/c;->c:Lvm/d;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lvm/d;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lvm/c;->b:Lwm/a;

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lwm/a;->b()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v0, v1

    .line 38
    :goto_0
    iget-object v2, p0, Lvm/c;->b:Lwm/a;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2}, Lwm/a;->f()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :cond_3
    iget-object v2, p0, Lvm/c;->b:Lwm/a;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v2}, Lwm/a;->n()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    .line 57
    move-object v2, p1

    .line 58
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 59
    .line 60
    invoke-direct {p0, v2, v0, v1}, Lvm/c;->h(Landroidx/recyclerview/widget/LinearLayoutManager;II)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iget-object v1, p0, Lvm/c;->b:Lwm/a;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {v1}, Lwm/a;->r()V

    .line 72
    .line 73
    .line 74
    :cond_5
    iget-object v1, p0, Lvm/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 75
    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    const/4 v1, 0x0

    .line 84
    :goto_1
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 85
    .line 86
    invoke-direct {p0, v1, p1}, Lvm/c;->f(Ljava/util/List;Landroidx/recyclerview/widget/LinearLayoutManager;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-gez v1, :cond_7

    .line 91
    .line 92
    return-void

    .line 93
    :cond_7
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 94
    .line 95
    iget v2, p0, Lvm/c;->h:I

    .line 96
    .line 97
    iget v5, p0, Lvm/c;->f:I

    .line 98
    .line 99
    iget v6, p0, Lvm/c;->g:I

    .line 100
    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v8, "curPos="

    .line 107
    .line 108
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v8, " next="

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v8, ", dy="

    .line 123
    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, ", firstVisible="

    .line 131
    .line 132
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, " lastVisible="

    .line 139
    .line 140
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const/4 v8, 0x4

    .line 151
    const/4 v9, 0x0

    .line 152
    const-string v5, "ItemChangeListener"

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lvm/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 159
    .line 160
    if-eqz v2, :cond_a

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    if-eqz v2, :cond_a

    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    const/4 v5, 0x0

    .line 173
    :goto_2
    if-ge v5, v4, :cond_a

    .line 174
    .line 175
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v6, :cond_9

    .line 180
    .line 181
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-ne v7, v1, :cond_9

    .line 186
    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-ge v7, v8, :cond_9

    .line 192
    .line 193
    if-eq v0, v1, :cond_9

    .line 194
    .line 195
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 200
    .line 201
    iget-object v8, p0, Lvm/c;->b:Lwm/a;

    .line 202
    .line 203
    if-eqz v8, :cond_8

    .line 204
    .line 205
    invoke-virtual {v8, v7, v6, v1}, Lwm/a;->s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;I)V

    .line 206
    .line 207
    .line 208
    :cond_8
    iget-object v6, p0, Lvm/c;->b:Lwm/a;

    .line 209
    .line 210
    if-eqz v6, :cond_9

    .line 211
    .line 212
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-virtual {v6, v7}, Lwm/a;->e(Lcom/transsion/moviedetailapi/bean/Media;)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-ne v6, v3, :cond_9

    .line 221
    .line 222
    invoke-direct {p0, v1}, Lvm/c;->i(I)V

    .line 223
    .line 224
    .line 225
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_a
    return-void
.end method

.method private final f(Ljava/util/List;Landroidx/recyclerview/widget/LinearLayoutManager;)I
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_4

    .line 19
    .line 20
    sget v6, Lcom/transsion/ninegridview/R$id;->nine_grid:I

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Lcom/transsion/ninegridview/video/NineGridVideoView;

    .line 27
    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ltz v5, :cond_4

    .line 36
    .line 37
    move-object v7, p1

    .line 38
    check-cast v7, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-ge v5, v7, :cond_4

    .line 45
    .line 46
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-static {v8}, Lwm/b;->a(Lcom/transsion/moviedetailapi/bean/Media;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    iget-object v8, p0, Lvm/c;->b:Lwm/a;

    .line 63
    .line 64
    if-eqz v8, :cond_2

    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v8, v6, v7}, Lwm/a;->h(Lcom/transsion/ninegridview/video/NineGridVideoView;Lcom/transsion/moviedetailapi/bean/Media;)F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move v6, v2

    .line 76
    :goto_1
    cmpg-float v7, v4, v6

    .line 77
    .line 78
    if-gez v7, :cond_4

    .line 79
    .line 80
    const/high16 v4, 0x3f000000    # 0.5f

    .line 81
    .line 82
    cmpl-float v4, v6, v4

    .line 83
    .line 84
    if-lez v4, :cond_3

    .line 85
    .line 86
    move v0, v5

    .line 87
    :cond_3
    move v4, v6

    .line 88
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return v0
.end method

.method private final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lvm/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lwm/b;->a(Lcom/transsion/moviedetailapi/bean/Media;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    return v0
.end method

.method private final h(Landroidx/recyclerview/widget/LinearLayoutManager;II)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_4

    .line 14
    .line 15
    sget v4, Lcom/transsion/ninegridview/R$id;->nine_grid:I

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/transsion/ninegridview/video/NineGridVideoView;

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v3, p2, :cond_4

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4, p3}, Lcom/transsion/ninegridview/video/NineGridVideoView;->currentGifVisible(I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const-string p3, "childPos="

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p3, " currentGifVisible="

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const/4 v9, 0x4

    .line 77
    const/4 v10, 0x0

    .line 78
    const-string v6, "ItemChangeListener"

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/transsion/ninegridview/video/NineGridVideoView;->hasGifVisible()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    :cond_2
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p2, " gifVisible="

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/4 v8, 0x4

    .line 118
    const/4 v9, 0x0

    .line 119
    const-string v5, "ItemChangeListener"

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lvm/c;->b:Lwm/a;

    .line 126
    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1}, Lwm/a;->q()V

    .line 130
    .line 131
    .line 132
    :cond_3
    move p1, v1

    .line 133
    :goto_2
    return p1

    .line 134
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_5
    return v1
.end method

.method private final i(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvm/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    move v1, p1

    .line 18
    :goto_1
    if-ge v1, v0, :cond_6

    .line 19
    .line 20
    if-le v1, p1, :cond_5

    .line 21
    .line 22
    iget-object v2, p0, Lvm/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move-object v2, v3

    .line 41
    :goto_2
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    move-object v4, v3

    .line 49
    :goto_3
    invoke-static {v4}, Lwm/b;->a(Lcom/transsion/moviedetailapi/bean/Media;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_5

    .line 54
    .line 55
    iget-object p1, p0, Lvm/c;->b:Lwm/a;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :cond_3
    invoke-virtual {p1, v3}, Lwm/a;->v(Lcom/transsion/moviedetailapi/bean/Media;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void

    .line 69
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvm/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 3
    .line 4
    iput-object v0, p0, Lvm/c;->b:Lwm/a;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lvm/c;->e:I

    .line 8
    .line 9
    iput v1, p0, Lvm/c;->d:I

    .line 10
    .line 11
    iput v1, p0, Lvm/c;->f:I

    .line 12
    .line 13
    iput v1, p0, Lvm/c;->g:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lvm/c;->h:I

    .line 17
    .line 18
    iput-object v0, p0, Lvm/c;->c:Lvm/d;

    .line 19
    .line 20
    return-void
.end method

.method public final j(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvm/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Lwm/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvm/c;->b:Lwm/a;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Lvm/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvm/c;->c:Lvm/d;

    .line 2
    .line 3
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lvm/c;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    instance-of v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lvm/c;->d:I

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lvm/c;->e:I

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lvm/c;->f:I

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p0, Lvm/c;->g:I

    .line 39
    .line 40
    iput p3, p0, Lvm/c;->h:I

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_0

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lvm/c;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    const-string p2, "Unsupported layoutManager."

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method
