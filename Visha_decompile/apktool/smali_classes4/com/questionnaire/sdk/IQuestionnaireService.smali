.class public interface abstract Lcom/questionnaire/sdk/IQuestionnaireService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/questionnaire/sdk/IQuestionnaireService$Stub;,
        Lcom/questionnaire/sdk/IQuestionnaireService$Default;
    }
.end annotation


# virtual methods
.method public abstract getQuestionnaireData(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/QuestionnaireData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uploadQuestionnaireResult(Lcom/questionnaire/sdk/QuestionnaireData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
