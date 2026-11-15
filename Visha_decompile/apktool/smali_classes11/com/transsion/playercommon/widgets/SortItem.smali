.class public Lcom/transsion/playercommon/widgets/SortItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/SortItem$a;
    }
.end annotation


# static fields
.field public static final FROM_ALBUM:I = 0x3e9


# instance fields
.field public b:Lcom/transsion/playercommon/widgets/SortItem$a;

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/TextView;

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/transsion/widgets/BadgeView;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/transsion/playercommon/R$styleable;->SortItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/R$styleable;->SortItem_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->d:Ljava/lang/String;

    sget v1, Lcom/transsion/playercommon/R$styleable;->SortItem_sort_value:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->k:I

    sget v1, Lcom/transsion/playercommon/R$styleable;->SortItem_from:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->m:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->o:Z

    sget v0, Lcom/transsion/playercommon/R$styleable;->SortItem_arrow_icon:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->j:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->l:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SortItem;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/SortItem;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sort_manually_is_red_point"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {v1}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result v1

    iget v3, p0, Lcom/transsion/playercommon/widgets/SortItem;->k:I

    if-ne v3, v1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortItem;->n:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortItem;->n:Lcom/transsion/widgets/BadgeView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$layout;->video_sort_item:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_sort_name:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/playercommon/R$id;->iv_sort_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->e:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_theme_menu_red_point:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/BadgeView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->n:Lcom/transsion/widgets/BadgeView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_head:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->f:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->o:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    new-instance p1, Lhs9;

    invoke-direct {p1}, Lhs9;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SortItem;->b()V

    return-void
.end method

.method public getFrom()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/SortItem;->m:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/SortItem;->k:I

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/SortItem;->h:Z

    return p0
.end method

.method public performClick()Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SortItem;->toggle()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return v0
.end method

.method public setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->m:I

    return-void
.end method

.method public setOnSelectedChangeListener(Lcom/transsion/playercommon/widgets/SortItem$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->b:Lcom/transsion/playercommon/widgets/SortItem$a;

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortItem;->h:Z

    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/SortItem;->i:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SortItem;->updateIcon()V

    return-void
.end method

.method public toggle()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->i:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->i:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->h:Z

    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->b:Lcom/transsion/playercommon/widgets/SortItem$a;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/transsion/playercommon/widgets/SortItem;->i:Z

    invoke-interface {v0, p0, v1, v2}, Lcom/transsion/playercommon/widgets/SortItem$a;->a(Lcom/transsion/playercommon/widgets/SortItem;ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SortItem;->updateIcon()V

    return-void
.end method

.method public updateIcon()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->e:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->h:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->k:I

    if-ltz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->f:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->h:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->g:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->h:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/playercommon/widgets/SortItem;->l:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$color;->os_text_primary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->j:I

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortItem;->i:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_sescend_dec_up:I

    goto :goto_2

    :cond_5
    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_sescend_dec_down:I

    :goto_2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortItem;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
