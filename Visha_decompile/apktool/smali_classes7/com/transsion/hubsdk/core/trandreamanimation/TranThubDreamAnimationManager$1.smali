.class Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

.field final synthetic val$cb:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;->this$0:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;->val$cb:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamAnimationEvent(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;->val$cb:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;->onDreamAnimationEvent(I)V

    return-void
.end method
