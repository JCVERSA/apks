.class Lcom/transsion/push/tracker/PushTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/tracker/PushTracker;->i(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/tracker/PushTracker;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$key:Lcom/transsion/push/tracker/Tracker$KEY;


# direct methods
.method public constructor <init>(Lcom/transsion/push/tracker/PushTracker;Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    iput-object p2, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$key:Lcom/transsion/push/tracker/Tracker$KEY;

    iput-object p3, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    iget-object v1, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$key:Lcom/transsion/push/tracker/Tracker$KEY;

    iget-object v2, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/transsion/push/tracker/PushTracker;->a(Lcom/transsion/push/tracker/PushTracker;Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Llk8;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lmk8;->b()Lmk8;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmk8;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    invoke-static {v1}, Lcom/transsion/push/tracker/PushTracker;->b(Lcom/transsion/push/tracker/PushTracker;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    invoke-static {p0, v1, v0}, Lcom/transsion/push/tracker/PushTracker;->c(Lcom/transsion/push/tracker/PushTracker;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method
