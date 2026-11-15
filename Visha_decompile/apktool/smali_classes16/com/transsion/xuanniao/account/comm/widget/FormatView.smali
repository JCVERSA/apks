.class public Lcom/transsion/xuanniao/account/comm/widget/FormatView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public OppO00p:Landroid/widget/ListView;

.field public OppO0O0:Lwo7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 5
    sget p2, Lcom/transsion/xuanniao/account/R$layout;->xn_format_view:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO00p()V

    return-void
.end method


# virtual methods
.method public final OppO00p()V
    .locals 1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->listView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO00p:Landroid/widget/ListView;

    return-void
.end method

.method public setError(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO0O0:Lwo7;

    if-eqz p0, :cond_0

    iput p1, p0, Lwo7;->d:I

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setFormats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO0O0:Lwo7;

    if-nez v0, :cond_0

    new-instance v0, Lwo7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lwo7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO0O0:Lwo7;

    iput-object p1, v0, Lwo7;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO00p:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lwo7;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setTextStyle(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO0O0:Lwo7;

    iput p1, p0, Lwo7;->e:I

    return-void
.end method

.method public setTextStyleError(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->OppO0O0:Lwo7;

    iput p1, p0, Lwo7;->f:I

    return-void
.end method
