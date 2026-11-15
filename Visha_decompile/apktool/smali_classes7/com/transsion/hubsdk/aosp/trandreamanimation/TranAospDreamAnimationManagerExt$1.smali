.class Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;
.super Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    invoke-direct {p0}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamAnimationEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->access$100(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    invoke-interface {v1, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;->onDreamAnimationEvent(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
