.class public Lcom/questionnaire/sdk/QuestionTitleBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private maxShow:I

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/QuestionDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private submitFailTip:Ljava/lang/String;

.field private submitSuccTip:Ljava/lang/String;

.field private triggerCond:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxShow()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->maxShow:I

    return p0
.end method

.method public getQuestions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/QuestionDetailBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->questions:Ljava/util/List;

    return-object p0
.end method

.method public getSubmitFailTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->submitFailTip:Ljava/lang/String;

    return-object p0
.end method

.method public getSubmitSuccTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->submitSuccTip:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggerCond()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->triggerCond:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->type:I

    return p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setMxShow(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->maxShow:I

    return-void
.end method

.method public setQuestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/QuestionDetailBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->questions:Ljava/util/List;

    return-void
.end method

.method public setSubmitFailTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->submitFailTip:Ljava/lang/String;

    return-void
.end method

.method public setSubmitSuccTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->submitSuccTip:Ljava/lang/String;

    return-void
.end method

.method public setTriggerCond(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->triggerCond:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/QuestionTitleBean;->type:I

    return-void
.end method
