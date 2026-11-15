.class public Lcom/transsion/livecaption/bean/SmartAnswerBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field botNickName:Ljava/lang/String;

.field callerName:Ljava/lang/String;

.field communicationTimeout:I

.field googleVoice:Ljava/lang/String;

.field language:Ljava/lang/String;

.field llmDisconnectTips:Ljava/lang/String;

.field masterNickName:Ljava/lang/String;

.field microsoftVoice:Ljava/lang/String;

.field offlinePresetContent:Ljava/lang/String;

.field onlinePresetContent:Ljava/lang/String;

.field saveRecordPath:Ljava/lang/String;

.field securityInterceptTips:Ljava/lang/String;

.field timeoutHangUpPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->callerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->masterNickName:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->botNickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->onlinePresetContent:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->offlinePresetContent:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->timeoutHangUpPrompt:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->securityInterceptTips:Ljava/lang/String;

    iput-object p8, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->llmDisconnectTips:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->language:Ljava/lang/String;

    iput-object p10, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->googleVoice:Ljava/lang/String;

    iput-object p11, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->microsoftVoice:Ljava/lang/String;

    iput p12, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->communicationTimeout:I

    iput-object p13, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->saveRecordPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/transsion/livecaption/bean/SmartAnswerBean;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/livecaption/bean/SmartAnswerBean;->clone()Lcom/transsion/livecaption/bean/SmartAnswerBean;

    move-result-object p0

    return-object p0
.end method

.method public getBotNickName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->botNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->callerName:Ljava/lang/String;

    return-object p0
.end method

.method public getCommunicationTimeout()I
    .locals 0

    iget p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->communicationTimeout:I

    return p0
.end method

.method public getGoogleVoice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->googleVoice:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLlmDisconnectTips()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->llmDisconnectTips:Ljava/lang/String;

    return-object p0
.end method

.method public getMasterNickName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->masterNickName:Ljava/lang/String;

    return-object p0
.end method

.method public getMicrosoftVoice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->microsoftVoice:Ljava/lang/String;

    return-object p0
.end method

.method public getOfflinePresetContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->offlinePresetContent:Ljava/lang/String;

    return-object p0
.end method

.method public getOnlinePresetContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->onlinePresetContent:Ljava/lang/String;

    return-object p0
.end method

.method public getSaveRecordPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->saveRecordPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityInterceptTips()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->securityInterceptTips:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeoutHangUpPrompt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->timeoutHangUpPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public setBotNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->botNickName:Ljava/lang/String;

    return-void
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->callerName:Ljava/lang/String;

    return-void
.end method

.method public setCommunicationTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->communicationTimeout:I

    return-void
.end method

.method public setGoogleVoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->googleVoice:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setLlmDisconnectTips(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->llmDisconnectTips:Ljava/lang/String;

    return-void
.end method

.method public setMasterNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->masterNickName:Ljava/lang/String;

    return-void
.end method

.method public setMicrosoftVoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->microsoftVoice:Ljava/lang/String;

    return-void
.end method

.method public setOfflinePresetContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->offlinePresetContent:Ljava/lang/String;

    return-void
.end method

.method public setOnlinePresetContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->onlinePresetContent:Ljava/lang/String;

    return-void
.end method

.method public setSaveRecordPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->saveRecordPath:Ljava/lang/String;

    return-void
.end method

.method public setSecurityInterceptTips(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->securityInterceptTips:Ljava/lang/String;

    return-void
.end method

.method public setTimeoutHangUpPrompt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SmartAnswerBean;->timeoutHangUpPrompt:Ljava/lang/String;

    return-void
.end method
