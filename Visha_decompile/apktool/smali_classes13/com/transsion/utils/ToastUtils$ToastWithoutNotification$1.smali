.class Lcom/transsion/utils/ToastUtils$ToastWithoutNotification$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/utils/ToastUtils$d;


# direct methods
.method public constructor <init>(Lcom/transsion/utils/ToastUtils$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/ToastUtils$ToastWithoutNotification$1;->this$0:Lcom/transsion/utils/ToastUtils$d;

    invoke-virtual {p0}, Lcom/transsion/utils/ToastUtils$d;->cancel()V

    return-void
.end method
