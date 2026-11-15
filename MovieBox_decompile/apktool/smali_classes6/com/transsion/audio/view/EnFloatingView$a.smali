.class Lcom/transsion/audio/view/EnFloatingView$a;
.super Lui/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/view/EnFloatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/view/EnFloatingView;


# direct methods
.method constructor <init>(Lcom/transsion/audio/view/EnFloatingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView$a;->a:Lcom/transsion/audio/view/EnFloatingView;

    .line 2
    .line 3
    invoke-direct {p0}, Lui/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getResourceId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "http"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Lcom/transsion/baselib/db/audio/AudioBean;->setUrl(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-virtual {p2, p1}, Lcom/transsion/baselib/db/audio/AudioBean;->setChangeToLocalPath(Z)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p2}, Lcom/transsion/audio/viewmodel/HistoryListManager;->k(Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method
