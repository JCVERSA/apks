.class public final synthetic Lcom/questionnaire/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/questionnaire/sdk/QuestionnaireClient$8;

.field public final synthetic c:Lcom/questionnaire/sdk/dao/QuestionClientData;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient$8;Lcom/questionnaire/sdk/dao/QuestionClientData;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/questionnaire/sdk/a;->b:Lcom/questionnaire/sdk/QuestionnaireClient$8;

    iput-object p2, p0, Lcom/questionnaire/sdk/a;->c:Lcom/questionnaire/sdk/dao/QuestionClientData;

    iput-wide p3, p0, Lcom/questionnaire/sdk/a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/questionnaire/sdk/a;->b:Lcom/questionnaire/sdk/QuestionnaireClient$8;

    iget-object v1, p0, Lcom/questionnaire/sdk/a;->c:Lcom/questionnaire/sdk/dao/QuestionClientData;

    iget-wide v2, p0, Lcom/questionnaire/sdk/a;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/questionnaire/sdk/QuestionnaireClient$8;->a(Lcom/questionnaire/sdk/QuestionnaireClient$8;Lcom/questionnaire/sdk/dao/QuestionClientData;J)V

    return-void
.end method
