.class public Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;
.super Lcom/transsion/hubsdk/media/ITranAudioVPEventListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/media/TranThubAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAudioVPEventListener"
.end annotation


# instance fields
.field mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;->this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/media/ITranAudioVPEventListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;->onEvent(I)V

    return-void
.end method
