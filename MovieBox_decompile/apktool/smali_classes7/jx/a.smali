.class public Ljx/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# instance fields
.field private a:Lcom/transsnet/login/country/SelectCountryViewModel;

.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsnet/login/country/SelectCountryViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ljx/a;->b:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Ljx/a;->c:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Ljx/a;->a:Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public g(Ljx/c;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljx/a;->b:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p2, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Ljx/a;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lcom/transsnet/loginapi/bean/Country;

    .line 20
    .line 21
    iget-object v0, p0, Ljx/a;->a:Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Ljx/c;->g(Lcom/transsnet/loginapi/bean/Country;Lcom/transsnet/login/country/SelectCountryViewModel;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljx/a;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Ljx/c;
    .locals 2

    .line 1
    iget-object p2, p0, Ljx/a;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    sget v0, Lcom/transsnet/login/R$layout;->login_item_country:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    const/4 v1, -0x2

    .line 24
    invoke-direct {p2, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance p2, Ljx/c;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Ljx/c;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    return-object p2
.end method

.method public i(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljx/a;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Ljx/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljx/a;->g(Ljx/c;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljx/a;->h(Landroid/view/ViewGroup;I)Ljx/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
