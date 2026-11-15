.class public Lcom/questionnaire/sdk/QuestionDetailBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scoreDesc:Lcom/questionnaire/sdk/ScoreDescBean;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionDetailBean;->answers:Ljava/util/List;

    return-object p0
.end method

.method public getScoreDesc()Lcom/questionnaire/sdk/ScoreDescBean;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionDetailBean;->scoreDesc:Lcom/questionnaire/sdk/ScoreDescBean;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionDetailBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAnswers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionDetailBean;->answers:Ljava/util/List;

    return-void
.end method

.method public setScoreDesc(Lcom/questionnaire/sdk/ScoreDescBean;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionDetailBean;->scoreDesc:Lcom/questionnaire/sdk/ScoreDescBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionDetailBean;->title:Ljava/lang/String;

    return-void
.end method
