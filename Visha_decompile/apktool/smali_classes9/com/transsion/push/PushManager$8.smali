.class Lcom/transsion/push/PushManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->triggerEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;

.field final synthetic val$eventParams:Ljava/lang/String;

.field final synthetic val$eventType:I


# direct methods
.method public constructor <init>(Lcom/transsion/push/PushManager;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/PushManager$8;->this$0:Lcom/transsion/push/PushManager;

    iput p2, p0, Lcom/transsion/push/PushManager$8;->val$eventType:I

    iput-object p3, p0, Lcom/transsion/push/PushManager$8;->val$eventParams:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lee3;->c()Lee3;

    move-result-object v0

    iget v1, p0, Lcom/transsion/push/PushManager$8;->val$eventType:I

    iget-object p0, p0, Lcom/transsion/push/PushManager$8;->val$eventParams:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lee3;->d(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_2

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/bean/PushMessage;

    invoke-static {v0}, Lcom/transsion/push/service/PushServiceHelper;->b(Lcom/transsion/push/bean/PushMessage;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "triggerEvent skip display during quiet hours (22:00-07:00)"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method
