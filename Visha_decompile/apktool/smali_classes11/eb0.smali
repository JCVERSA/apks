.class public abstract Leb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Landroid/view/View;

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/util/List;

.field public k:Lcom/transsion/widgets/popup/BasePopupWindow;

.field public l:Landroid/view/View;

.field public m:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 8

    const/16 v6, 0xf0

    const/16 v7, 0x168

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Leb0;-><init>(Landroid/content/Context;Landroid/view/View;IZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Leb0;->c:I

    .line 4
    iput v0, p0, Leb0;->d:I

    .line 5
    iput-object p1, p0, Leb0;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Leb0;->f:Landroid/view/View;

    .line 7
    iput p3, p0, Leb0;->b:I

    .line 8
    iput-boolean p4, p0, Leb0;->e:Z

    .line 9
    iput p5, p0, Leb0;->g:I

    .line 10
    iput p6, p0, Leb0;->h:I

    .line 11
    iput p7, p0, Leb0;->i:I

    return-void
.end method

.method public static synthetic a(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Leb0;->m(Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V

    return-void
.end method

.method public static synthetic b(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Leb0;->l(Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgw4;

    invoke-interface {v3}, Lgw4;->isCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Leb0;->g:I

    if-le v2, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final d(Ljava/util/List;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgw4;

    invoke-interface {v2}, Lgw4;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ge v1, p1, :cond_2

    move p0, p1

    :cond_2
    return p0
.end method

.method public final e(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgw4;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lgw4;->setCheck(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Leb0;->k:Lcom/transsion/widgets/popup/BasePopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/popup/BasePopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public abstract g()Lcom/chad/library/adapter/base/BaseQuickAdapter;
.end method

.method public h()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Leb0;->l:Landroid/view/View;

    return-object p0
.end method

.method public abstract i()I
.end method

.method public final j(Ljava/util/List;)Ljava/util/List;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgw4;

    invoke-interface {v0}, Lgw4;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public abstract k(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public final synthetic l(Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-boolean p4, p0, Leb0;->e:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Leb0;->e(Ljava/util/List;)V

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lgw4;

    invoke-interface {p4, v0}, Lgw4;->setCheck(Z)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lgw4;

    invoke-interface {p4}, Lgw4;->isCheck()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-interface {p4, v1}, Lgw4;->setCheck(Z)V

    invoke-virtual {p0, p1}, Leb0;->c(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Lgw4;->isCheck()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-interface {p4, p1}, Lgw4;->setCheck(Z)V

    iget-object p1, p0, Leb0;->a:Landroid/content/Context;

    sget p2, Lcom/transsion/playercommon/R$string;->choose_at_most:I

    iget p0, p0, Leb0;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Leb0;->d(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Lgw4;->isCheck()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-interface {p4, p1}, Lgw4;->setCheck(Z)V

    iget-object p0, p0, Leb0;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/playercommon/R$string;->choose_at_least:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {p3, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    if-eqz p2, :cond_5

    iget-boolean p3, p0, Leb0;->e:Z

    if-eqz p3, :cond_4

    iget-object p0, p0, Leb0;->k:Lcom/transsion/widgets/popup/BasePopupWindow;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgets/popup/BasePopupWindow;->dismiss()V

    :cond_3
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transsion/widgets/popup/ISelectCallback;->selectCallback(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Leb0;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transsion/widgets/popup/ISelectCallback;->selectCallback(Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final synthetic m(Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V
    .locals 2

    invoke-virtual {p0, p1}, Leb0;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-boolean p0, p0, Leb0;->e:Z

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgw4;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/transsion/widgets/popup/ISelectCallback;->selectOnDismissSingleChoice(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Lcom/transsion/widgets/popup/ISelectCallback;->selectOnDismissMultiChoice(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Leb0;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public o(I)Leb0;
    .locals 0

    iput p1, p0, Leb0;->c:I

    return-object p0
.end method

.method public p(I)Leb0;
    .locals 0

    iput p1, p0, Leb0;->d:I

    return-object p0
.end method

.method public q(Ljava/util/List;Lgw4;Lcom/transsion/widgets/popup/ISelectCallback;)V
    .locals 1

    iget-boolean v0, p0, Leb0;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Leb0;->r(Ljava/util/List;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "its not single choice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r(Ljava/util/List;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgw4;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Lgw4;->setCheck(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Leb0;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Leb0;->i()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Leb0;->k(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Leb0;->k(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Leb0;->l:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Leb0;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object p1, p0, Leb0;->j:Ljava/util/List;

    invoke-virtual {p0}, Leb0;->g()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Leb0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/widgets/popup/BasePopupWindow;->create(Landroid/content/Context;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    new-instance v2, Lcb0;

    invoke-direct {v2, p0, p1, p3}, Lcb0;-><init>(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v1, p0, Leb0;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setTarget(Landroid/view/View;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    iget v1, p0, Leb0;->b:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setGravity(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    iget v1, p0, Leb0;->c:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setOffsetX(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    iget v1, p0, Leb0;->d:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setOffsetY(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    iget-object v1, p0, Leb0;->a:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setElevation(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    iget-object v1, p0, Leb0;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Leb0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$drawable;->os_popup_background:I

    iget-object v3, p0, Leb0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$style;->popup_anim:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setAnimationStyle(I)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setContentView(Landroid/view/View;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setOutsideTouchable(Z)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setTouchable(Z)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object p2

    new-instance v0, Ldb0;

    invoke-direct {v0, p0, p1, p3}, Ldb0;-><init>(Leb0;Ljava/util/List;Lcom/transsion/widgets/popup/ISelectCallback;)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;->build()Lcom/transsion/widgets/popup/BasePopupWindow;

    move-result-object p1

    iput-object p1, p0, Leb0;->k:Lcom/transsion/widgets/popup/BasePopupWindow;

    invoke-virtual {p1}, Lcom/transsion/widgets/popup/BasePopupWindow;->show()V

    return-void
.end method
