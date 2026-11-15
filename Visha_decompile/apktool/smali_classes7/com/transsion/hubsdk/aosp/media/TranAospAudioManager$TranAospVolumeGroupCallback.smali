.class public Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospVolumeGroupCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospVolumeGroupCallback"
.end annotation


# instance fields
.field mCallback:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospVolumeGroupCallback;->this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospVolumeGroupCallback;->mCallback:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;

    return-void
.end method


# virtual methods
.method public onAudioVolumeGroupChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospVolumeGroupCallback;->mCallback:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;->onAudioVolumeGroupChanged(II)V

    return-void
.end method
