.class Lcom/transsion/push/PushManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;


# direct methods
.method public constructor <init>(Lcom/transsion/push/PushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/PushManager$7;->this$0:Lcom/transsion/push/PushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/push/config/PushRepository;->syncActive()V

    return-void
.end method
