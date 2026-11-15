.class public Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/questionnaire/sdk/ScoreResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuestionResult"
.end annotation


# instance fields
.field private index:I

.field private userInput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;",
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
.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;->index:I

    return p0
.end method

.method public getUserInput()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;->userInput:Ljava/util/List;

    return-object p0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;->index:I

    return-void
.end method

.method public setUserInput(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/questionnaire/sdk/ScoreResultBean$QuestionResult;->userInput:Ljava/util/List;

    return-void
.end method
