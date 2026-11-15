.class public final synthetic Lir9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

.field public final synthetic c:Lcom/transsion/dbdata/beans/sniff/SniffResultBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir9;->b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iput-object p2, p0, Lir9;->c:Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lir9;->b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget-object p0, p0, Lir9;->c:Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-static {v0, p0}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->F(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    return-void
.end method
