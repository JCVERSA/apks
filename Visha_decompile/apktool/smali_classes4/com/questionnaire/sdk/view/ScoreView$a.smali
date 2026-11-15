.class public Lcom/questionnaire/sdk/view/ScoreView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/view/ScoreView;->f(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/questionnaire/sdk/view/ScoreView;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/view/ScoreView;I)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->c:Lcom/questionnaire/sdk/view/ScoreView;

    iput p2, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->c:Lcom/questionnaire/sdk/view/ScoreView;

    invoke-static {p1}, Lcom/questionnaire/sdk/view/ScoreView;->a(Lcom/questionnaire/sdk/view/ScoreView;)V

    iget-object p1, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->c:Lcom/questionnaire/sdk/view/ScoreView;

    iget v0, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/questionnaire/sdk/view/ScoreView;->b(Lcom/questionnaire/sdk/view/ScoreView;I)V

    iget-object p1, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->c:Lcom/questionnaire/sdk/view/ScoreView;

    invoke-static {p1}, Lcom/questionnaire/sdk/view/ScoreView;->c(Lcom/questionnaire/sdk/view/ScoreView;)Lcom/questionnaire/sdk/view/ScoreView$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->c:Lcom/questionnaire/sdk/view/ScoreView;

    invoke-static {p1}, Lcom/questionnaire/sdk/view/ScoreView;->c(Lcom/questionnaire/sdk/view/ScoreView;)Lcom/questionnaire/sdk/view/ScoreView$b;

    move-result-object p1

    iget p0, p0, Lcom/questionnaire/sdk/view/ScoreView$a;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/questionnaire/sdk/view/ScoreView$b;->a(I)V

    :cond_0
    return-void
.end method
