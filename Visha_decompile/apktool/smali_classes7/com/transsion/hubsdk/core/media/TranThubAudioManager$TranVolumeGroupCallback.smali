.class public Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranVolumeGroupCallback;
.super Lcom/transsion/hubsdk/media/ITranVolumeGroupCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/media/TranThubAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranVolumeGroupCallback"
.end annotation


# instance fields
.field private mTranVolumeGroupCallback:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranVolumeGroupCallback;->this$0:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/media/ITranVolumeGroupCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranVolumeGroupCallback;->mTranVolumeGroupCallback:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;

    return-void
.end method


# virtual methods
.method public onAudioVolumeGroupChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranVolumeGroupCallback;->mTranVolumeGroupCallback:Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;->onAudioVolumeGroupChanged(II)V

    return-void
.end method
