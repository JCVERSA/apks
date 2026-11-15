.class final Lcom/doman/core/d/p$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/d/p$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/webview/WsWebView;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/widget/FrameLayout;

.field final synthetic d:Lcom/doman/core/d/p$3;


# direct methods
.method public constructor <init>(Lcom/doman/core/d/p$3;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/d/p$3$3;->d:Lcom/doman/core/d/p$3;

    iput-object p2, p0, Lcom/doman/core/d/p$3$3;->a:Lcom/doman/core/webview/WsWebView;

    iput-object p3, p0, Lcom/doman/core/d/p$3$3;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/doman/core/d/p$3$3;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/d/p$3$3;->d:Lcom/doman/core/d/p$3;

    iget-object v0, v0, Lcom/doman/core/d/p$3;->d:Lcom/doman/core/a/j;

    iget v0, v0, Lcom/doman/core/a/j;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/doman/core/d/p$3$3;->d:Lcom/doman/core/d/p$3;

    iget-object v0, v0, Lcom/doman/core/d/p$3;->f:Lcom/doman/core/d/p;

    iget-object v1, p0, Lcom/doman/core/d/p$3$3;->a:Lcom/doman/core/webview/WsWebView;

    iget-object v2, p0, Lcom/doman/core/d/p$3$3;->b:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/doman/core/d/p$3$3;->c:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, p0}, Lcom/doman/core/d/p;->a(Lcom/doman/core/d/p;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
