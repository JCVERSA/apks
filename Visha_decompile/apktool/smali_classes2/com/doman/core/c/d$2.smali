.class final Lcom/doman/core/c/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/j;

.field final synthetic b:Lcom/doman/core/c/d;


# direct methods
.method public constructor <init>(Lcom/doman/core/c/d;Lcom/doman/core/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/c/d$2;->b:Lcom/doman/core/c/d;

    iput-object p2, p0, Lcom/doman/core/c/d$2;->a:Lcom/doman/core/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/doman/core/c/d$2;->a:Lcom/doman/core/a/j;

    iget-object v0, v0, Lcom/doman/core/a/j;->e:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/c/d$2;->b:Lcom/doman/core/c/d;

    iget-object p0, p0, Lcom/doman/core/c/d$2;->a:Lcom/doman/core/a/j;

    invoke-static {v0, p0}, Lcom/doman/core/c/d;->a(Lcom/doman/core/c/d;Lcom/doman/core/a/j;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/doman/core/c/d$2;->b:Lcom/doman/core/c/d;

    iget-object v1, p0, Lcom/doman/core/c/d$2;->a:Lcom/doman/core/a/j;

    invoke-static {v0, v1}, Lcom/doman/core/c/d;->a(Lcom/doman/core/c/d;Lcom/doman/core/a/j;)V

    :try_start_0
    invoke-static {}, Lcom/doman/core/d/p;->a()Lcom/doman/core/d/p;

    move-result-object v0

    iget-object p0, p0, Lcom/doman/core/c/d$2;->a:Lcom/doman/core/a/j;

    sget-object v1, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    new-instance v2, Lcom/doman/core/d/p$1;

    invoke-direct {v2, v0, p0}, Lcom/doman/core/d/p$1;-><init>(Lcom/doman/core/d/p;Lcom/doman/core/a/j;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
