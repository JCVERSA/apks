.class public Lcom/transsion/widgetslib/dialog/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/d;

.field public final b:Lcom/transsion/widgetslib/dialog/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/widgetslib/dialog/e;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/d;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    .line 5
    new-instance v1, Lcom/transsion/widgetslib/dialog/d;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/d;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/transsion/widgetslib/dialog/d;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/transsion/widgetslib/dialog/e;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 8
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/d;->c(Landroid/content/Context;Z)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    .line 9
    new-instance v1, Lcom/transsion/widgetslib/dialog/d;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/d;->c(Landroid/content/Context;Z)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/transsion/widgetslib/dialog/d;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public A(I)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public C(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public D(I)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->s:Landroid/view/View;

    iput p1, v0, Lcom/transsion/widgetslib/dialog/e;->r:I

    return-object p0
.end method

.method public E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->s:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lcom/transsion/widgetslib/dialog/e;->r:I

    return-object p0
.end method

.method public F()Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-object p0
.end method

.method public a()Lcom/transsion/widgetslib/dialog/d;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/d;->a(Lcom/transsion/widgetslib/dialog/d;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/e;->a(Lcom/transsion/widgetslib/dialog/PromptController;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/e;->m:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/e;->n:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-boolean v1, v0, Lcom/transsion/widgetslib/dialog/e;->K:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/e;->o:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/e;->p:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/e;->q:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->v:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Z)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/e;->H:Z

    return-object p0
.end method

.method public d(Z)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/e;->I:Z

    return-object p0
.end method

.method public e(Z)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/e;->m:Z

    return-object p0
.end method

.method public f(Z)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/e;->n:Z

    return-object p0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public h(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public i([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public j(I)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public l([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/e;->A:[Z

    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/e;->B:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/e;->x:Z

    return-object p0
.end method

.method public m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->i:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/e;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/e;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public o(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/e;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public p(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->k:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/e;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public q(I)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput p1, v0, Lcom/transsion/widgetslib/dialog/e;->L:I

    return-object p0
.end method

.method public r(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->o:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public s(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->p:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setInputDialog(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/e;->J:Z

    return-void
.end method

.method public t(Landroid/content/DialogInterface$OnKeyListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->q:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/e;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public v(IZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/e;->g:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/e;->G:Z

    return-object p0
.end method

.method public w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->f:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/e;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public x(I)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/d;->a(Lcom/transsion/widgetslib/dialog/d;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setPromptDialogPaddingTop(I)V

    return-object p0
.end method

.method public y(IILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput p2, p1, Lcom/transsion/widgetslib/dialog/e;->C:I

    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/e;->y:Z

    return-object p0
.end method

.method public z([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/d$a;->b:Lcom/transsion/widgetslib/dialog/e;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    iput p2, v0, Lcom/transsion/widgetslib/dialog/e;->C:I

    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/e;->y:Z

    return-object p0
.end method
