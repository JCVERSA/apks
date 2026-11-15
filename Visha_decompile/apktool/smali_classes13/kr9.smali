.class public final synthetic Lkr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkr9;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iput-object p2, p0, Lkr9;->b:Ljava/lang/String;

    iput-object p3, p0, Lkr9;->c:Ljava/lang/String;

    iput-object p4, p0, Lkr9;->d:Ljava/lang/String;

    iput-object p5, p0, Lkr9;->e:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    return-void
.end method


# virtual methods
.method public final onCheckResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 6

    iget-object v0, p0, Lkr9;->a:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    iget-object v1, p0, Lkr9;->b:Ljava/lang/String;

    iget-object v2, p0, Lkr9;->c:Ljava/lang/String;

    iget-object v3, p0, Lkr9;->d:Ljava/lang/String;

    iget-object v4, p0, Lkr9;->e:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;->E(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method
