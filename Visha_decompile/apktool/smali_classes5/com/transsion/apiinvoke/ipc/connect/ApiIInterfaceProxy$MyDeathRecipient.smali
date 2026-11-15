.class Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;


# direct methods
.method private constructor <init>(Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;->this$0:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;-><init>(Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;->this$0:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->remove()V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;->this$0:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->mCallback:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;->binderDied()V

    :cond_0
    return-void
.end method
