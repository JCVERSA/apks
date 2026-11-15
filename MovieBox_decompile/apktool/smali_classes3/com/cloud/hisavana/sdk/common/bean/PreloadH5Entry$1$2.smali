.class public final Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;
.super Landroid/webkit/WebChromeClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;-><init>(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2",
        "Landroid/webkit/WebChromeClient;",
        "onProgressChanged",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "newProgress",
        "",
        "onReceivedTitle",
        "title",
        "",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->setProcess(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$getTAG$cp()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "onProgressChanged "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getProcess()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0x64

    .line 44
    .line 45
    if-lt p2, p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->setSpendEndTime(J)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getCallback()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->onProgressChanged(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$getTAG$cp()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onReceivedTitle "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {p1, p2, v2, v0, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v0, 0x1

    .line 57
    if-ne p1, v0, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->setTitle(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getCallback()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->onReceivedTitle(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method
