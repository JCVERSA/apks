.class public Lcom/transsion/xuanniao/account/center/view/OppOOO0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/OppOOO0$a;,
        Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/util/ArrayList;

.field public p:Landroid/content/Context;

.field public q:Lcom/transsion/xuanniao/account/center/view/OppOOO0$a;

.field public r:I

.field public s:Landroid/text/BidiFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->r:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->r:I

    div-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->r:I

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->s:Landroid/text/BidiFormatter;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->o:Ljava/util/ArrayList;

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
    .locals 8

    check-cast p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->defaultFlag:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->p:Landroid/content/Context;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_address_default:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v4, v3

    :goto_0
    iget-object v5, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->label:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->label:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v5, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    sget v6, Ltech/palm/lib/widget/TagTextView;->TAGS_INDEX_AT_END:I

    invoke-virtual {v5, v6}, Ltech/palm/lib/widget/TagTextView;->setTagsIndex(I)V

    iget-object v5, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ltech/palm/lib/widget/TagTextView;->setTagTextSize(I)V

    iget-object v5, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/transsion/xuanniao/account/R$color;->os_text_tertiary_color:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ltech/palm/lib/widget/TagTextView;->setTagTextColor(I)V

    iget-object v5, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    sget v6, Lcom/transsion/xuanniao/account/R$drawable;->xn_radius_gray_bg:I

    invoke-virtual {v5, v6}, Ltech/palm/lib/widget/TagTextView;->setTagsBackgroundStyle(I)V

    const-string v5, "  "

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    iget-object v3, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->userName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ltech/palm/lib/widget/TagTextView;->setMultiTagAndContent(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :goto_2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ltech/palm/lib/widget/TagTextView;->setSingleTagAndContent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->s:Landroid/text/BidiFormatter;

    iget-object v3, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->phone:Ljava/lang/String;

    invoke-static {v3}, Lfq7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->country:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->country:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->province:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->district:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->province:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->district:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->province:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->district:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->province:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->province:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->district:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->district:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v2, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->s:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->s:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/k;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/k;-><init>(Lcom/transsion/xuanniao/account/center/view/OppOOO0;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/xuanniao/account/center/view/l;

    invoke-direct {p2, p0, v0}, Lcom/transsion/xuanniao/account/center/view/l;-><init>(Lcom/transsion/xuanniao/account/center/view/OppOOO0;Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->p:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$layout;->xn_item_address:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;-><init>(Landroid/view/View;)V

    return-object p1
.end method
