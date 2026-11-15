.class public final Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

.field public final c:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

.field public final d:Landroid/widget/RelativeLayout;

.field public final e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

.field public final f:Landroid/widget/ImageView;

.field public final g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

.field public final h:Landroid/widget/FrameLayout;

.field public final i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

.field public final j:Landroid/view/View;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;Landroid/widget/RelativeLayout;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;Landroid/widget/ImageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;Landroid/widget/FrameLayout;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->c:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    iput-object p3, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->d:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    iput-object p5, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->f:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    iput-object p7, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->h:Landroid/widget/FrameLayout;

    iput-object p8, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    iput-object p9, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->j:Landroid/view/View;

    iput-object p10, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->k:Landroid/view/View;

    iput-object p11, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->l:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;
    .locals 12

    move-object v2, p0

    check-cast v2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->content_bg_drawable:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->content_visible:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->drag_handler:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->drag_panel:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->drag_rect:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->panel_content:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->pull_rect:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->title_mask_top:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->touch_outside:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v11}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;Landroid/widget/RelativeLayout;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;Landroid/widget/ImageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;Landroid/widget/FrameLayout;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object p0

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;
    .locals 2

    sget v0, Lcom/transsion/widgetsbottomsheet/R$layout;->os_bottom_sheet_container:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->a(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->b()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetContainer;

    move-result-object p0

    return-object p0
.end method
