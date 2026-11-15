.class public final Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, ""

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v1

    .line 26
    :goto_0
    if-nez v2, :cond_1

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    :cond_1
    const/4 v3, 0x2

    .line 30
    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v2, v1

    .line 55
    :goto_1
    if-nez v2, :cond_4

    .line 56
    .line 57
    move-object v2, v0

    .line 58
    :cond_4
    const-string v3, "redirectTo"

    .line 59
    .line 60
    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_a

    .line 70
    .line 71
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 72
    .line 73
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_2

    .line 84
    :cond_6
    move-object v2, v1

    .line 85
    :goto_2
    if-nez v2, :cond_7

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_7
    move-object v0, v2

    .line 89
    :goto_3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_8

    .line 96
    .line 97
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    goto :goto_4

    .line 102
    :cond_8
    move-object v2, v1

    .line 103
    :goto_4
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_9

    .line 110
    .line 111
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_9
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/structure/App;->redirectTo(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    :cond_a
    return-void
.end method
