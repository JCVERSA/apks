.class public Lcom/transsion/onlinevideo/adapter/SelectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;,
        Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Ljava/util/List;

.field public p:Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;

.field public final q:I

.field public final r:I

.field public s:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "#DEDEDE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->r:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->o:Ljava/util/List;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->q:I

    new-instance v0, Lsb9;

    invoke-direct {v0, p0}, Lsb9;-><init>(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;Lub9;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->i(Lub9;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->r:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->p:Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->s:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->q:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final synthetic i(Lub9;)V
    .locals 0

    invoke-virtual {p1}, Lub9;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->s:Z

    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->o:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lub9;

    invoke-virtual {p1, p0, p2}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->b(Lub9;I)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/onlinevideo/R$layout;->item_selection:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;-><init>(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->j(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->k(Landroid/view/ViewGroup;I)Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;

    move-result-object p0

    return-object p0
.end method

.method public r(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lub9;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lub9;->e(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->p:Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;

    return-void
.end method
