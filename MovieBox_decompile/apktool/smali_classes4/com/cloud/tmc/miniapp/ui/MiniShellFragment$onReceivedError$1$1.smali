.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v1

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setDelayShowError(Z)V

    .line 21
    .line 22
    .line 23
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, ""

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v2, v1

    .line 47
    :goto_2
    if-nez v2, :cond_3

    .line 48
    .line 49
    move-object v2, v0

    .line 50
    :cond_3
    const/4 v3, 0x2

    .line 51
    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_3

    .line 75
    :cond_5
    move-object v2, v1

    .line 76
    :goto_3
    if-nez v2, :cond_6

    .line 77
    .line 78
    move-object v2, v0

    .line 79
    :cond_6
    const-string v3, "redirectTo"

    .line 80
    .line 81
    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_c

    .line 91
    .line 92
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    goto :goto_4

    .line 105
    :cond_8
    move-object v2, v1

    .line 106
    :goto_4
    if-nez v2, :cond_9

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_9
    move-object v0, v2

    .line 110
    :goto_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_a

    .line 117
    .line 118
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_6

    .line 123
    :cond_a
    move-object v2, v1

    .line 124
    :goto_6
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 125
    .line 126
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_b

    .line 131
    .line 132
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :cond_b
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/structure/App;->redirectTo(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    :cond_c
    return-void
.end method
