.class Lcom/transsion/push/utils/FirebaseUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/FirebaseUtils;->i(Lcom/transsion/push/utils/FirebaseUtils$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/transsion/push/utils/FirebaseUtils$a;


# direct methods
.method public constructor <init>(Lcom/transsion/push/utils/FirebaseUtils$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$3;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->n()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->q()Lxda;

    move-result-object v0

    new-instance v1, Lcom/transsion/push/utils/FirebaseUtils$3$a;

    invoke-direct {v1, p0}, Lcom/transsion/push/utils/FirebaseUtils$3$a;-><init>(Lcom/transsion/push/utils/FirebaseUtils$3;)V

    invoke-virtual {v0, v1}, Lxda;->b(Lpe7;)Lxda;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$3;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/push/utils/FirebaseUtils$a;->a()V

    :cond_0
    :goto_0
    return-void
.end method
