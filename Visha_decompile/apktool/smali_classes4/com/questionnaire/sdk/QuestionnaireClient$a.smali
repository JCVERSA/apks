.class public Lcom/questionnaire/sdk/QuestionnaireClient$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/questionnaire/sdk/QuestionnaireClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/questionnaire/sdk/QuestionnaireClient;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic a(Lcom/questionnaire/sdk/QuestionnaireClient$a;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/questionnaire/sdk/QuestionnaireClient$a;->b(Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lem8;->e(Landroid/content/Context;)Lem8;

    move-result-object p0

    invoke-virtual {p1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lem8;->a(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "QuestionnaireClient"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "handle msg EVENT_SHOW_NPS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->b(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/questionnaire/sdk/dao/QuestionClientData;

    iget-object v2, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v2, v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->f(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    :pswitch_1
    const-string v0, "handle msg EVENT_SHOW_DIRECT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->b(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/questionnaire/sdk/dao/QuestionClientData;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.idea.questionnaire"

    const-string v2, "com.idea.questionnaire.questionnaire.WebQuestionnaireActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "QID"

    invoke-virtual {p1}, Lcom/questionnaire/sdk/dao/QuestionClientData;->getQuestionnaireId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPNAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v1}, Lcom/questionnaire/sdk/QuestionnaireClient;->g(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lzl8;

    invoke-direct {v0, p0, p1}, Lzl8;-><init>(Lcom/questionnaire/sdk/QuestionnaireClient$a;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    invoke-static {v0}, Lpia;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "handle msg EVENT_SHOW_BUBBLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->b(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/questionnaire/sdk/dao/QuestionClientData;

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p0, p1}, Lcom/questionnaire/sdk/QuestionnaireClient;->c(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
