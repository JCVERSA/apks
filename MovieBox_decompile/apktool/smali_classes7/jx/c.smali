.class public Ljx/c;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/transsnet/login/R$id;->index_layout:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ljx/c;->a:Landroid/view/View;

    .line 11
    .line 12
    sget v0, Lcom/transsnet/login/R$id;->index_tv:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Ljx/c;->b:Landroid/widget/TextView;

    .line 21
    .line 22
    sget v0, Lcom/transsnet/login/R$id;->name:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v0, p0, Ljx/c;->c:Landroid/widget/TextView;

    .line 31
    .line 32
    sget v0, Lcom/transsnet/login/R$id;->code:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Ljx/c;->d:Landroid/widget/TextView;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic f(Lcom/transsnet/login/country/SelectCountryViewModel;Lcom/transsnet/loginapi/bean/Country;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ljx/c;->h(Lcom/transsnet/login/country/SelectCountryViewModel;Lcom/transsnet/loginapi/bean/Country;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic h(Lcom/transsnet/login/country/SelectCountryViewModel;Lcom/transsnet/loginapi/bean/Country;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/login/country/SelectCountryViewModel;->r(Lcom/transsnet/loginapi/bean/Country;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public g(Lcom/transsnet/loginapi/bean/Country;Lcom/transsnet/login/country/SelectCountryViewModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Ljx/b;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Ljx/b;-><init>(Lcom/transsnet/login/country/SelectCountryViewModel;Lcom/transsnet/loginapi/bean/Country;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getIndex()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Ljx/c;->a:Landroid/view/View;

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p2, p0, Ljx/c;->a:Landroid/view/View;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Ljx/c;->b:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getIndex()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p2, p0, Ljx/c;->c:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCountry()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Ljx/c;->d:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCodeAndAdd()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
