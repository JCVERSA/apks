.class public final Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/widget/Button;

.field public final d:Landroid/view/ViewStub;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field public final i:Landroidx/recyclerview/widget/RecyclerView;

.field public final j:Landroid/view/View;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/FrameLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/LinearLayout;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->b:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->c:Landroid/widget/Button;

    iput-object p3, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->d:Landroid/view/ViewStub;

    iput-object p4, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->e:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p6, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->g:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->h:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object p8, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->i:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p9, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->j:Landroid/view/View;

    iput-object p10, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->k:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->l:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;
    .locals 14

    sget v0, Lcom/transsion/mimedia/R$id;->btn_save_cloud:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->error_layout:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->fl_collect_status:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->iv_avatar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->ll_header:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->pull_refresh_layout:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->rv_media_library:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->title_bar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->tv_subtitle:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    sget v0, Lcom/transsion/mimedia/R$id;->tv_title:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    new-instance v0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/FrameLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/LinearLayout;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;
    .locals 2

    sget v0, Lcom/transsion/mimedia/R$layout;->fragement_media_library_video:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->a(Landroid/view/View;)Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method
