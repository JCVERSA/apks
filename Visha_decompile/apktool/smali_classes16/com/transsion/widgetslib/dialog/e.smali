.class public final Lcom/transsion/widgetslib/dialog/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/e$a;
    }
.end annotation


# instance fields
.field public A:[Z

.field public B:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public C:I

.field public D:Landroid/database/Cursor;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Z

.field public N:Ljava/lang/CharSequence;

.field public O:Z

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Z

.field public n:Z

.field public o:Landroid/content/DialogInterface$OnCancelListener;

.field public p:Landroid/content/DialogInterface$OnDismissListener;

.field public q:Landroid/content/DialogInterface$OnKeyListener;

.field public r:I

.field public s:Landroid/view/View;

.field public t:[Ljava/lang/CharSequence;

.field public u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public v:Landroid/widget/ListAdapter;

.field public w:Landroid/content/DialogInterface$OnClickListener;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->h:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/widgetslib/dialog/e;->C:I

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->H:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->M:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/widgetslib/dialog/e;->P:I

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/e;->a:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->m:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->n:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/e;->b()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleView(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessageView(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/transsion/widgetslib/dialog/e;->r:I

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->s:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->f0(ILandroid/view/View;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->G:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIsAlert(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->f:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->g:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->N(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->h:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setPositiveButtonEnable(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->i:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->N(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->k:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->N(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->I:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setButtonVertical(Z)V

    iget v0, p0, Lcom/transsion/widgetslib/dialog/e;->L:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setNoBtnBottomInsets(I)V

    iget v0, p0, Lcom/transsion/widgetslib/dialog/e;->P:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setInputMessagePosition(I)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->A:[Z

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/e;->B:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->Y([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->D:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/e;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/e;->B:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->W(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->y:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->d0([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->v:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->D:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->a0(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->c0(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->v:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->b0(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->z:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->O([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->U([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->u:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->v:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->D:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->R(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_a
    :goto_1
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->v:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->S(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->N:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->O:Z

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/e;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->Z(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V

    :cond_d
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->y:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/transsion/widgetslib/dialog/e;->C:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setCheckedItem(I)V

    :cond_e
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->H:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setAutoDismiss(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->J:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIsInputDialog(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->z:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setButtonChoiceDialog(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->K:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIsAppDialogFragment(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->m:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setCancelable(Z)V

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/e;->n:Z

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->b:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->Q:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->b:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->R:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->e:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->f:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->S:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->f:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->i:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->T:Z

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->i:Ljava/lang/CharSequence;

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->k:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->U:Z

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->k:Ljava/lang/CharSequence;

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->N:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->W:Z

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->N:Ljava/lang/CharSequence;

    :cond_5
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/e;->V:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->N:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->N:Ljava/lang/CharSequence;

    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/e;->X:Z

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/e;->W:Z

    invoke-static {v0, v1, v2}, Lolb;->c([Ljava/lang/CharSequence;ZZ)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/e;->t:[Ljava/lang/CharSequence;

    :cond_7
    return-void
.end method
