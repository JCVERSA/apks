.class public final Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->postApi26CreateShortcut(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;ILjava/lang/String;Z)V
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
        "com/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2",
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
.field final synthetic $addHomeType:I

.field final synthetic $appId:Ljava/lang/String;

.field final synthetic $bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

.field final synthetic $broadcastIntent:Landroid/content/Intent;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fromLocation:Ljava/lang/String;

.field final synthetic $shortcutIntent:Landroid/content/Intent;

.field final synthetic $showCustomDialog:Z

.field final synthetic $showSuccessToast:Z

.field final synthetic $sm:Landroid/content/pm/ShortcutManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ShortcutManager;ZIZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$shortcutIntent:Landroid/content/Intent;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$broadcastIntent:Landroid/content/Intent;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$sm:Landroid/content/pm/ShortcutManager;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showSuccessToast:Z

    .line 14
    .line 15
    iput p8, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$addHomeType:I

    .line 16
    .line 17
    iput-boolean p9, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showCustomDialog:Z

    .line 18
    .line 19
    iput-object p10, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$fromLocation:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 6

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
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    const-string v3, "trigger failed"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    const-class v1, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v5, "\u53d1\u9001 addHomeToScreen callback received"

    .line 96
    .line 97
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v4, "isExist"

    .line 101
    .line 102
    sget-object v5, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 103
    .line 104
    invoke-virtual {v5, v2, v3}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, ""

    .line 125
    .line 126
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/c5;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/z4;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move-object v1, v2

    .line 28
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/h5;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$createIconBitmap(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/j5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v2, v3

    .line 58
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getBadgeLogo(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/a;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$shortcutIntent:Landroid/content/Intent;

    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/g5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Landroid/os/PersistableBundle;

    .line 73
    .line 74
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 78
    .line 79
    iget v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$addHomeType:I

    .line 80
    .line 81
    iget-boolean v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showCustomDialog:Z

    .line 82
    .line 83
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$fromLocation:Ljava/lang/String;

    .line 84
    .line 85
    iget-boolean v5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showSuccessToast:Z

    .line 86
    .line 87
    const-string v6, "appId"

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "scene_id"

    .line 97
    .line 98
    const-string v6, "200008"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "extraAddHomeType"

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    const-string v1, "extraAddHomeShowDialog"

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    xor-int/2addr v3, v2

    .line 112
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    const-string v1, "extraAddHomeFromLocation"

    .line 116
    .line 117
    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v1, "extraShowSuccessToast"

    .line 121
    .line 122
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/i5;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/k5;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v0, "Builder(context, appId)\n\u2026               }).build()"

    .line 134
    .line 135
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    long-to-int v1, v3

    .line 145
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$broadcastIntent:Landroid/content/Intent;

    .line 146
    .line 147
    const/high16 v4, 0x2000000

    .line 148
    .line 149
    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$sm:Landroid/content/pm/ShortcutManager;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v1, p1, v0}, Lcom/cloud/hisavana/sdk/b5;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 160
    .line 161
    .line 162
    sget-object p1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLauncher(Landroid/content/Context;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v3, "\u6dfb\u52a0\u684c\u9762\u5feb\u6377\u65b9\u5f0f\uff0c\u662f\u5426\u4e3a isLauncher: "

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    if-nez p1, :cond_2

    .line 195
    .line 196
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$showSuccessToast:Z

    .line 197
    .line 198
    if-eqz p1, :cond_2

    .line 199
    .line 200
    const-class p1, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;

    .line 201
    .line 202
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;

    .line 207
    .line 208
    const-string v0, "addHomeToScreen"

    .line 209
    .line 210
    new-instance v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2$onSuccess$1;

    .line 211
    .line 212
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 213
    .line 214
    invoke-direct {v1, v3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2$onSuccess$1;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;->addAppTask(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :catchall_0
    move-exception p1

    .line 222
    goto :goto_2

    .line 223
    :cond_2
    :goto_1
    sget-object p1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 224
    .line 225
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 226
    .line 227
    const-string v1, "trigger success"

    .line 228
    .line 229
    invoke-virtual {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :goto_2
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 237
    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v3, "trigger happened exception:"

    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const/4 v3, 0x3

    .line 256
    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->mobCreateShortcutEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v3, "downloadMiniAppIconFile ->"

    .line 269
    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :try_start_2
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lcom/cloud/tmc/integration/structure/App;

    .line 294
    .line 295
    if-eqz p1, :cond_3

    .line 296
    .line 297
    const-class v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 298
    .line 299
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 304
    .line 305
    if-eqz p1, :cond_3

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    if-eqz p1, :cond_3

    .line 312
    .line 313
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 320
    .line 321
    if-eqz p1, :cond_3

    .line 322
    .line 323
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 324
    .line 325
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$context:Landroid/content/Context;

    .line 329
    .line 330
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$postApi26CreateShortcut$2;->$appId:Ljava/lang/String;

    .line 331
    .line 332
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    const-string v4, "\u53d1\u9001 addHomeToScreen callback received"

    .line 337
    .line 338
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-string v3, "isExist"

    .line 342
    .line 343
    sget-object v4, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 344
    .line 345
    invoke-virtual {v4, v1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :catchall_1
    move-exception p1

    .line 361
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    const-string v1, "onDenied"

    .line 366
    .line 367
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    :cond_3
    :goto_3
    return-void
.end method
