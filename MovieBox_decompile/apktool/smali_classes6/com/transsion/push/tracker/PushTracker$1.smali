.class Lcom/transsion/push/tracker/PushTracker$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/tracker/PushTracker;->i(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/tracker/PushTracker;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$key:Lcom/transsion/push/tracker/Tracker$KEY;


# direct methods
.method constructor <init>(Lcom/transsion/push/tracker/PushTracker;Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$key:Lcom/transsion/push/tracker/Tracker$KEY;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$bundle:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$key:Lcom/transsion/push/tracker/Tracker$KEY;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/push/tracker/PushTracker$1;->val$bundle:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/push/tracker/PushTracker;->a(Lcom/transsion/push/tracker/PushTracker;Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/transsion/push/utils/g0;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/push/db/h;->b()Lcom/transsion/push/db/h;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lcom/transsion/push/db/h;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/transsion/push/tracker/PushTracker;->b(Lcom/transsion/push/tracker/PushTracker;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/transsion/push/tracker/PushTracker$1;->this$0:Lcom/transsion/push/tracker/PushTracker;

    .line 36
    .line 37
    invoke-static {v2, v1, v0}, Lcom/transsion/push/tracker/PushTracker;->c(Lcom/transsion/push/tracker/PushTracker;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
