.class final Lcom/doman/core/c/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/c/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/doman/core/c/c$2;


# direct methods
.method public constructor <init>(Lcom/doman/core/c/c$2;Lcom/doman/core/a/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/c/c$2$1;->c:Lcom/doman/core/c/c$2;

    iput-object p2, p0, Lcom/doman/core/c/c$2$1;->a:Lcom/doman/core/a/e;

    iput-object p3, p0, Lcom/doman/core/c/c$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/doman/core/c/c$2$1;->a:Lcom/doman/core/a/e;

    invoke-virtual {v0}, Lcom/doman/core/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/doman/core/c/c$2$1;->a:Lcom/doman/core/a/e;

    iget-object v2, p0, Lcom/doman/core/c/c$2$1;->c:Lcom/doman/core/c/c$2;

    iget-object v2, v2, Lcom/doman/core/c/c$2;->d:Lcom/doman/core/c/c;

    iget-object v3, v2, Lcom/doman/core/c/c;->f:Ljava/lang/String;

    iget-object v2, v2, Lcom/doman/core/c/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/doman/core/b/b;->a(Lcom/doman/core/a/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/doman/core/c/c$2$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/doman/core/c/c$2$1;->c:Lcom/doman/core/c/c$2;

    iget-object v2, v2, Lcom/doman/core/c/c$2;->d:Lcom/doman/core/c/c;

    iget-object v3, v2, Lcom/doman/core/c/c;->f:Ljava/lang/String;

    iget-object v2, v2, Lcom/doman/core/c/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/doman/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/doman/core/webview/c;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/doman/core/c/c$2$1;->c:Lcom/doman/core/c/c$2;

    iget-object v1, v1, Lcom/doman/core/c/c$2;->d:Lcom/doman/core/c/c;

    iget-object v2, v1, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    iget-object v2, v2, Lcom/doman/core/a/a;->r:Ljava/lang/String;

    iget-object v3, v1, Lcom/doman/core/c/c;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/doman/core/c/c$2$1;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/doman/core/c/c;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3, p0, v1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
