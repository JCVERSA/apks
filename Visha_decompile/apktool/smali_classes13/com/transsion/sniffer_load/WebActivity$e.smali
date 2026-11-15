.class public Lcom/transsion/sniffer_load/WebActivity$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebActivity;->T0(Landroid/webkit/WebView$HitTestResult;)Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView$HitTestResult;

.field public final synthetic b:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebActivity;Landroid/os/Looper;Landroid/webkit/WebView$HitTestResult;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$e;->b:Lcom/transsion/sniffer_load/WebActivity;

    iput-object p3, p0, Lcom/transsion/sniffer_load/WebActivity$e;->a:Landroid/webkit/WebView$HitTestResult;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity$e;->b:Lcom/transsion/sniffer_load/WebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$e;->a:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebActivity$e;->b:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WebActivity;->F0(Lcom/transsion/sniffer_load/WebActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/transsion/sniffer_load/WebActivity$e;->b:Lcom/transsion/sniffer_load/WebActivity;

    move-object v2, v3

    invoke-static/range {v0 .. v5}, Leic;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    return-void
.end method
