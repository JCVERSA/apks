.class Lcom/questionnaire/sdk/QuestionnaireClient$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/QuestionnaireClient;->p(Lcom/questionnaire/sdk/QuestionnaireClient$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

.field final synthetic val$callback:Lcom/questionnaire/sdk/QuestionnaireClient$c;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/QuestionnaireClient$c;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    iput-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->val$callback:Lcom/questionnaire/sdk/QuestionnaireClient$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->h(Lcom/questionnaire/sdk/QuestionnaireClient;)Lcom/questionnaire/sdk/IQuestionnaireService;

    move-result-object v0

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/questionnaire/sdk/IQuestionnaireService;->getQuestionnaireData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "QuestionnaireClient"

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQuestionnaires qaDataList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v2, "getQuestionnaires qaDataList == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->val$callback:Lcom/questionnaire/sdk/QuestionnaireClient$c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Lcom/questionnaire/sdk/QuestionnaireClient$c;->a(Ljava/util/List;)V

    :goto_0
    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1, v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->e(Lcom/questionnaire/sdk/QuestionnaireClient;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->val$callback:Lcom/questionnaire/sdk/QuestionnaireClient$c;

    invoke-interface {v1, v0}, Lcom/questionnaire/sdk/QuestionnaireClient$c;->a(Ljava/util/List;)V

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$7;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "question_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "invoke_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
