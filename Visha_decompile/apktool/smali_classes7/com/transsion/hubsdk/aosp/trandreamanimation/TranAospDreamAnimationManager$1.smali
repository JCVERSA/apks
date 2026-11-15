.class Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamAnimationEvent(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;->onDreamAnimationEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
