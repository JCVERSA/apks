.class public final synthetic Lzl8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/questionnaire/sdk/QuestionnaireClient$a;

.field public final synthetic c:Lcom/questionnaire/sdk/dao/QuestionClientData;


# direct methods
.method public synthetic constructor <init>(Lcom/questionnaire/sdk/QuestionnaireClient$a;Lcom/questionnaire/sdk/dao/QuestionClientData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzl8;->b:Lcom/questionnaire/sdk/QuestionnaireClient$a;

    iput-object p2, p0, Lzl8;->c:Lcom/questionnaire/sdk/dao/QuestionClientData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lzl8;->b:Lcom/questionnaire/sdk/QuestionnaireClient$a;

    iget-object p0, p0, Lzl8;->c:Lcom/questionnaire/sdk/dao/QuestionClientData;

    invoke-static {v0, p0}, Lcom/questionnaire/sdk/QuestionnaireClient$a;->a(Lcom/questionnaire/sdk/QuestionnaireClient$a;Lcom/questionnaire/sdk/dao/QuestionClientData;)V

    return-void
.end method
