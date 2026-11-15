.class public Lcom/questionnaire/sdk/QuestionnaireClient$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/QuestionnaireClient;->v(Lcom/questionnaire/sdk/dao/QuestionClientData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/questionnaire/sdk/dao/QuestionClientData;

.field public final synthetic b:Lcom/questionnaire/sdk/QuestionnaireClient;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    iput-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->a:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/questionnaire/sdk/QuestionnaireClient$b;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/questionnaire/sdk/QuestionnaireClient$b;->d(Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    return-void
.end method

.method public static synthetic c(Lcom/questionnaire/sdk/QuestionnaireClient$b;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/questionnaire/sdk/QuestionnaireClient$b;->e(Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "QuestionnaireClient"

    const-string v1, "showBubble onBubble"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.idea.questionnaire"

    const-string v2, "com.idea.questionnaire.questionnaire.WebQuestionnaireActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->a:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-virtual {v1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->a:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-virtual {v1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "APPNAME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->a:Lcom/questionnaire/sdk/dao/QuestionClientData;

    new-instance v1, Lbm8;

    invoke-direct {v1, p0, v0}, Lbm8;-><init>(Lcom/questionnaire/sdk/QuestionnaireClient$b;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    invoke-static {v1}, Lpia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d(Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lem8;->e(Landroid/content/Context;)Lem8;

    move-result-object p0

    invoke-virtual {p1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lem8;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic e(Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 1

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

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

.method public onClose()V
    .locals 2

    const-string v0, "QuestionnaireClient"

    const-string v1, "showBubble onClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$b;->a:Lcom/questionnaire/sdk/dao/QuestionClientData;

    new-instance v1, Lam8;

    invoke-direct {v1, p0, v0}, Lam8;-><init>(Lcom/questionnaire/sdk/QuestionnaireClient$b;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    invoke-static {v1}, Lpia;->a(Ljava/lang/Runnable;)V

    return-void
.end method
