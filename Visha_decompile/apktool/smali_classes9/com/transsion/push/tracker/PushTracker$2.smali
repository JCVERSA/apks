.class Lcom/transsion/push/tracker/PushTracker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/tracker/PushTracker;->tracks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/tracker/PushTracker;


# direct methods
.method public constructor <init>(Lcom/transsion/push/tracker/PushTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/tracker/PushTracker$2;->this$0:Lcom/transsion/push/tracker/PushTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lmk8;->b()Lmk8;

    move-result-object v0

    invoke-virtual {v0}, Lmk8;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/push/tracker/PushTracker$2;->this$0:Lcom/transsion/push/tracker/PushTracker;

    invoke-static {v1}, Lcom/transsion/push/tracker/PushTracker;->b(Lcom/transsion/push/tracker/PushTracker;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/push/tracker/PushTracker$2;->this$0:Lcom/transsion/push/tracker/PushTracker;

    invoke-static {p0, v1, v0}, Lcom/transsion/push/tracker/PushTracker;->d(Lcom/transsion/push/tracker/PushTracker;Lorg/json/JSONObject;Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "No tracker content reporting"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method
