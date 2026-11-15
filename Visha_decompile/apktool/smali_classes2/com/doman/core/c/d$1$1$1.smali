.class final Lcom/doman/core/c/d$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/c/d$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/j;

.field final synthetic b:Lcom/doman/core/c/d$1$1;


# direct methods
.method public constructor <init>(Lcom/doman/core/c/d$1$1;Lcom/doman/core/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/c/d$1$1$1;->b:Lcom/doman/core/c/d$1$1;

    iput-object p2, p0, Lcom/doman/core/c/d$1$1$1;->a:Lcom/doman/core/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/c/d$1$1$1;->b:Lcom/doman/core/c/d$1$1;

    iget-object v0, v0, Lcom/doman/core/c/d$1$1;->a:Lcom/doman/core/c/d$1;

    iget-object v0, v0, Lcom/doman/core/c/d$1;->a:Lcom/doman/core/c/d;

    iget-object p0, p0, Lcom/doman/core/c/d$1$1$1;->a:Lcom/doman/core/a/j;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/doman/core/a/j;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/doman/core/c/d$2;

    invoke-direct {v1, v0, p0}, Lcom/doman/core/c/d$2;-><init>(Lcom/doman/core/c/d;Lcom/doman/core/a/j;)V

    iget p0, p0, Lcom/doman/core/a/j;->a:I

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    sget-object p0, Lcom/doman/core/webview/c;->aD:Ljava/lang/String;

    invoke-static {p0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
