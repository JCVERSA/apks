.class public Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;
    }
.end annotation


# instance fields
.field public final b:Landroid/view/LayoutInflater;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;->c:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_item_scope:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;

    invoke-direct {p3}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;-><init>()V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->tvTitle:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;->a:Landroid/widget/TextView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->cbChecked:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;

    :goto_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpk7$a;

    iget-object v1, p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lpk7$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;->b:Landroid/widget/CheckBox;

    iget-boolean v2, p1, Lpk7$a;->c:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;->b:Landroid/widget/CheckBox;

    iget-boolean v2, p1, Lpk7$a;->c:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lpk7$a;->d:Z

    if-eqz v2, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p3, p3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$b;->b:Landroid/widget/CheckBox;

    new-instance v0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$a;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;Lpk7$a;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method
