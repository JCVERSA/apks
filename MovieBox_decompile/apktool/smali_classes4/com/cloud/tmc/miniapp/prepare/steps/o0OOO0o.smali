.class public Lcom/cloud/tmc/miniapp/prepare/steps/o0OOO0o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "/"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    move-object v2, p0

    .line 58
    move-object v3, p1

    .line 59
    move-object v5, p3

    .line 60
    move-object v6, p4

    .line 61
    move-object v7, p5

    .line 62
    invoke-virtual/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OOO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {p5, v1, v2, v3, p6}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "WarmupStep:absPath:"

    .line 83
    .line 84
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, ";vUrl:"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "Subpackage::"

    .line 108
    .line 109
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v3, ".html"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_1

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 143
    .line 144
    const-string v3, "Step_WarmupStep: tar\u5305\u7ed3\u6784: "

    .line 145
    .line 146
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_2
    return-void
.end method

.method public OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/StepType;->WARMUP:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-class v1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    const-string v7, ""

    move-object v1, p0

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OOO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/Map;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v2, "13"

    const-string v3, "framework zip error"

    invoke-direct {v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 10
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, "\u8bf7\u5148\u4e0b\u8f7d\u6846\u67b6\u5305\u8d44\u6e90\u6587\u4ef6\uff1a"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    new-instance v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/structure/AppLoadResult;-><init>()V

    .line 12
    const-string v2, "https://100000.miniapp.transsion.com/index.html"

    iput-object v2, v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainHtmlUrl:Ljava/lang/String;

    .line 13
    :try_start_1
    const-string v2, "appConfig.json"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    const-string v3, "100000"

    invoke-interface {v9, v3, v0}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v2, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    const-class v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iput-object v0, v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->frameworkConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 16
    :catch_1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v2, "8"

    const-string v3, "frameworkConfig.json error"

    invoke-direct {v0, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, "frameworkConfig \u4e0d\u5b58\u5728\uff1a"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    :goto_1
    iput-object v8, v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->htmlMap:Ljava/util/HashMap;

    .line 19
    const-string v0, "WEB_TINY"

    iput-object v0, v1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    invoke-direct {v0, p2}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V

    .line 21
    iput-object v1, v0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 22
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->setFrameworkVersion(Ljava/lang/String;)V

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "warmupType"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p3, v0, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;I)V

    .line 26
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->finish()V

    return-void
.end method
