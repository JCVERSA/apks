.class public Lcom/lzy/okserver/task/PriorityRunnable;
.super Lnf8;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnf8;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnf8;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lnf8;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
