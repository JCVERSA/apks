.class public Lcom/transsion/widgets/CustomOsTabLayout;
.super Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;
.source "SourceFile"


# instance fields
.field private disableColor:I

.field private disableSelectedColor:I

.field private normalColor:I

.field private selectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/widgets/CustomOsTabLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/widgets/CustomOsTabLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$color;->os_text_secondary_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/CustomOsTabLayout;->normalColor:I

    sget v1, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    sget v2, Lcom/transsion/common/R$attr;->os_platform_disabled_color:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/CustomOsTabLayout;->selectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$color;->os_platform_disabled_ims_solid_color_hios:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/CustomOsTabLayout;->disableSelectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$color;->text_disabled_color:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/CustomOsTabLayout;->disableColor:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setTabChildEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->getTabLayout()Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabChildEnable(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgets/CustomOsTabLayout;->normalColor:I

    iget p0, p0, Lcom/transsion/widgets/CustomOsTabLayout;->selectedColor:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabTextColors(II)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/widgets/CustomOsTabLayout;->disableColor:I

    iget p0, p0, Lcom/transsion/widgets/CustomOsTabLayout;->disableSelectedColor:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabTextColors(II)V

    :cond_1
    :goto_0
    return-void
.end method
