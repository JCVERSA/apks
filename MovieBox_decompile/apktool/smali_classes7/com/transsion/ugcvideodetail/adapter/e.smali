.class public final Lcom/transsion/ugcvideodetail/adapter/e;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR*\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/adapter/e;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lht/a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "data",
        "<init>",
        "(Ljava/util/List;)V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lht/a;)V",
        "",
        "value",
        "F",
        "I",
        "C1",
        "()I",
        "D1",
        "(I)V",
        "selectedIndex",
        "UGCVideoDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private F:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/ugcvideodetail/adapter/e;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lht/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v0, Lcom/transsion/ugcvideodetail/R$layout;->item_ugc_imm_video_setting_language:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/adapter/e;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lht/a;)V
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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    sget v1, Lcom/transsion/ugcvideodetail/R$id;->tvLanguage:I

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/transsion/baseui/widget/GradientTextView;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 32
    .line 33
    const-string v3, "itemView"

    .line 34
    .line 35
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/high16 v3, 0x40800000    # 4.0f

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    sget v0, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 58
    .line 59
    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sget v4, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    .line 64
    .line 65
    invoke-static {p2, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    sget v5, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 70
    .line 71
    invoke-static {p2, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {v1, v0, v4, v5}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    int-to-float v1, v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setGradientAngle(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start_20:I

    .line 97
    .line 98
    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center_20:I

    .line 103
    .line 104
    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    sget v3, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end_20:I

    .line 109
    .line 110
    invoke-static {p2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {v0, v1, v2, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setGradientColor(III)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    sget v0, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 127
    .line 128
    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 133
    .line 134
    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    sget v4, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 139
    .line 140
    invoke-static {p2, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {v1, v0, v2, v4}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 148
    .line 149
    invoke-direct {v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    int-to-float v1, v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget v1, Lcom/tn/lib/widget/R$color;->white_6:I

    .line 162
    .line 163
    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-virtual {v0, p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    .line 177
    .line 178
    :goto_1
    return-void
.end method

.method public final C1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public final D1(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/e;->F:I

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    if-ltz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ge p1, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lht/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/adapter/e;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lht/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
