.class public Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mBotNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "botNickName"
    .end annotation
.end field

.field public mCallerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "callerName"
    .end annotation
.end field

.field public mCommunicationTimeout:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "communicationTimeout"
    .end annotation
.end field

.field public mGoogleVoice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "googleVoice"
    .end annotation
.end field

.field public mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public mLlmDisconnectTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "llmDisconnectTips"
    .end annotation
.end field

.field public mMasterNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "masterNickName"
    .end annotation
.end field

.field public mMicrosoftVoice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "microsoftVoice"
    .end annotation
.end field

.field public mMuteAnother:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "muteAnother"
    .end annotation
.end field

.field public mOfflinePresetContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlinePresetContent"
    .end annotation
.end field

.field public mOnlinePresetContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onlinePresetContent"
    .end annotation
.end field

.field public mSaveRecordPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "saveRecordPath"
    .end annotation
.end field

.field public mSecurityInterceptTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "securityInterceptTips"
    .end annotation
.end field

.field public mTimeoutHangUpPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeoutHangUpPrompt"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mCallerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mMasterNickName:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mBotNickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mOnlinePresetContent:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mOfflinePresetContent:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mTimeoutHangUpPrompt:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mSecurityInterceptTips:Ljava/lang/String;

    iput-object p8, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mLlmDisconnectTips:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mLanguage:Ljava/lang/String;

    iput-object p10, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mGoogleVoice:Ljava/lang/String;

    iput-object p11, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mMicrosoftVoice:Ljava/lang/String;

    iput p12, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mCommunicationTimeout:I

    iput-object p13, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mSaveRecordPath:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mMuteAnother:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;
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

    .line 1
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->clone()Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;

    move-result-object p0

    return-object p0
.end method
