.class Lcom/mgtv/ssp/play/PlayerCore$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdStopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayerCore;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$5;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStopAdInfo(Lcom/mgmi/ssp/NativeADDataRef;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$5;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$5;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;->getStopAdInfo(Lcom/mgmi/ssp/NativeADDataRef;)V

    :cond_0
    return-void
.end method

.method public onNoAd(Lcom/mgmi/ssp/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$5;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$5;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$1000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void
.end method
