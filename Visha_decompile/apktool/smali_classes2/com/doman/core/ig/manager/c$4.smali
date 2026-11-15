.class final Lcom/doman/core/ig/manager/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/manager/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/g;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/doman/core/webview/WsWebView;

.field final synthetic e:Lcom/doman/core/ig/manager/c;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Lcom/doman/core/webview/WsWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$4;->e:Lcom/doman/core/ig/manager/c;

    iput-object p2, p0, Lcom/doman/core/ig/manager/c$4;->a:Lcom/doman/core/a/g;

    iput-object p3, p0, Lcom/doman/core/ig/manager/c$4;->b:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/doman/core/ig/manager/c$4;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/doman/core/ig/manager/c$4;->d:Lcom/doman/core/webview/WsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/doman/core/webview/c;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/doman/core/ig/manager/c$4;->a:Lcom/doman/core/a/g;

    iget-object v1, v1, Lcom/doman/core/a/a;->r:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2, v2, v2}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$4;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$4;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/doman/core/ig/manager/c$4;->b:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/doman/core/d/o;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$4;->e:Lcom/doman/core/ig/manager/c;

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$4;->d:Lcom/doman/core/webview/WsWebView;

    invoke-static {v0, p0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/webview/WsWebView;)V

    return-void
.end method
