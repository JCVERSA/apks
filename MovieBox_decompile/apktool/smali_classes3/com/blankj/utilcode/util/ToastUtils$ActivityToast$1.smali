.class Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
