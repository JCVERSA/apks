.class public final Lcom/doman/core/d/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/j;

.field final synthetic b:Lcom/doman/core/d/p;


# direct methods
.method public constructor <init>(Lcom/doman/core/d/p;Lcom/doman/core/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/d/p$1;->b:Lcom/doman/core/d/p;

    iput-object p2, p0, Lcom/doman/core/d/p$1;->a:Lcom/doman/core/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "2"

    iget-object v1, p0, Lcom/doman/core/d/p$1;->a:Lcom/doman/core/a/j;

    iget-object v1, v1, Lcom/doman/core/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/doman/core/d/p$1;->a:Lcom/doman/core/a/j;

    iget-object v0, p0, Lcom/doman/core/a/j;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/doman/core/a/j;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/doman/core/d/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "3"

    iget-object v1, p0, Lcom/doman/core/d/p$1;->a:Lcom/doman/core/a/j;

    iget-object v1, v1, Lcom/doman/core/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/doman/core/d/p$1;->a:Lcom/doman/core/a/j;

    invoke-static {p0}, Lcom/doman/core/d/p;->a(Lcom/doman/core/a/j;)V

    return-void

    :cond_2
    const-string v0, "4"

    iget-object v1, p0, Lcom/doman/core/d/p$1;->a:Lcom/doman/core/a/j;

    iget-object v1, v1, Lcom/doman/core/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/doman/core/d/p$1;->a:Lcom/doman/core/a/j;

    iget-object v0, p0, Lcom/doman/core/a/j;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/doman/core/a/j;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/doman/core/d/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
