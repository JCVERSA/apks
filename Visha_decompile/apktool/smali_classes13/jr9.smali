.class public final synthetic Ljr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6b$c;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

.field public final synthetic b:Lcom/transsion/sniffer_load/okdownload/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/sniffer_load/okdownload/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljr9;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iput-object p2, p0, Ljr9;->b:Lcom/transsion/sniffer_load/okdownload/a;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Ljr9;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget-object p0, p0, Ljr9;->b:Lcom/transsion/sniffer_load/okdownload/a;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->D(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/sniffer_load/okdownload/a;Z)V

    return-void
.end method
