.class public Lcom/mgadplus/brower/jsbridge/BridgeWebView$b;
.super Lp1d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$b;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-direct {p0, p2}, Lp1d;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lp1d;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lp1d;->c(Landroid/view/View;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public d(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$b;->c:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-virtual {p0, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->k(Ljava/lang/String;)V

    return-void
.end method
