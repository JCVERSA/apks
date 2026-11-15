.class Lcom/questionnaire/sdk/QuestionnaireClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/QuestionnaireClient;->z(Lcom/questionnaire/sdk/QuestionnaireData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

.field final synthetic val$result:Lcom/questionnaire/sdk/QuestionnaireData;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/QuestionnaireData;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$5;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    iput-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$5;->val$result:Lcom/questionnaire/sdk/QuestionnaireData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$5;->this$0:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->h(Lcom/questionnaire/sdk/QuestionnaireClient;)Lcom/questionnaire/sdk/IQuestionnaireService;

    move-result-object v0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$5;->val$result:Lcom/questionnaire/sdk/QuestionnaireData;

    invoke-interface {v0, p0}, Lcom/questionnaire/sdk/IQuestionnaireService;->uploadQuestionnaireResult(Lcom/questionnaire/sdk/QuestionnaireData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
