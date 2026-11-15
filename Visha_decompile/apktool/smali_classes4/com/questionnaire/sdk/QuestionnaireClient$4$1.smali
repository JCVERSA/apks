.class Lcom/questionnaire/sdk/QuestionnaireClient$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/QuestionnaireClient$4;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/questionnaire/sdk/QuestionnaireClient$4;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient$4;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$4;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->a:Lcom/questionnaire/sdk/view/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$4;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->b:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-virtual {v0}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getSuccessTip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$4;

    iget-object v0, v0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->c:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->m(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$4;

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->b:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-virtual {p0}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getSuccessTip()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4$1;->this$1:Lcom/questionnaire/sdk/QuestionnaireClient$4;

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$4;->c:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->m(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/questionnaire/sdk/R$string;->questionsdk_submitSuccessTip:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
