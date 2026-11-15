.class public Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;
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
    name = "QuestionInput"
.end annotation


# instance fields
.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;->x:Ljava/lang/String;

    return-object p0
.end method

.method public setInputX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/ScoreResultBean$QuestionInput;->x:Ljava/lang/String;

    return-void
.end method
