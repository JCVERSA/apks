.class public Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;
.super Lcom/transsion/hubsdk/media/ITranAudioModeChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/media/TranThubAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAudioModeChangeListener"
.end annotation


# instance fields
.field mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;->this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/media/ITranAudioModeChangeListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;

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

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;->onAudioModeChange(ILjava/lang/String;)V

    return-void
.end method
