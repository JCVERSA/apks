.class public Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;
    }
.end annotation


# instance fields
.field inLanguage:Ljava/lang/String;

.field inType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

.field inVoice:Ljava/lang/String;

.field outLanguage:Ljava/lang/String;

.field outSpeed:F

.field outType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

.field outVoice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inLanguage:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outLanguage:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inVoice:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outVoice:Ljava/lang/String;

    iput p7, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outSpeed:F

    return-void
.end method


# virtual methods
.method public getInLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getInType()Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    return-object p0
.end method

.method public getInVoice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inVoice:Ljava/lang/String;

    return-object p0
.end method

.method public getOutLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getOutSpeed()F
    .locals 0

    iget p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outSpeed:F

    return p0
.end method

.method public getOutType()Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    return-object p0
.end method

.method public getOutVoice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outVoice:Ljava/lang/String;

    return-object p0
.end method

.method public setInLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inLanguage:Ljava/lang/String;

    return-void
.end method

.method public setInType(Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    return-void
.end method

.method public setInVoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->inVoice:Ljava/lang/String;

    return-void
.end method

.method public setOutLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outLanguage:Ljava/lang/String;

    return-void
.end method

.method public setOutSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outSpeed:F

    return-void
.end method

.method public setOutType(Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outType:Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean$DataType;

    return-void
.end method

.method public setOutVoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechConfigBean;->outVoice:Ljava/lang/String;

    return-void
.end method
