.class public final Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

.field public final c:Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

.field public final d:Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

.field public final e:Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

.field public final f:Lcom/transsion/widgetsliquid/view/OSLiquidButton;

.field public final g:Lcom/transsion/widgetsliquid/view/OSLiquidButton;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroid/widget/LinearLayout;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;Lcom/transsion/widgetsliquid/view/OSLiquidButton;Lcom/transsion/widgetsliquid/view/OSLiquidButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->b:Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->c:Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

    iput-object p3, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->d:Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

    iput-object p4, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->e:Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

    iput-object p5, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->f:Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    iput-object p6, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->g:Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    iput-object p7, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->h:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->i:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->j:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->k:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->l:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;
    .locals 12

    move-object v2, p0

    check-cast v2, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->button_left:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

    if-eqz v3, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->button_right:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->img_left:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->img_right:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->left_container:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->right_container:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->title_container:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->tv_subtitle:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/widgetsbottomsheet/R$id;->tv_title:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    new-instance p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v11}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;-><init>(Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;Lcom/transsion/widgetsliquid/view/OSLiquidButton;Lcom/transsion/widgetsliquid/view/OSLiquidButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;
    .locals 2

    sget v0, Lcom/transsion/widgetsbottomsheet/R$layout;->os_bottom_sheet_title:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->a(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->b:Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetTitleBinding;->b()Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;

    move-result-object p0

    return-object p0
.end method
