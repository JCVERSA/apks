.class public Lcom/transsion/widgetslib/dialog/PromptController$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->X(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->b:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->b:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->p(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->k(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$m;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptController;->r:[Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->k(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$m;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController$m;->setSelectedPst(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->q(Lcom/transsion/widgetslib/dialog/PromptController;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->b:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p2}, Lcom/transsion/widgetslib/dialog/PromptController;->m(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$i;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->k(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$m;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/dialog/PromptController$m;->r(I)Z

    move-result p0

    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    :cond_1
    return-void
.end method
