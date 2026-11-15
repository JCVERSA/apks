.class public final Lcom/transsion/search_pugc/fragment/result/adapter/c;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/search_pugc/fragment/result/adapter/c;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/search_pugc/bean/SecondTab;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "secondTab",
        "<init>",
        "(Lcom/transsion/search_pugc/bean/SecondTab;)V",
        "",
        "E1",
        "holder",
        "item",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SecondTab;)V",
        "F",
        "Lcom/transsion/search_pugc/bean/SecondTab;",
        "C1",
        "()Lcom/transsion/search_pugc/bean/SecondTab;",
        "D1",
        "Search_psRelease"
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
.field private F:Lcom/transsion/search_pugc/bean/SecondTab;


# direct methods
.method public constructor <init>(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->item_search_result_tab_ugc:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 3

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
    sget v0, Lcom/transsion/search/R$id;->tab_text:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SecondTab;->getTagValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/transsion/search/R$id;->tab_text:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/transsion/baseui/widget/GradientTextView;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 29
    .line 30
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    sget p2, Lcom/transsion/search/R$id;->tab_root:I

    .line 37
    .line 38
    sget v1, Lcom/transsion/search/R$drawable;->bg_search_secondtab_seleted:I

    .line 39
    .line 40
    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget p2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    .line 58
    .line 59
    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 68
    .line 69
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget p2, Lcom/transsion/search/R$id;->tab_root:I

    .line 78
    .line 79
    sget v1, Lcom/transsion/search/R$drawable;->bg_search_secondtab_unseleted:I

    .line 80
    .line 81
    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setBackgroundResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget p2, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 89
    .line 90
    invoke-static {p1, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    sget v1, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 99
    .line 100
    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 109
    .line 110
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method public final C1()Lcom/transsion/search_pugc/bean/SecondTab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D1(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 2
    .line 3
    return-void
.end method

.method public final E1(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/adapter/c;->F:Lcom/transsion/search_pugc/bean/SecondTab;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search_pugc/bean/SecondTab;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/adapter/c;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SecondTab;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
