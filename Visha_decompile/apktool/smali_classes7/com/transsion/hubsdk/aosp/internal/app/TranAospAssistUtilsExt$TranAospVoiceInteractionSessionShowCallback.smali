.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospVoiceInteractionSessionShowCallback"
.end annotation


# instance fields
.field public mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;->onShown()V

    :cond_0
    return-void
.end method
