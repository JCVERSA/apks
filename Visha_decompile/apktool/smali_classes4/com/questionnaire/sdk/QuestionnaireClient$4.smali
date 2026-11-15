.class public Lcom/questionnaire/sdk/QuestionnaireClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/questionnaire/sdk/view/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/QuestionnaireClient;->y(Lcom/questionnaire/sdk/dao/QuestionClientData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/questionnaire/sdk/view/a;

.field public final synthetic b:Lcom/questionnaire/sdk/dao/QuestionClientData;

.field public final synthetic c:Lcom/questionnaire/sdk/QuestionnaireClient;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/view/a;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->c:Lcom/questionnaire/sdk/QuestionnaireClient;

    iput-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->a:Lcom/questionnaire/sdk/view/a;

    iput-object p3, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->b:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/questionnaire/sdk/QuestionnaireClient$4;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/questionnaire/sdk/QuestionnaireClient$4;->d(Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    return-void
.end method

.method public static synthetic c(Lcom/questionnaire/sdk/QuestionnaireClient$4;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/questionnaire/sdk/QuestionnaireClient$4;->e(Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const-string v0, "QuestionnaireClient"

    const-string v1, "showScoreDialog onScore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->c:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->m(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;

    invoke-direct {v1, p0}, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;-><init>(Lcom/questionnaire/sdk/QuestionnaireClient$4;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/questionnaire/sdk/QuestionnaireData;

    invoke-direct {v0}, Lcom/questionnaire/sdk/QuestionnaireData;-><init>()V

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->b:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-virtual {v1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/questionnaire/sdk/QuestionnaireData;->setQuestionnaireId(Ljava/lang/String;)V

    new-instance v1, Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;

    invoke-direct {v1}, Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;->setInputX(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;

    invoke-direct {v1}, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;->setIndex(I)V

    invoke-virtual {v1, p1}, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;->setUserInput(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/questionnaire/sdk/ScoreResultBean;

    invoke-direct {v1}, Lcom/questionnaire/sdk/ScoreResultBean;-><init>()V

    iget-object v2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->b:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-virtual {v2}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/questionnaire/sdk/ScoreResultBean;->setQuestionnaireId(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/questionnaire/sdk/ScoreResultBean;->setQuestions(Ljava/util/List;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/questionnaire/sdk/QuestionnaireData;->setResult(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->c:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p1, v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->n(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/QuestionnaireData;)V

    iget-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->b:Lcom/questionnaire/sdk/dao/QuestionClientData;

    new-instance v0, Lcm8;

    invoke-direct {v0, p0, p1}, Lcm8;-><init>(Lcom/questionnaire/sdk/QuestionnaireClient$4;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    invoke-static {v0}, Lpia;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final synthetic d(Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 1

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->c:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lem8;->e(Landroid/content/Context;)Lem8;

    move-result-object p0

    invoke-virtual {p1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getShowCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lem8;->n(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic e(Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->c:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lem8;->e(Landroid/content/Context;)Lem8;

    move-result-object p0

    invoke-virtual {p1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lem8;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onClose()V
    .locals 2

    const-string v0, "QuestionnaireClient"

    const-string v1, "showScoreDialog onClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->b:Lcom/questionnaire/sdk/dao/QuestionClientData;

    new-instance v1, Ldm8;

    invoke-direct {v1, p0, v0}, Ldm8;-><init>(Lcom/questionnaire/sdk/QuestionnaireClient$4;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    invoke-static {v1}, Lpia;->a(Ljava/lang/Runnable;)V

    return-void
.end method
