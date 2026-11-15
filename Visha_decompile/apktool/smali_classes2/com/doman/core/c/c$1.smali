.class final Lcom/doman/core/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/c/c;->a(Ljava/util/ArrayList;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/doman/core/c/c;


# direct methods
.method public constructor <init>(Lcom/doman/core/c/c;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/c/c$1;->e:Lcom/doman/core/c/c;

    iput p2, p0, Lcom/doman/core/c/c$1;->a:I

    iput-object p3, p0, Lcom/doman/core/c/c$1;->b:Ljava/util/ArrayList;

    iput p4, p0, Lcom/doman/core/c/c$1;->c:I

    iput-object p5, p0, Lcom/doman/core/c/c$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/doman/core/c/c$1;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/doman/core/c/c$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doman/core/a/e;

    iget v2, v1, Lcom/doman/core/a/e;->a:I

    iget v3, p0, Lcom/doman/core/c/c$1;->c:I

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/doman/core/a/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/doman/core/c/c$1;->e:Lcom/doman/core/c/c;

    iget-object v3, v3, Lcom/doman/core/c/c;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/doman/core/c/c$1;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/doman/core/a/e;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v3

    iget-object v4, p0, Lcom/doman/core/c/c$1;->e:Lcom/doman/core/c/c;

    iget-object v5, v4, Lcom/doman/core/c/c;->f:Ljava/lang/String;

    iget-object v4, v4, Lcom/doman/core/c/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v5, v4}, Lcom/doman/core/b/b;->a(Lcom/doman/core/a/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v1

    iget-object v3, p0, Lcom/doman/core/c/c$1;->e:Lcom/doman/core/c/c;

    iget-object v4, v3, Lcom/doman/core/c/c;->f:Ljava/lang/String;

    iget-object v3, v3, Lcom/doman/core/c/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v3}, Lcom/doman/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/doman/core/webview/c;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/doman/core/c/c$1;->e:Lcom/doman/core/c/c;

    iget-object v4, v3, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    iget-object v4, v4, Lcom/doman/core/a/a;->r:Ljava/lang/String;

    iget-object v5, v3, Lcom/doman/core/c/c;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/doman/core/c/c;->d:Ljava/lang/String;

    invoke-static {v1, v4, v5, v2, v3}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
