.class public Lcom/transsion/xuanniao/account/login/view/OppO0OO;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/login/view/OppO0OO$a;,
        Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/util/ArrayList;

.field public p:Landroid/content/Context;

.field public q:Lcom/transsion/xuanniao/account/login/view/OppO0OO$a;

.field public r:Z

.field public s:Landroid/text/BidiFormatter;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->r:Z

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->s:Landroid/text/BidiFormatter;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->t:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "7"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->code:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->isSelected:Z

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->code:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->displayName:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->country:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iput-boolean v3, v2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->isSelected:Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->p:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getEnName(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object p2, p1

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->country:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->isSelected:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    const-string v0, "#"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-boolean v2, v2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->isSelected:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->country:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->t:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCountries selectedCc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.palm.id.log"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    aget-object p1, v2, v1

    aget-object v0, v2, v5

    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    array-length v3, v2

    if-ne v3, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_3

    aget-object p1, v2, v1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    aget-object p1, v2, v1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;->p:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;->q:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->s:Landroid/text/BidiFormatter;

    const-string v2, "+"

    invoke-static {v2}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;->r:Landroid/widget/RadioButton;

    iget-boolean v1, p2, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;->r:Landroid/widget/RadioButton;

    new-instance v1, Lcom/transsion/xuanniao/account/login/view/a;

    invoke-direct {v1, p0, p2}, Lcom/transsion/xuanniao/account/login/view/a;-><init>(Lcom/transsion/xuanniao/account/login/view/OppO0OO;Lcom/transsion/xuanniao/account/model/data/CountryData$Country;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/xuanniao/account/login/view/b;

    invoke-direct {v0, p0, p2}, Lcom/transsion/xuanniao/account/login/view/b;-><init>(Lcom/transsion/xuanniao/account/login/view/OppO0OO;Lcom/transsion/xuanniao/account/model/data/CountryData$Country;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->p:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$layout;->xn_item_country:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/login/view/OppO0OO$OppO00p;-><init>(Landroid/view/View;)V

    return-object p1
.end method
