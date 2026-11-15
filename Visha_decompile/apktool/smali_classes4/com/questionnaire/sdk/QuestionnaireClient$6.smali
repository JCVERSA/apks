.class Lcom/questionnaire/sdk/QuestionnaireClient$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/QuestionnaireClient;->q(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    iput-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->j(Lcom/questionnaire/sdk/QuestionnaireClient;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->h(Lcom/questionnaire/sdk/QuestionnaireClient;)Lcom/questionnaire/sdk/IQuestionnaireService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->d(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v2}, Lcom/questionnaire/sdk/QuestionnaireClient;->k(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->j(Lcom/questionnaire/sdk/QuestionnaireClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->j(Lcom/questionnaire/sdk/QuestionnaireClient;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$6;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->j(Lcom/questionnaire/sdk/QuestionnaireClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
