.class public Lcom/questionnaire/sdk/QuestionnaireClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/questionnaire/sdk/QuestionnaireClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/questionnaire/sdk/QuestionnaireClient;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p2}, Lcom/questionnaire/sdk/IQuestionnaireService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/questionnaire/sdk/IQuestionnaireService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/questionnaire/sdk/QuestionnaireClient;->i(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/IQuestionnaireService;)Lcom/questionnaire/sdk/IQuestionnaireService;

    iget-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    invoke-static {p1}, Lcom/questionnaire/sdk/QuestionnaireClient;->l(Lcom/questionnaire/sdk/QuestionnaireClient;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;

    invoke-direct {p2, p0}, Lcom/questionnaire/sdk/QuestionnaireClient$2$1;-><init>(Lcom/questionnaire/sdk/QuestionnaireClient$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireClient$2;->b:Lcom/questionnaire/sdk/QuestionnaireClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/questionnaire/sdk/QuestionnaireClient;->i(Lcom/questionnaire/sdk/QuestionnaireClient;Lcom/questionnaire/sdk/IQuestionnaireService;)Lcom/questionnaire/sdk/IQuestionnaireService;

    return-void
.end method
