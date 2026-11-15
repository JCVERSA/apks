.class public Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;
.super Lcom/transsion/hubsdk/media/ITranAudioDynamicChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/media/TranThubAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAudioDynamicChangeListener"
.end annotation


# instance fields
.field mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;->this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/media/ITranAudioDynamicChangeListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;

    return-void
.end method


# virtual methods
.method public hideAudioDynamic()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;->hideAudioDynamic()V

    return-void
.end method

.method public isAudioDynamicVisiable()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;->isAudioDynamicVisiable()Z

    move-result p0

    return p0
.end method

.method public showAudioDynamicBar([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;->showAudioDynamicBar([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
