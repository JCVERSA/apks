.class public Lcom/transsion/livecaption/bean/SmartAnswerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;
    }
.end annotation


# instance fields
.field botNickName:Ljava/lang/String;

.field callerName:Ljava/lang/String;

.field dialogHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;",
            ">;"
        }
    .end annotation
.end field

.field masterNickName:Ljava/lang/String;

.field presetContent:Ljava/lang/String;

.field query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->dialogHistory:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->callerName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->masterNickName:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->botNickName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->dialogHistory:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->callerName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->masterNickName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->botNickName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->presetContent:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBotNickName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->botNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->callerName:Ljava/lang/String;

    return-object p0
.end method

.method public getDialogHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->dialogHistory:Ljava/util/List;

    return-object p0
.end method

.method public getMasterNickName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->masterNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getPresetContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->presetContent:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->query:Ljava/lang/String;

    return-object p0
.end method

.method public setBotNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->botNickName:Ljava/lang/String;

    return-void
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->callerName:Ljava/lang/String;

    return-void
.end method

.method public setDialogHistory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/livecaption/bean/SmartAnswerModel$Msg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->dialogHistory:Ljava/util/List;

    return-void
.end method

.method public setMasterNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->masterNickName:Ljava/lang/String;

    return-void
.end method

.method public setPresetContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->presetContent:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerModel;->query:Ljava/lang/String;

    return-void
.end method
