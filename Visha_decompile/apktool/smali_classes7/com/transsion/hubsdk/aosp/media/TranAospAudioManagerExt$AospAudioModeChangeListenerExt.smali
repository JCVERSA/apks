.class public Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospAudioModeChangeListenerExt;
.super Lcom/transsion/os/audio/IAudioModeChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AospAudioModeChangeListenerExt"
.end annotation


# instance fields
.field callback:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospAudioModeChangeListenerExt;->this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;

    invoke-direct {p0}, Lcom/transsion/os/audio/IAudioModeChangeListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospAudioModeChangeListenerExt;->callback:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;

    return-void
.end method


# virtual methods
.method public onAudioModeChange(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospAudioModeChangeListenerExt;->callback:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;->onAudioModeChange(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
