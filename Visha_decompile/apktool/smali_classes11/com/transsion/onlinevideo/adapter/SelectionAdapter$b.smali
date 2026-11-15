.class public Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/adapter/SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/ImageView;

.field public final r:Landroid/widget/ImageView;

.field public final s:Landroid/view/View;

.field public final synthetic t:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->t:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/transsion/onlinevideo/R$id;->tv_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->p:Landroid/widget/TextView;

    sget p1, Lcom/transsion/onlinevideo/R$id;->iv_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->q:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/onlinevideo/R$id;->item_root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->s:Landroid/view/View;

    sget p1, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->r:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;ILub9;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->c(ILub9;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Lub9;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lub9;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lub9;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectionAdapter"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lub9;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->q:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lub9;->c()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lub9;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->t:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-static {v1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->h(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->t:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-static {v1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->c(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lub9;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/onlinevideo/R$style;->os_semibold_font:I

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->r:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lub9;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->t:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-static {v1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->g(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->s:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->s:Landroid/view/View;

    new-instance v1, Ltb9;

    invoke-direct {v1, p0, p2, p1}, Ltb9;-><init>(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;ILub9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic c(ILub9;Landroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->t:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-static {p3}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->d(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->t:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    invoke-static {p0}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->d(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$a;->a(ILub9;)V

    :cond_0
    return-void
.end method
