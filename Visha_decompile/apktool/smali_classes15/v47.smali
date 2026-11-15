.class public final Lv47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu47;


# instance fields
.field public final a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V
    .locals 1

    const-string v0, "osBaseBottomSheetDialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 8

    iget-object v0, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getContainerViewBinding()Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;

    move-result-object v0

    iget-object v1, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v1}, Lolb;->j0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v1}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v1}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v1}, Lolb;->d0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v4}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v4}, Lolb;->j0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetsbottomsheet/R$dimen;->os_bottom_sheet_large_margin_bottom_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_2
    if-nez v1, :cond_5

    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v4}, Lolb;->X(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lolb;->p0(Landroid/view/Window;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v4}, Lolb;->u0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lolb;->x(Landroid/content/res/Resources;)I

    move-result v4

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetsbottomsheet/R$dimen;->os_bottom_sheet_inset_bottom_nav_gone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetsbottomsheet/R$dimen;->os_bottom_sheet_inset_bottom_nav_gone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    iget-object v5, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_7

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_6

    iget-object v6, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {v6}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetsbottomsheet/R$dimen;->os_bottom_sheet_large_margin_bottom_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_7
    iget-object v5, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->i:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_8

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lv47;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getDragSpaceTop()I

    move-result p0

    iput p0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updBottomPadding: paddingBottom = "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " adaptLargeScreen = "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "OSBaseBottomSheetDialog"

    invoke-static {v5, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz v1, :cond_9

    iget-object p1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    new-instance p2, Lv47$a;

    invoke-direct {p2}, Lv47$a;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->g:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->j:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget-object p2, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget-object v0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_9
    iget-object v1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->j:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object v1, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v5, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->e:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    if-eqz p1, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p0, p2, v1, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->d:Landroid/widget/RelativeLayout;

    new-instance p1, Lv47$b;

    invoke-direct {p1}, Lv47$b;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, v0, Lcom/transsion/widgetsbottomsheet/databinding/OsBottomSheetContainerBinding;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_3
    return-void
.end method
