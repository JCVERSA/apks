.class public Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/playercommon/whatsapp/WhatsappFile;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Z

.field public p:Landroid/content/Context;

.field public volatile q:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$layout;->adapter_whatsapp:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->p:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getDocumentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getDocumentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_cover:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_canplay:I

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isVideo()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->ifl_root:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_download:I

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;-><init>(Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isDefStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSaving()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    :goto_1
    return-void
.end method

.method public final i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 5

    sget v0, Lcom/transsion/sniffer_load/R$id;->pb_saving:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_download:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->o:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb_select:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v4, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->o:Z

    if-eqz v4, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->o:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0, p1, v2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    return-void
.end method

.method public j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->o:Z

    return p0
.end method

.method public l(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 1

    sget p2, Lcom/transsion/sniffer_load/R$id;->pb_saving:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_download:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->cb_select:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p2, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->o:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    return-void
.end method

.method public final s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 1

    sget p2, Lcom/transsion/sniffer_load/R$id;->pb_saving:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_download:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->cb_select:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->o:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final u(Lcom/chad/library/adapter/base/BaseViewHolder;Z)V
    .locals 0

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Lcom/transsion/widgets/InterceptFrameLayout;

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/InterceptFrameLayout;->setChildClickable(Z)Lcom/transsion/widgets/InterceptFrameLayout;

    move-result-object p0

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public v(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {v0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isDefStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
