.class public Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final d:Landroid/view/ViewOutlineProvider;


# instance fields
.field public b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

.field public c:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar$a;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar$a;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->d:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/transsion/widgetslib/R$style;->OS_FooterMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 7
    sget p3, Lcom/transsion/widgetslib/R$layout;->os_footer_menu_2:I

    const/4 p4, 0x1

    .line 8
    invoke-virtual {p1, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView_minHeight:I

    const/high16 p3, 0x42800000    # 64.0f

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 11
    sget p1, Lcom/transsion/widgetslib/R$id;->os_menu_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    .line 12
    sget p1, Lcom/transsion/widgetslib/R$id;->os_menu_center:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->c:Landroid/widget/ImageButton;

    .line 13
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView_menuContentBg:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 14
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView_overflowMenuGravity:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 15
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    if-eq p1, p3, :cond_0

    .line 16
    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget p3, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->a(I)V

    .line 19
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActionBar, lp = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", overflowMenuGravity = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "os_menu"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView_overflowMenuBgColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_1
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView_overflowMenuColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    const-class p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 24
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->setOverMenuColor(I)V

    .line 25
    :cond_2
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView_centerBtnBgColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 26
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->c:Landroid/widget/ImageButton;

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_3
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FooterMenuView_centerBtnColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static setupViewFab(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->d:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    sget v0, Lcom/transsion/widgetslib/R$dimen;->floating_action_button_translation_z:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public getCenterBtn()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->c:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getOverflowMenu()Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const-string p0, "os_menu"

    const-string v0, "ActionBar, onAttachedToWindow()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    const-string p0, "os_menu"

    const-string v0, "ActionBar, onDetachedFromWindow()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOverMenuColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/FootActionBar;->b:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->setOverMenuColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$anim;->os_footer_menu_enter:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$anim;->os_footer_menu_exit:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
