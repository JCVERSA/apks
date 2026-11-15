.class public Lcom/transsion/widgetslib/dialog/InputDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/InputDialog$h;,
        Lcom/transsion/widgetslib/dialog/InputDialog$d;,
        Lcom/transsion/widgetslib/dialog/InputDialog$g;,
        Lcom/transsion/widgetslib/dialog/InputDialog$e;,
        Lcom/transsion/widgetslib/dialog/InputDialog$f;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/widgetslib/dialog/d$a;

.field public d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field public e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public f:Landroid/content/DialogInterface$OnDismissListener;

.field public g:Z

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/view/View;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Landroid/view/View;

.field public s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public t:Lcom/transsion/widgetslib/dialog/InputDialog$h;

.field public u:Lv05;

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->p:Z

    .line 4
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    .line 5
    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/d$a;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->setInputDialog(Z)V

    .line 7
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->k:I

    .line 8
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->l:I

    .line 9
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_fill_primary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->m:I

    .line 10
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->j:Landroid/view/View;

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->l()V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->p()V

    .line 13
    new-instance p1, Lcom/transsion/widgetslib/dialog/InputDialog$h;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-direct {p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$h;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->t:Lcom/transsion/widgetslib/dialog/InputDialog$h;

    .line 14
    new-instance p1, Lv05;

    invoke-direct {p1}, Lv05;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->u:Lv05;

    return-void
.end method

.method public static synthetic a(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->q(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/dialog/InputDialog;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->m:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/dialog/InputDialog;)Lv05;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->u:Lv05;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/dialog/InputDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->v:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/dialog/InputDialog;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->l:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/dialog/InputDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->g:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/dialog/InputDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->w:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/dialog/InputDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->g:Z

    return-void
.end method

.method public static synthetic q(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public final B(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog$2;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getNeedEmptyUnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->p:Z

    return p0
.end method

.method public getmEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getmErrorText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method public getmOSMaterialEditText()Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-object p0
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_input_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_padding_left_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_edit_text_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    return-void
.end method

.method public m()Lcom/transsion/widgetslib/dialog/d;
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->u:Lv05;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv05;->a(Landroid/view/Window;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$b;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d;->setOnPromptDialogStatusChangedListener(Lcom/transsion/widgetslib/dialog/d$b;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->u:Lv05;

    invoke-virtual {v2}, Lv05;->f()Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-static {v1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-static {v1}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lq05;

    invoke-direct {v3, v1}, Lq05;-><init>(Landroid/view/Window;)V

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->n:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$4;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$4;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->o:Z

    if-nez v1, :cond_4

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$c;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$c;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_4
    return-object v0
.end method

.method public n(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->u:Lv05;

    invoke-virtual {v0}, Lv05;->e()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->f:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->clearTextChangedListeners()V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->g:Z

    return-void
.end method

.method public o(I)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->o(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->p:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->o(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->j:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->input_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setDialogMode(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog$d;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getRootLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->r:Landroid/view/View;

    return-void
.end method

.method public r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->c(Z)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->t(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setHasContent(Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-void
.end method

.method public setOSMaterialEditTextError(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setErrorLine(Z)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->f:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public t(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$a;

    invoke-direct {v1, p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$a;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;Lcom/transsion/widgetslib/dialog/InputDialog$g;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public u(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$e;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->B(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-interface {p3, p1}, Lcom/transsion/widgetslib/dialog/InputDialog$e;->a(Landroid/widget/EditText;)V

    :cond_0
    return-object p0
.end method

.method public v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p3, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->B(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance p2, Lcom/transsion/widgetslib/dialog/InputDialog$d;

    invoke-direct {p2, p0, p3}, Lcom/transsion/widgetslib/dialog/InputDialog$d;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->d:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->i:Landroid/widget/TextView;

    invoke-interface {p4, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$f;->a(Landroid/widget/EditText;Landroid/widget/TextView;)V

    :cond_1
    return-object p0
.end method

.method public w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->p:Z

    return-object p0
.end method

.method public x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->c:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->n:Z

    return-object p0
.end method
