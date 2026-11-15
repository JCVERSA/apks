.class Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;
.super Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAudioVolumeListener"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;->mListener:Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;

    return-void
.end method


# virtual methods
.method public onAudioVolumeChange(IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;->mListener:Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;->onAudioVolumeChange(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method
