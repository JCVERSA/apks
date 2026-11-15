.class Lcom/transsion/transfer/androidasync/future/Continuation$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lcom/transsion/transfer/androidasync/future/c;)Lcom/transsion/transfer/androidasync/future/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/future/c;

.field final synthetic b:Lcom/transsion/transfer/androidasync/future/Continuation;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/future/Continuation;Lcom/transsion/transfer/androidasync/future/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation$b;->b:Lcom/transsion/transfer/androidasync/future/Continuation;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/Continuation$b;->a:Lcom/transsion/transfer/androidasync/future/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onContinue(Lcom/transsion/transfer/androidasync/future/Continuation;Lst/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation$b;->a:Lcom/transsion/transfer/androidasync/future/c;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-interface {p2, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
