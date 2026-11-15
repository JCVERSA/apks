.class public Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;
.super Landroid/media/AudioManager$VolumeGroupCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AospVolumeGroupChangedCallbackExt"
.end annotation


# instance fields
.field mCallback:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;->this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;

    invoke-direct {p0}, Landroid/media/AudioManager$VolumeGroupCallback;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;->mCallback:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;

    return-void
.end method


# virtual methods
.method public onAudioVolumeGroupChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;->mCallback:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;->onAudioVolumeGroupChanged(II)V

    :cond_0
    return-void
.end method
