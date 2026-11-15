.class public Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$b;
.super Llfc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->i()Lcom/just/agentweb/IAgentWebSettings;
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

    iput-object p1, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$b;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-direct {p0}, Llfc;-><init>()V

    return-void
.end method


# virtual methods
.method public bindAgentWebSupport(Lcom/just/agentweb/AgentWeb;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-void
.end method

.method public setDownloader(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/WebListenerManager;
    .locals 0

    iget-object p2, p0, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer$b;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/AbsAgentWebSettings;->setDownloader(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/WebListenerManager;

    move-result-object p0

    return-object p0
.end method
