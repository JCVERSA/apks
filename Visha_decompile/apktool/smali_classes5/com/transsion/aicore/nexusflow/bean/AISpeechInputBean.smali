.class public Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field interruptSignal:Z

.field language:Ljava/lang/String;

.field outVoice:Ljava/lang/String;

.field requestID:Ljava/lang/String;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->language:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->outVoice:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->interruptSignal:Z

    return-void
.end method


# virtual methods
.method public getInterruptSignal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->interruptSignal:Z

    return p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getOutVoice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->outVoice:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->requestID:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setInterruptSignal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->interruptSignal:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setOutVoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->outVoice:Ljava/lang/String;

    return-void
.end method

.method public setRequestID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->requestID:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->text:Ljava/lang/String;

    return-void
.end method
