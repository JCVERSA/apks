.class public Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Landroid/view/View$OnFocusChangeListener;

.field public d:Landroid/view/View$OnFocusChangeListener;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->c:Landroid/view/View$OnFocusChangeListener;

    .line 4
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    .line 7
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->c:Landroid/view/View$OnFocusChangeListener;

    .line 8
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->c:Landroid/view/View$OnFocusChangeListener;

    .line 12
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public clearTextChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    invoke-super {p0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->d:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->c:Landroid/view/View$OnFocusChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->e:Z

    invoke-super {p0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->d:Landroid/view/View$OnFocusChangeListener;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->e:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->c:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setSelfOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->e:Z

    invoke-super {p0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->d:Landroid/view/View$OnFocusChangeListener;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->e:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method
