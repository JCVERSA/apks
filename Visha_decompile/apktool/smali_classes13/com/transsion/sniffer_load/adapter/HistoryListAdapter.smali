.class public Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;,
        Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;,
        Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/sniffer_load/data/ReviewHistory;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final t:I


# instance fields
.field public o:Z

.field public p:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;

.field public q:Ljava/util/ArrayList;

.field public r:Ljava/util/ArrayList;

.field public s:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_history_url:I

    sput v0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->t:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$layout;->rv_history_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->r:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/sniffer_load/data/ReviewHistory;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->r(Lcom/transsion/sniffer_load/data/ReviewHistory;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/TextView;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->l(Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/TextView;[B)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/sniffer_load/data/ReviewHistory;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public A(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->p:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;

    return-void
.end method

.method public final B(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;)V
    .locals 0

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lb23;->o(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/sniffer_load/data/ReviewHistory;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    return-void
.end method

.method public final d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_history_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->o:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V
    .locals 5

    sget v0, Lcom/transsion/sniffer_load/R$id;->history_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/sniffer_load/R$id;->custom_history_cover:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->j(Lcom/transsion/sniffer_load/data/ReviewHistory;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->t:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getImageUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getImageUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/transsion/sniffer_load/data/ReviewHistory;->bitmap:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    iget-object p2, p2, Lcom/transsion/sniffer_load/data/ReviewHistory;->bitmap:[B

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->B(Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    invoke-virtual {p0, p2, v1, p1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->u(Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/data/ReviewHistory;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    :goto_0
    return-void
.end method

.method public final j(Lcom/transsion/sniffer_load/data/ReviewHistory;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getImageUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uri:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getImageUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p1, Lcom/transsion/sniffer_load/data/ReviewHistory;->bitmap:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "blob:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "text:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final synthetic l(Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/TextView;[B)V
    .locals 4

    sget v0, Lcom/transsion/sniffer_load/R$id;->history_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    sget v0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->t:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 p0, 0x8

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V
    .locals 2

    .line 2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "payload_checkbox_state"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/data/ReviewHistory;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget p2, Lcom/transsion/sniffer_load/R$layout;->rv_history_date_item:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    sget p2, Lcom/transsion/sniffer_load/R$layout;->rv_history_item:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V
    .locals 4

    iget-wide v0, p2, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$id;->date_title:I

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/sniffer_load/R$string;->sniffer_history_today:I

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/sniffer_load/R$id;->date_title:I

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/sniffer_load/R$string;->sniffer_history_yesterody:I

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/sniffer_load/R$id;->date_title:I

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    sget p0, Lcom/transsion/sniffer_load/R$id;->v_line:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public setOnSelectListener(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->s:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;

    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V
    .locals 3

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_history_title:I

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_history_url:I

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->g(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    return-void
.end method

.method public final u(Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->p:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->p:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getId()J

    move-result-wide v1

    new-instance v3, Lvq4;

    invoke-direct {v3, p0, p2, p1, p3}, Lvq4;-><init>(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/TextView;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;->a(JLcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v()V
    .locals 3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    const-string v1, "payload_checkbox_state"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public w(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->y()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->s:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;

    invoke-interface {v0, p1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;->c(Z)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    const-string v0, "payload_checkbox_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public x(Lcom/transsion/sniffer_load/data/ReviewHistory;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->s:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;

    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;->b(I)V

    const-string p1, "payload_checkbox_state"

    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Luq4;

    invoke-direct {v1}, Luq4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->o:Z

    return-void
.end method
