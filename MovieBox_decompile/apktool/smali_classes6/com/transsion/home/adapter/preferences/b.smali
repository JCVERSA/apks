.class public final Lcom/transsion/home/adapter/preferences/b;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B5\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ#\u0010\u0014\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/home/adapter/preferences/b;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/HomePreferencesContentItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "",
        "selectedIds",
        "",
        "isSingle",
        "",
        "maxSelectNum",
        "Lkotlin/Function0;",
        "",
        "onSelectionChanged",
        "<init>",
        "(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V",
        "Lcom/transsion/baseui/widget/GradientTextView;",
        "Landroid/content/Context;",
        "context",
        "selected",
        "C1",
        "(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V",
        "holder",
        "item",
        "D1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomePreferencesContentItem;)V",
        "F",
        "Ljava/util/Set;",
        "G",
        "Z",
        "H",
        "I",
        "Lkotlin/jvm/functions/Function0;",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final J:I = 0x8


# instance fields
.field private final F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Z

.field private final H:I

.field private final I:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelectionChanged"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lcom/transsion/home/R$layout;->item_home_preferences_enter_pop_tag:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 3
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 5
    iput-boolean p2, p0, Lcom/transsion/home/adapter/preferences/b;->G:Z

    .line 6
    iput p3, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    .line 7
    iput-object p4, p0, Lcom/transsion/home/adapter/preferences/b;->I:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/preferences/b;-><init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/preferences/b;->E1(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C1(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V
    .locals 4

    .line 1
    sget v0, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 8
    .line 9
    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    .line 14
    .line 15
    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget v3, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 20
    .line 21
    invoke-static {p2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v0

    .line 29
    :goto_0
    if-eqz p3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v0

    .line 33
    :goto_1
    if-eqz p3, :cond_2

    .line 34
    .line 35
    move v0, p2

    .line 36
    :cond_2
    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final E1(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p3, p0, Lcom/transsion/home/adapter/preferences/b;->G:Z

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-nez p3, :cond_3

    .line 56
    .line 57
    iget p3, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    .line 58
    .line 59
    if-lez p3, :cond_2

    .line 60
    .line 61
    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    iget v0, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    .line 68
    .line 69
    if-lt p3, v0, :cond_2

    .line 70
    .line 71
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget p2, Lcom/transsion/home/R$string;->home_preferences_max_select_tips:I

    .line 78
    .line 79
    iget p0, p0, Lcom/transsion/home/adapter/preferences/b;->H:I

    .line 80
    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 p3, 0x1

    .line 86
    new-array p3, p3, [Ljava/lang/Object;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    aput-object p0, p3, v0

    .line 90
    .line 91
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string p1, "getString(...)"

    .line 96
    .line 97
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lcom/transsion/baseui/util/m;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-object p3, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 128
    .line 129
    .line 130
    :goto_2
    iget-object p0, p0, Lcom/transsion/home/adapter/preferences/b;->I:Lkotlin/jvm/functions/Function0;

    .line 131
    .line 132
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method protected D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomePreferencesContentItem;)V
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
    iget-object v0, p0, Lcom/transsion/home/adapter/preferences/b;->F:Ljava/util/Set;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/transsion/home/R$id;->tvTagName:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/transsion/baseui/widget/GradientTextView;

    .line 33
    .line 34
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "getContext(...)"

    .line 41
    .line 42
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/home/adapter/preferences/b;->C1(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 56
    .line 57
    new-instance v1, Lcom/transsion/home/adapter/preferences/a;

    .line 58
    .line 59
    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/home/adapter/preferences/a;-><init>(Lcom/transsion/home/adapter/preferences/b;Lcom/transsion/home/bean/HomePreferencesContentItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/HomePreferencesContentItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/preferences/b;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomePreferencesContentItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
