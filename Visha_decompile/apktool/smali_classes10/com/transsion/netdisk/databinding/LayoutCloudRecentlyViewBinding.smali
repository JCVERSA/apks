.class public final Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/view/ViewStub;

.field public final d:Landroid/widget/ImageView;

.field public final e:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Landroid/widget/RelativeLayout;

.field public final h:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/view/ViewStub;Landroid/widget/ImageView;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/transsion/widgetslib/widget/OSIconTextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->b:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->c:Landroid/view/ViewStub;

    iput-object p3, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->d:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->e:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object p5, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->g:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->h:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object p8, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->i:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->j:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;
    .locals 12

    sget v0, Lcom/transsion/netdisk/R$id;->bottom_action_new_bar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->iv_logo:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->pull_damping_layout:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->rc_recently_video_view:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->rl_title_bar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->title_bar_back:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->tv_title:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->view_padding_start:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/view/ViewStub;Landroid/widget/ImageView;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/transsion/widgetslib/widget/OSIconTextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;
    .locals 2

    sget v0, Lcom/transsion/netdisk/R$layout;->layout_cloud_recently_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->a(Landroid/view/View;)Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method
