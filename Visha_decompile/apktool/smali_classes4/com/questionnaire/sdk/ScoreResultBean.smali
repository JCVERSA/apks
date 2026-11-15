.class public Lcom/questionnaire/sdk/ScoreResultBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;,
        Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;
    }
.end annotation


# instance fields
.field private questionnaireId:Ljava/lang/String;

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuestionnaireId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/ScoreResultBean;->questionnaireId:Ljava/lang/String;

    return-object p0
.end method

.method public getQuestions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/questionnaire/sdk/ScoreResultBean;->questions:Ljava/util/List;

    return-object p0
.end method

.method public setQuestionnaireId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/ScoreResultBean;->questionnaireId:Ljava/lang/String;

    return-void
.end method

.method public setQuestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/questionnaire/sdk/ScoreResultBean;->questions:Ljava/util/List;

    return-void
.end method
