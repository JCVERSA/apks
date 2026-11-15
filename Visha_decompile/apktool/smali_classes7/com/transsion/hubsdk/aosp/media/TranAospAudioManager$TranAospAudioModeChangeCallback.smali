.class public Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospAudioModeChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospAudioModeChangeCallback"
.end annotation


# instance fields
.field mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospAudioModeChangeCallback;->this$0:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospAudioModeChangeCallback;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;

    return-void
.end method


# virtual methods
.method public onAudioModeChange(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager$TranAospAudioModeChangeCallback;->mListener:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;->onAudioModeChange(ILjava/lang/String;)V

    return-void
.end method
