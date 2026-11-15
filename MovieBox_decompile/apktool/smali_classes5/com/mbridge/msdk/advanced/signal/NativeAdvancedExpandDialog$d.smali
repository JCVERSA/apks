.class Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->c(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/advanced/middle/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->c(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/advanced/middle/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/advanced/middle/a;->a(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v4, "utf-8"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    const-string v2, ""

    .line 30
    .line 31
    const-string v3, "text/html"

    .line 32
    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Landroid/widget/FrameLayout;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {p1, v0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->a(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->a(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;Lcom/mbridge/msdk/advanced/middle/a;)Lcom/mbridge/msdk/advanced/middle/a;

    .line 69
    .line 70
    .line 71
    return-void
.end method
