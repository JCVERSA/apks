.class Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranAospAODStateUpdateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->registerAODCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

.field final synthetic val$callback:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;->val$callback:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAODState(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$2;->val$callback:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranAODStateUpdateCallBack;->onUpdateAODState(I)V

    return-void
.end method
