.class public Lcom/questionnaire/sdk/view/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/questionnaire/sdk/view/a$d;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/questionnaire/sdk/view/ScoreView;

.field public j:I

.field public k:Lcom/questionnaire/sdk/view/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/questionnaire/sdk/R$style;->Questionsdk_ScoreDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_nps_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/questionnaire/sdk/view/a;->b:Landroid/widget/ImageView;

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/questionnaire/sdk/view/a;->c:Landroid/widget/TextView;

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_negative_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/questionnaire/sdk/view/a;->d:Landroid/widget/TextView;

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_positive_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/questionnaire/sdk/view/a;->e:Landroid/widget/TextView;

    iget v0, p0, Lcom/questionnaire/sdk/view/a;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_score_view_5:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/questionnaire/sdk/view/ScoreView;

    iput-object v0, p0, Lcom/questionnaire/sdk/view/a;->i:Lcom/questionnaire/sdk/view/ScoreView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_score_view_7:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/questionnaire/sdk/view/ScoreView;

    iput-object v0, p0, Lcom/questionnaire/sdk/view/a;->i:Lcom/questionnaire/sdk/view/ScoreView;

    goto :goto_0

    :cond_1
    sget v0, Lcom/questionnaire/sdk/R$id;->questionsdk_score_view_10:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/questionnaire/sdk/view/ScoreView;

    iput-object v0, p0, Lcom/questionnaire/sdk/view/a;->i:Lcom/questionnaire/sdk/view/ScoreView;

    :goto_0
    iget-object p0, p0, Lcom/questionnaire/sdk/view/a;->i:Lcom/questionnaire/sdk/view/ScoreView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/questionnaire/sdk/view/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/questionnaire/sdk/view/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->e:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/questionnaire/sdk/view/a;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/questionnaire/sdk/view/a$b;

    invoke-direct {v1, p0}, Lcom/questionnaire/sdk/view/a$b;-><init>(Lcom/questionnaire/sdk/view/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/questionnaire/sdk/view/a;->i:Lcom/questionnaire/sdk/view/ScoreView;

    new-instance v1, Lcom/questionnaire/sdk/view/a$c;

    invoke-direct {v1, p0}, Lcom/questionnaire/sdk/view/a$c;-><init>(Lcom/questionnaire/sdk/view/a;)V

    invoke-virtual {v0, v1}, Lcom/questionnaire/sdk/view/ScoreView;->setSelectedScoreListener(Lcom/questionnaire/sdk/view/ScoreView$b;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/questionnaire/sdk/view/a;
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/view/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lcom/questionnaire/sdk/view/a$d;)Lcom/questionnaire/sdk/view/a;
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/view/a;->k:Lcom/questionnaire/sdk/view/a$d;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/questionnaire/sdk/view/a;
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/view/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/questionnaire/sdk/view/a;
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/view/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h(I)Lcom/questionnaire/sdk/view/a;
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/view/a;->j:I

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/questionnaire/sdk/R$layout;->questionsdk_score_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/questionnaire/sdk/view/a;->a()V

    invoke-virtual {p0}, Lcom/questionnaire/sdk/view/a;->b()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    new-instance p1, Lcom/questionnaire/sdk/view/a$a;

    invoke-direct {p1, p0}, Lcom/questionnaire/sdk/view/a$a;-><init>(Lcom/questionnaire/sdk/view/a;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/questionnaire/sdk/view/a;->c()V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/questionnaire/sdk/view/a;->b()V

    return-void
.end method
