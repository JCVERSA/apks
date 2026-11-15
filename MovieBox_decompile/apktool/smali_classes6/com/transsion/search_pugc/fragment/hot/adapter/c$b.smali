.class public final Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search_pugc/fragment/hot/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;


# direct methods
.method public constructor <init>(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final A(Lcom/transsion/search_pugc/fragment/hot/adapter/c;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->U1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->V1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->S1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->T1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Lcom/transsion/search_pugc/g;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->R1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    xor-int/lit8 p0, p0, 0x1

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/transsion/search_pugc/g;->n(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public static synthetic y(Lcom/transsion/search_pugc/fragment/hot/adapter/c;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->A(Lcom/transsion/search_pugc/fragment/hot/adapter/c;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search_pugc/fragment/hot/adapter/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/fragment/hot/adapter/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->item_search_history_word:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/fragment/hot/adapter/a;)V
    .locals 3

    .line 1
    const-string v0, "helper"

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget v1, Lcom/transsion/search/R$id;->search_history_text:I

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/a;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->U1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->V1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-ne v0, p2, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p2, v1

    .line 46
    :goto_0
    sget v2, Lcom/transsion/search/R$id;->search_hot_history_more_image:I

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/hot/adapter/c$b;->e:Lcom/transsion/search_pugc/fragment/hot/adapter/c;

    .line 53
    .line 54
    check-cast p1, Landroid/widget/ImageView;

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v1, 0x8

    .line 60
    .line 61
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/hot/adapter/c;->R1(Lcom/transsion/search_pugc/fragment/hot/adapter/c;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    sget p2, Lcom/transsion/search/R$drawable;->ic_hide:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    sget p2, Lcom/transsion/search/R$drawable;->ic_more:I

    .line 74
    .line 75
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lcom/transsion/search_pugc/fragment/hot/adapter/d;

    .line 79
    .line 80
    invoke-direct {p2, v2, v0}, Lcom/transsion/search_pugc/fragment/hot/adapter/d;-><init>(Lcom/transsion/search_pugc/fragment/hot/adapter/c;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
