.class public final Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/view/ViewStub;

.field public final e:Landroidx/recyclerview/widget/RecyclerView;

.field public final f:Landroid/widget/RelativeLayout;

.field public final g:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/FrameLayout;

.field public final j:Landroid/view/View;

.field public final k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/view/ViewStub;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/transsion/widgetslib/widget/OSIconTextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->d:Landroid/view/ViewStub;

    iput-object p4, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->f:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->g:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object p7, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->h:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->i:Landroid/widget/FrameLayout;

    iput-object p9, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->j:Landroid/view/View;

    iput-object p10, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->k:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;
    .locals 13

    sget v0, Lcom/transsion/netdisk/R$id;->iv_logo:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->main_empty_view:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->rc_upload_video_view:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->rl_title_bar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->title_bar_back:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->tv_title:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->upload_bottom_layout:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->upload_bottom_view:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->view_padding_start:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    new-instance v0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/view/ViewStub;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/transsion/widgetslib/widget/OSIconTextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;
    .locals 2

    sget v0, Lcom/transsion/netdisk/R$layout;->layout_cloud_upload_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->a(Landroid/view/View;)Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method
