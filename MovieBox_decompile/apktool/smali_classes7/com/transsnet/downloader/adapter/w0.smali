.class public final Lcom/transsnet/downloader/adapter/w0;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/w0;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "dataList",
        "<init>",
        "(Ljava/util/List;)V",
        "",
        "C1",
        "()[I",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsnet/downloader/R$layout;->item_movie_rec_footview:I

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final C1()[I
    .locals 4

    .line 1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x41000000    # 8.0f

    .line 8
    .line 9
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/transsion/baseui/util/b;->a(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x3

    .line 26
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    mul-int/lit8 v0, v0, 0x2

    .line 31
    .line 32
    mul-int/2addr v0, v2

    .line 33
    sub-int/2addr v3, v0

    .line 34
    mul-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    sub-int/2addr v3, v1

    .line 37
    div-int/2addr v3, v2

    .line 38
    int-to-float v0, v3

    .line 39
    const v1, 0x3fb23e35

    .line 40
    .line 41
    .line 42
    mul-float/2addr v0, v1

    .line 43
    float-to-int v0, v0

    .line 44
    filled-new-array {v3, v0}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 6

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/w0;->C1()[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    aget v5, v0, v3

    .line 32
    .line 33
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    aget v0, v0, v2

    .line 36
    .line 37
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "getContext(...)"

    .line 49
    .line 50
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, ""

    .line 62
    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    :cond_0
    move-object v4, v5

    .line 72
    :cond_1
    invoke-virtual {v0, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-nez v4, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move-object v5, v4

    .line 90
    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    sget v0, Lcom/transsnet/downloader/R$id;->tv_title:I

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 104
    .line 105
    .line 106
    sget v0, Lcom/transsnet/downloader/R$id;->icon_download:I

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    sget-object v1, Lij/t;->a:Lij/t;

    .line 117
    .line 118
    invoke-virtual {v1}, Lij/t;->b()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_1
    sget v0, Lcom/transsnet/downloader/R$id;->tv_download_foryou_corner:I

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/widget/TextView;

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    if-eqz p1, :cond_b

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-eqz p2, :cond_9

    .line 155
    .line 156
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-nez p2, :cond_8

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_8
    move v2, v3

    .line 164
    :cond_9
    :goto_2
    if-nez v2, :cond_a

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_a
    const/16 v3, 0x8

    .line 168
    .line 169
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    :cond_b
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/w0;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
