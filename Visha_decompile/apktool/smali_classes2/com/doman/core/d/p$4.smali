.class final Lcom/doman/core/d/p$4;
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
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/doman/core/webview/WsWebView;

.field final synthetic d:Lcom/doman/core/d/p;


# direct methods
.method public constructor <init>(Lcom/doman/core/d/p;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Lcom/doman/core/webview/WsWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/d/p$4;->d:Lcom/doman/core/d/p;

    iput-object p2, p0, Lcom/doman/core/d/p$4;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/doman/core/d/p$4;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/doman/core/d/p$4;->c:Lcom/doman/core/webview/WsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/doman/core/d/p$4;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/doman/core/d/p$4;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/doman/core/d/p$4;->a:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/doman/core/d/o;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p0, p0, Lcom/doman/core/d/p$4;->c:Lcom/doman/core/webview/WsWebView;

    invoke-static {p0}, Lcom/doman/core/d/p;->a(Lcom/doman/core/webview/WsWebView;)V

    return-void
.end method
