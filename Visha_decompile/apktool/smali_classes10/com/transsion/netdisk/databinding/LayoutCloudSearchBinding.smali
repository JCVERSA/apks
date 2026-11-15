.class public final Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroid/view/ViewStub;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/RelativeLayout;

.field public final i:Landroid/view/ViewStub;

.field public final j:Landroidx/recyclerview/widget/RecyclerView;

.field public final k:Landroidx/recyclerview/widget/RecyclerView;

.field public final l:Landroidx/recyclerview/widget/RecyclerView;

.field public final m:Landroid/widget/LinearLayout;

.field public final n:Landroid/widget/LinearLayout;

.field public final o:Landroid/view/View;

.field public final p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/view/ViewStub;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/view/ViewStub;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->b:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->c:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->d:Landroid/view/ViewStub;

    iput-object p4, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->e:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->f:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->g:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->h:Landroid/widget/RelativeLayout;

    iput-object p8, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->i:Landroid/view/ViewStub;

    iput-object p9, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->j:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p10, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->k:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p11, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->l:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p12, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->m:Landroid/widget/LinearLayout;

    iput-object p13, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->n:Landroid/widget/LinearLayout;

    iput-object p14, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->o:Landroid/view/View;

    iput-object p15, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->p:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;
    .locals 19

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/netdisk/R$id;->btn_privacy_browse:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->empty_view:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->iv_arrow:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->iv_tag:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->ll_search:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->ll_search_network:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->main_empty_view:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/view/ViewStub;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->rv_history:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->rv_recommend:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->rv_search_list:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->search_bar:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->search_content:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->search_file:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->tv_privacy_browse:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    new-instance v1, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/view/ViewStub;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/view/ViewStub;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;
    .locals 2

    sget v0, Lcom/transsion/netdisk/R$layout;->layout_cloud_search:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->a(Landroid/view/View;)Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method
