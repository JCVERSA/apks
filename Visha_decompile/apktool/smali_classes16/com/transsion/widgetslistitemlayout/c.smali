.class public Lcom/transsion/widgetslistitemlayout/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslistitemlayout/c$g;,
        Lcom/transsion/widgetslistitemlayout/c$h;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/EditText;

.field public d:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public e:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/LinearLayout;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Ljava/lang/String;

.field public final p:Ljava/util/List;

.field public q:Lcom/transsion/widgetslistitemlayout/c$h;

.field public r:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->p:Ljava/util/List;

    new-instance v0, Lcom/transsion/widgetslistitemlayout/c$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/c$a;-><init>(Lcom/transsion/widgetslistitemlayout/c;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_icon_small_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space025:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/c;->n:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslistitemlayout/c;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslistitemlayout/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/c;->l:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslistitemlayout/c;)Lcom/transsion/widgetslistitemlayout/c$h;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->q:Lcom/transsion/widgetslistitemlayout/c$h;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslistitemlayout/c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->g()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslistitemlayout/c;Landroid/widget/EditText;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/c;->v(Landroid/widget/EditText;Z)V

    return-void
.end method

.method public static y(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public B(Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/c;->n(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public C()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->o:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->q:Lcom/transsion/widgetslistitemlayout/c$h;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/transsion/widgetslistitemlayout/c$h;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public E(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_info:I

    sget v1, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_info_hios:I

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_disable:I

    sget v1, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_disable_hios:I

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public F(Landroid/widget/EditText;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method public G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/c;->l:Z

    return-void
.end method

.method public H(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->j:Z

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5

    if-nez p4, :cond_5

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->i:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/c;->j:Z

    return-void
.end method

.method public J(Lcom/transsion/widgetslistitemlayout/c$h;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->q:Lcom/transsion/widgetslistitemlayout/c$h;

    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/c;->m:Z

    return-void
.end method

.method public L(ZLjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v1, p3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move v0, p2

    move-object p2, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v1, p3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    goto :goto_3

    :cond_4
    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    :goto_3
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    :goto_4
    invoke-virtual {p0, p3, p1}, Lcom/transsion/widgetslistitemlayout/c;->A(Landroid/widget/EditText;Landroid/widget/EditText;)V

    iput-object p2, p0, Lcom/transsion/widgetslistitemlayout/c;->o:Ljava/lang/String;

    return-object p2
.end method

.method public M(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public N(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public O(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    return-void
.end method

.method public P(ZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/transsion/widgetslistitemlayout/c;->d:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v2, 0x8

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslistitemlayout/c;->e:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz v3, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean p2, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/transsion/widgetslistitemlayout/c;->g:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    if-le p2, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-eqz p1, :cond_6

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/transsion/widgetslistitemlayout/c;->h:I

    :goto_3
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p2, v1, :cond_7

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public Q(Landroid/widget/TextView;Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslistitemlayout/c;->F(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/c;->M(Landroid/widget/TextView;)V

    if-eqz p2, :cond_2

    new-instance p3, Lcom/transsion/widgetslistitemlayout/c$f;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslistitemlayout/c$f;-><init>(Lcom/transsion/widgetslistitemlayout/c;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/c;->N(Landroid/widget/TextView;)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/transsion/widgetslistitemlayout/c;->F(Landroid/widget/EditText;Z)V

    if-eqz p2, :cond_4

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public f(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->r:Landroid/text/TextWatcher;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final j(IZLjava/lang/Runnable;)Landroid/widget/EditText;
    .locals 3

    new-instance v0, Lcom/transsion/widgetslistitemlayout/c$b;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/transsion/widgetslistitemlayout/c$b;-><init>(Lcom/transsion/widgetslistitemlayout/c;Landroid/content/Context;Ljava/lang/Runnable;)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_info:I

    sget v2, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_info_hios:I

    invoke-static {p3, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p3

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_subhead_font:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_dimen_subhead_font_line_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLineHeight(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget p1, Lcom/transsion/widgetslistitemlayout/R$drawable;->os_edit_text_cursor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextCursorDrawable(I)V

    new-instance p1, Lcom/transsion/widgetslistitemlayout/c$c;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslistitemlayout/c$c;-><init>(Lcom/transsion/widgetslistitemlayout/c;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lcom/transsion/widgetslistitemlayout/c$d;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslistitemlayout/c$d;-><init>(Lcom/transsion/widgetslistitemlayout/c;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public final k()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 4

    new-instance v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/OSIconTextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_icon_small_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space025:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/16 v1, 0x10

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslistitemlayout/R$string;->os_Close_fill:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_icon_mini_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/transsion/widgetslistitemlayout/c$e;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/c$e;-><init>(Lcom/transsion/widgetslistitemlayout/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public l(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_describe_title_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/c;->m:Z

    xor-int/lit8 v1, v1, 0x1

    const v2, 0x800015

    invoke-virtual {p0, v2, v1, p4}, Lcom/transsion/widgetslistitemlayout/c;->j(IZLjava/lang/Runnable;)Landroid/widget/EditText;

    move-result-object p4

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p4, v0, v1, v3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    new-instance p3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p4, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->k()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/widgetslistitemlayout/c;->d:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslistitemlayout/c;->f(Landroid/widget/TextView;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public m(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const v0, 0x800033

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/transsion/widgetslistitemlayout/c;->j(IZLjava/lang/Runnable;)Landroid/widget/EditText;

    move-result-object p3

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/transsion/widgetslistitemlayout/R$id;->lil_subtitle:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/c;->h:I

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->g:Landroid/widget/LinearLayout;

    const p1, 0x800015

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->k()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c;->e:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/c;->f(Landroid/widget/TextView;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public n(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public o()Landroid/widget/EditText;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/c;->n:I

    return p0
.end method

.method public q()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->f:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public r()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setOnEditFocusChangeListener(Lcom/transsion/widgetslistitemlayout/c$g;)V
    .locals 0

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public u()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method public final v(Landroid/widget/EditText;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_primary:I

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_primary_hios:I

    invoke-static {v2, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/c;->j:Z

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_info:I

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_info_hios:I

    invoke-static {v2, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/c;->j:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->j:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->C()V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/transsion/widgetslistitemlayout/c;->P(ZZ)V

    return-void
.end method

.method public w()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    return p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/c;->l:Z

    return p0
.end method

.method public z(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/c;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p2}, Lcom/transsion/widgetslistitemlayout/c;->y(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/widgetslistitemlayout/c;->k:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c;->c:Landroid/widget/EditText;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p2, p0, Landroid/view/View;

    if-eqz p2, :cond_2

    check-cast p0, Landroid/view/View;

    invoke-static {p1, p0}, Lcom/transsion/widgetslistitemlayout/c;->y(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method
