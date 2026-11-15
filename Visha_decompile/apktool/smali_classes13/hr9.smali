.class public final synthetic Lhr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhr9;->b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iput-object p2, p0, Lhr9;->c:Ljava/lang/String;

    iput-object p3, p0, Lhr9;->d:Ljava/lang/String;

    iput-object p4, p0, Lhr9;->e:Ljava/lang/String;

    iput-object p5, p0, Lhr9;->f:Ljava/lang/String;

    iput-object p6, p0, Lhr9;->g:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lhr9;->b:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget-object v1, p0, Lhr9;->c:Ljava/lang/String;

    iget-object v2, p0, Lhr9;->d:Ljava/lang/String;

    iget-object v3, p0, Lhr9;->e:Ljava/lang/String;

    iget-object v4, p0, Lhr9;->f:Ljava/lang/String;

    iget-object v5, p0, Lhr9;->g:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-static/range {v0 .. v5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->G(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method
