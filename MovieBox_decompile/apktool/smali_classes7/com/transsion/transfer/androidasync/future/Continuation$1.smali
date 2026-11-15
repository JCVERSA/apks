.class Lcom/transsion/transfer/androidasync/future/Continuation$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/future/Continuation;->setCancelCallback(Lcom/transsion/transfer/androidasync/future/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/future/Continuation;

.field final synthetic val$cancel:Lcom/transsion/transfer/androidasync/future/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/future/Continuation;Lcom/transsion/transfer/androidasync/future/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation$1;->this$0:Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/Continuation$1;->val$cancel:Lcom/transsion/transfer/androidasync/future/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation$1;->val$cancel:Lcom/transsion/transfer/androidasync/future/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
