.class public Lcom/transsion/widgetslib/widget/InvertArrowSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/InvertArrowSpinner$SavedState;
    }
.end annotation


# instance fields
.field public b:Z

.field public c:Lqb9;

.field public d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

.field public e:Z

.field public f:Landroid/widget/SpinnerAdapter;

.field public g:Landroid/database/DataSetObserver;

.field public h:Ljava/util/List;

.field public i:Landroid/widget/ListView;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->j:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_spinner_background_material_blue_open:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_liquid_popup_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->e:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Lcom/transsion/widgetslib/widget/OSPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->e:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Landroid/app/Activity;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->m()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->g:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;-><init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->g:Landroid/database/DataSetObserver;

    :cond_0
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->getAdapter()Lqb9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->getAdapter()Lqb9;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lqb9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqb9;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    return-object p0
.end method

.method public getPopupList()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    return-object p0
.end method

.method public getPopupWindow()Lcom/transsion/widgetslib/widget/OSPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    return-object p0
.end method

.method public final h(Landroid/widget/SpinnerAdapter;)Ljava/util/List;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge p0, v0, :cond_4

    invoke-interface {p1, p0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->f:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->h:Ljava/util/List;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->l(Landroid/widget/SpinnerAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->h:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-nez v1, :cond_2

    new-instance v1, Lcom/transsion/widgetslib/widget/OSPopupWindow;

    sget v4, Lcom/transsion/widgetslib/R$style;->OsLiquidPopupWindowStyle:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/transsion/widgetslib/widget/OSPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$a;-><init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    new-instance v1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$b;-><init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->g()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->g:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->j:Z

    return-void
.end method

.method public final l(Landroid/widget/SpinnerAdapter;)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->h(Landroid/widget/SpinnerAdapter;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->f:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->n(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final n(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->h(Landroid/widget/SpinnerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    if-nez v2, :cond_1

    new-instance v2, Lqb9;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lqb9;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    invoke-virtual {v0}, Lqb9;->notifyDataSetChanged()V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->l(Landroid/widget/SpinnerAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->h:Ljava/util/List;

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->j()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->p()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final o(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->g:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->j:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setDisableAnimation(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setDisableAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->f:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->o(Landroid/widget/SpinnerAdapter;)V

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/Spinner;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$SavedState;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$SavedState;->showDropdown:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;-><init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->e:Z

    iput-boolean p0, v1, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$SavedState;->showDropdown:Z

    return-object v1
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    invoke-static {v0, v1}, Lolb;->A0(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public performClick()Z
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->m()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_spinner_background_material_blue_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqb9;->setDropDownSpinner(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->J(ZZ)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->p()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->d:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->c:Lqb9;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->P(Landroid/view/View;I)V

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performClick OSPopupWindow error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_spinner"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->f:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->o(Landroid/widget/SpinnerAdapter;)V

    .line 3
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->f:Landroid/widget/SpinnerAdapter;

    .line 4
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->k(Landroid/widget/SpinnerAdapter;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->n(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setNeedRemoveAllGlobalLayoutListeners(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->b:Z

    return-void
.end method
