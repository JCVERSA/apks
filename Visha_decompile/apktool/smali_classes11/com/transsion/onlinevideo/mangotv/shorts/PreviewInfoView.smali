.class public Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ScrollView;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_expand:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    .line 3
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->b:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->n()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    .line 7
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->b:Landroid/content/Context;

    .line 8
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->n()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    .line 11
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->b:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->n()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->r(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->q(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->s(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$layout;->layout_short_info:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_collapse:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->scroll_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    new-instance v1, Lwe8;

    invoke-direct {v1, p0}, Lwe8;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    new-instance v1, Lxe8;

    invoke-direct {v1, p0}, Lxe8;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->b:Landroid/content/Context;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->j:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->o()V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/text/style/ImageSpan;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p0, 0x0

    const/16 v2, 0x21

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    return-object p0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->j:I

    if-le v0, v2, :cond_0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    if-nez v0, :cond_0

    const-string v0, "collapseContent"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->k(Landroid/text/Layout;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_collapse:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f:Landroid/widget/TextView;

    new-instance v1, Lue8;

    invoke-direct {v1, p0}, Lue8;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_collapse:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lve8;

    invoke-direct {v0, p0}, Lve8;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final k(Landroid/text/Layout;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->m(Landroid/text/Layout;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v0, "..."

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_expand:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f:Landroid/widget/TextView;

    new-instance v1, Lye8;

    invoke-direct {v1, p0}, Lye8;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v2, -0x1

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->j()V

    :cond_0
    return-void
.end method

.method public final m(Landroid/text/Layout;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, " "

    if-ge v0, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i:Ljava/lang/String;

    add-int/2addr v1, v0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_short_info_start:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->b:Landroid/content/Context;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h()V

    return-void
.end method

.method public final synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->l()V

    return-void
.end method

.method public final synthetic r(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {p2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v0
.end method

.method public final synthetic s(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    invoke-virtual {p2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->g:Landroid/widget/ScrollView;

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->h:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->j()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->d:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
