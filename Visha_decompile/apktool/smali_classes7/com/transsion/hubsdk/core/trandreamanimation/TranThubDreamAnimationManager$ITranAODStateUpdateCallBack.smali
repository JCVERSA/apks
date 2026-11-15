.class Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$AODCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ITranAODStateUpdateCallBack"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;->this$0:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;->mCallback:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;

    return-void
.end method


# virtual methods
.method public onUpdateAODState(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$ITranAODStateUpdateCallBack;->mCallback:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;->onUpdateAODState(I)V

    :cond_0
    return-void
.end method
