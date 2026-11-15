.class public final Lcom/transsion/shorttv_pugc/ui/adapter/r;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/adapter/r;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lkotlin/ranges/IntRange;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "range",
        "<init>",
        "(Lkotlin/ranges/IntRange;)V",
        "",
        "E1",
        "holder",
        "item",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/ranges/IntRange;)V",
        "F",
        "Lkotlin/ranges/IntRange;",
        "C1",
        "()Lkotlin/ranges/IntRange;",
        "D1",
        "shortTvLib_release"
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
.field private F:Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;)V
    .locals 3

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_tab_list_item:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/r;->F:Lkotlin/ranges/IntRange;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/ranges/IntRange;)V
    .locals 4

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
    sget v0, Lcom/transsion/shorttv/R$id;->tab_text:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lkotlin/ranges/IntProgression;->f()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p2}, Lkotlin/ranges/IntProgression;->i()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "-"

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lkotlin/ranges/IntProgression;->f()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/r;->F:Lkotlin/ranges/IntRange;

    .line 55
    .line 56
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->f()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ne p2, v1, :cond_0

    .line 61
    .line 62
    sget p2, Lcom/transsion/shorttv/R$id;->tab_root:I

    .line 63
    .line 64
    sget v1, Lcom/transsion/shorttv/R$drawable;->short_tv_bg_video_list_tab_seleted:I

    .line 65
    .line 66
    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget p2, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_start:I

    .line 74
    .line 75
    invoke-static {p1, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    sget v1, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_center:I

    .line 84
    .line 85
    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_end:I

    .line 94
    .line 95
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->setGradientColors(III)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    sget p2, Lcom/transsion/shorttv/R$id;->tab_root:I

    .line 104
    .line 105
    sget v1, Lcom/transsion/shorttv/R$drawable;->shott_tv_bg_video_list_tab_unseleted:I

    .line 106
    .line 107
    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    sget p2, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    .line 115
    .line 116
    invoke-static {p1, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    sget v1, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    .line 125
    .line 126
    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    .line 135
    .line 136
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->setGradientColors(III)V

    .line 141
    .line 142
    .line 143
    :goto_0
    return-void
.end method

.method public final C1()Lkotlin/ranges/IntRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/r;->F:Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D1(Lkotlin/ranges/IntRange;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/r;->F:Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    return-void
.end method

.method public final E1(Lkotlin/ranges/IntRange;)V
    .locals 1

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/r;->F:Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/r;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/ranges/IntRange;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
