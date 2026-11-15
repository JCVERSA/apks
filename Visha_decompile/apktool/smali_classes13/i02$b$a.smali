.class public Li02$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li02$b;->enqueue(Ltq0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ltq0;

.field public final synthetic c:Li02$b;


# direct methods
.method public constructor <init>(Li02$b;Ltq0;)V
    .locals 0

    iput-object p1, p0, Li02$b$a;->c:Li02$b;

    iput-object p2, p0, Li02$b$a;->b:Ltq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Li02$b$a;Ltq0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Li02$b$a;->c(Ltq0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Li02$b$a;Ltq0;Lgu8;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Li02$b$a;->d(Ltq0;Lgu8;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Ltq0;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Li02$b$a;->c:Li02$b;

    invoke-interface {p1, p0, p2}, Ltq0;->onFailure(Ljq0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic d(Ltq0;Lgu8;)V
    .locals 1

    iget-object v0, p0, Li02$b$a;->c:Li02$b;

    iget-object v0, v0, Li02$b;->c:Ljq0;

    invoke-interface {v0}, Ljq0;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Li02$b$a;->c:Li02$b;

    new-instance p2, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Ltq0;->onFailure(Ljq0;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Li02$b$a;->c:Li02$b;

    invoke-interface {p1, p0, p2}, Ltq0;->onResponse(Ljq0;Lgu8;)V

    :goto_0
    return-void
.end method

.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Li02$b$a;->c:Li02$b;

    iget-object p1, p1, Li02$b;->b:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Li02$b$a;->b:Ltq0;

    new-instance v1, Lk02;

    invoke-direct {v1, p0, v0, p2}, Lk02;-><init>(Li02$b$a;Ltq0;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 2

    iget-object p1, p0, Li02$b$a;->c:Li02$b;

    iget-object p1, p1, Li02$b;->b:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Li02$b$a;->b:Ltq0;

    new-instance v1, Lj02;

    invoke-direct {v1, p0, v0, p2}, Lj02;-><init>(Li02$b$a;Ltq0;Lgu8;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
