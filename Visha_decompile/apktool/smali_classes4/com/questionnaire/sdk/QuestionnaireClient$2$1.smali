.class Lcom/questionnaire/sdk/QuestionnaireClient$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/QuestionnaireClient$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient$2;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->j(Lcom/questionnaire/sdk/QuestionnaireClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->j(Lcom/questionnaire/sdk/QuestionnaireClient;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    iget-object v1, v1, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->j(Lcom/questionnaire/sdk/QuestionnaireClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->i(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/IQuestionnaireService;)Lcom/questionnaire/sdk/IQuestionnaireService;

    :try_start_0
    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$2;

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->k(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
