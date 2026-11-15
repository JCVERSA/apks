.class public Lcom/questionnaire/sdk/dao/QuestionClientData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private failTip:Ljava/lang/String;

.field private maxDesc:Ljava/lang/String;

.field private maxScore:I

.field private maxShow:I

.field private minDesc:Ljava/lang/String;

.field private questionnaireId:Ljava/lang/String;

.field private showCount:I

.field private showTimestamp:J

.field private successTip:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private triggerCond:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->failTip:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->maxDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxScore()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->maxScore:I

    return p0
.end method

.method public getMaxShow()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->maxShow:I

    return p0
.end method

.method public getMinDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->minDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getQuestionnaireId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->questionnaireId:Ljava/lang/String;

    return-object p0
.end method

.method public getShowCount()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->showCount:I

    return p0
.end method

.method public getShowTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->showTimestamp:J

    return-wide v0
.end method

.method public getSuccessTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->successTip:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggerCond()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->triggerCond:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->type:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setFailTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->failTip:Ljava/lang/String;

    return-void
.end method

.method public setMaxDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->maxDesc:Ljava/lang/String;

    return-void
.end method

.method public setMaxScore(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->maxScore:I

    return-void
.end method

.method public setMinDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->minDesc:Ljava/lang/String;

    return-void
.end method

.method public setMxShow(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->maxShow:I

    return-void
.end method

.method public setQuestionnaireId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->questionnaireId:Ljava/lang/String;

    return-void
.end method

.method public setShowCount(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->showCount:I

    return-void
.end method

.method public setShowTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->showTimestamp:J

    return-void
.end method

.method public setSuccessTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->successTip:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->title:Ljava/lang/String;

    return-void
.end method

.method public setTriggerCond(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->triggerCond:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/dao/QuestionClientData;->url:Ljava/lang/String;

    return-void
.end method
