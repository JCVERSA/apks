.class final Lcom/doman/core/ig/manager/c$3$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/manager/c$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/webview/WsWebView;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/widget/FrameLayout;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/doman/core/ig/manager/c$3$1;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c$3$1;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$3$1$3;->f:Lcom/doman/core/ig/manager/c$3$1;

    iput-object p2, p0, Lcom/doman/core/ig/manager/c$3$1$3;->a:Lcom/doman/core/webview/WsWebView;

    iput-object p3, p0, Lcom/doman/core/ig/manager/c$3$1$3;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/doman/core/ig/manager/c$3$1$3;->c:Landroid/widget/FrameLayout;

    iput p5, p0, Lcom/doman/core/ig/manager/c$3$1$3;->d:I

    iput p6, p0, Lcom/doman/core/ig/manager/c$3$1$3;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x942

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1$3;->f:Lcom/doman/core/ig/manager/c$3$1;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v1, v0, Lcom/doman/core/ig/manager/c$3;->e:Lcom/doman/core/ig/manager/c;

    iget-object v2, v0, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iget-object v3, p0, Lcom/doman/core/ig/manager/c$3$1$3;->a:Lcom/doman/core/webview/WsWebView;

    iget-object v4, p0, Lcom/doman/core/ig/manager/c$3$1$3;->b:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/doman/core/ig/manager/c$3$1$3;->c:Landroid/widget/FrameLayout;

    iget v6, p0, Lcom/doman/core/ig/manager/c$3$1$3;->d:I

    iget v7, p0, Lcom/doman/core/ig/manager/c$3$1$3;->e:I

    invoke-static/range {v1 .. v7}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
