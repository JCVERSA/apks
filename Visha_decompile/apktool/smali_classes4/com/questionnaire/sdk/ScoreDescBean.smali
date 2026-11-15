.class public Lcom/questionnaire/sdk/ScoreDescBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private maxDesc:Ljava/lang/String;

.field private minDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/ScoreDescBean;->maxDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getMinDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/ScoreDescBean;->minDesc:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/ScoreDescBean;->maxDesc:Ljava/lang/String;

    return-void
.end method

.method public setMinDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/ScoreDescBean;->minDesc:Ljava/lang/String;

    return-void
.end method
