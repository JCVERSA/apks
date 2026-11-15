.class public Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr9$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->e(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$a;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$a;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->I(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Landroid/webkit/WebView;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public b(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
