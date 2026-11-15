.class abstract Landroidx/media3/ui/PlayerControlView$l;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "l"
.end annotation


# instance fields
.field protected a:Ljava/util/List;

.field final synthetic b:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method protected constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic g(Landroidx/media3/ui/PlayerControlView$l;Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/ui/PlayerControlView$l;->i(Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic i(Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;Landroid/view/View;)V
    .locals 2

    .line 1
    const/16 p4, 0x1d

    .line 2
    .line 3
    invoke-interface {p1, p4}, Landroidx/media3/common/a0;->i(I)Z

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/a0;->m()Landroidx/media3/common/h0;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    invoke-virtual {p4}, Landroidx/media3/common/h0;->a()Landroidx/media3/common/h0$c;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    new-instance v0, Landroidx/media3/common/g0;

    .line 19
    .line 20
    iget v1, p3, Landroidx/media3/ui/PlayerControlView$k;->b:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, p2, v1}, Landroidx/media3/common/g0;-><init>(Landroidx/media3/common/f0;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, v0}, Landroidx/media3/common/h0$c;->L(Landroidx/media3/common/g0;)Landroidx/media3/common/h0$c;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p4, p3, Landroidx/media3/ui/PlayerControlView$k;->a:Landroidx/media3/common/i0$a;

    .line 38
    .line 39
    invoke-virtual {p4}, Landroidx/media3/common/i0$a;->d()I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p2, p4, v0}, Landroidx/media3/common/h0$c;->P(IZ)Landroidx/media3/common/h0$c;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroidx/media3/common/h0$c;->F()Landroidx/media3/common/h0;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p1, p2}, Landroidx/media3/common/a0;->V(Landroidx/media3/common/h0;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p3, Landroidx/media3/ui/PlayerControlView$k;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$l;->m(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    .line 61
    .line 62
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->I(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method protected h()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    .line 6
    .line 7
    return-void
.end method

.method public j(Landroidx/media3/ui/PlayerControlView$i;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$l;->k(Landroidx/media3/ui/PlayerControlView$i;)V

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$l;->a:Ljava/util/List;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr p2, v2

    .line 20
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroidx/media3/ui/PlayerControlView$k;

    .line 25
    .line 26
    iget-object v1, p2, Landroidx/media3/ui/PlayerControlView$k;->a:Landroidx/media3/common/i0$a;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0}, Landroidx/media3/common/a0;->m()Landroidx/media3/common/h0;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v3, v3, Landroidx/media3/common/h0;->D:Lcom/google/common/collect/ImmutableMap;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/media3/ui/PlayerControlView$k;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v2, v4

    .line 53
    :goto_0
    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$i;->a:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v5, p2, Landroidx/media3/ui/PlayerControlView$k;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$i;->b:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v4, 0x4

    .line 66
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 70
    .line 71
    new-instance v2, Landroidx/media3/ui/q;

    .line 72
    .line 73
    invoke-direct {v2, p0, v0, v1, p2}, Landroidx/media3/ui/q;-><init>(Landroidx/media3/ui/PlayerControlView$l;Landroidx/media3/common/a0;Landroidx/media3/common/f0;Landroidx/media3/ui/PlayerControlView$k;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    return-void
.end method

.method protected abstract k(Landroidx/media3/ui/PlayerControlView$i;)V
.end method

.method public l(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$i;
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView$l;->b:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget v0, Landroidx/media3/ui/R$layout;->exo_styled_sub_settings_list_item:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Landroidx/media3/ui/PlayerControlView$i;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Landroidx/media3/ui/PlayerControlView$i;-><init>(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method

.method protected abstract m(Ljava/lang/String;)V
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/ui/PlayerControlView$i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$l;->j(Landroidx/media3/ui/PlayerControlView$i;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$l;->l(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
