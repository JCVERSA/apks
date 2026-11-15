.class public final Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->preApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1",
        "Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;",
        "onFail",
        "",
        "onSuccess",
        "path",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $addIntent:Landroid/content/Intent;

.field final synthetic $appModel:Lcom/cloud/tmc/integration/model/AppModel;

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$addIntent:Landroid/content/Intent;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 4

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/cloud/tmc/integration/R$string;->smallapp_create_fail_no_icon:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    const/4 v2, 0x2

    .line 37
    const-string v3, "trigger failed"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 2
    .line 3
    const-string v1, "path"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    const-string v2, "CreateShortCutUtils"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "pre icon path01:"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$addIntent:Landroid/content/Intent;

    .line 32
    .line 33
    const-string v3, "android.intent.extra.shortcut.ICON"

    .line 34
    .line 35
    sget-object v4, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 36
    .line 37
    invoke-static {v4, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->access$createIconBitmap(Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$context:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$addIntent:Landroid/content/Intent;

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lcom/cloud/tmc/integration/R$string;->smallapp_create_success:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {p1, v2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move-object p1, v1

    .line 84
    :goto_0
    const-string v2, "trigger success"

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-virtual {v4, p1, v3, v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :goto_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$context:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sget v3, Lcom/cloud/tmc/integration/R$string;->smallapp_create_fail_no_icon:I

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$preApi26CreateShortcut$1;->$appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 115
    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v3, "trigger happened exception:"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const/4 v2, 0x3

    .line 140
    invoke-virtual {v0, v1, v2, p1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    return-void
.end method
