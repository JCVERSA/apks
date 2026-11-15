.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Ljava/lang/String;

.field public final OooOO0:Ljava/lang/Integer;

.field public final OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0:Ljava/lang/Integer;

    .line 7
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 1

    and-int/lit8 p2, p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/util/Map;Ljava/util/Map;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Lcom/cloud/tmc/integration/structure/AppLoadResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;",
            "Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;",
            "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
            ")V"
        }
    .end annotation

    const-string v0, "8"

    const-class v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    const-string v2, "appConfig.json"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 2
    iget-boolean v4, v4, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-nez v4, :cond_1

    .line 3
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    invoke-interface {p5, p1, p3}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const-class p3, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 6
    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 7
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-interface {p3, p1, v4}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    move-object p1, v3

    .line 10
    :goto_2
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appConfigFilePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 11
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {p3, p1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_4
    move-object p3, v3

    :goto_3
    if-eqz p3, :cond_7

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    .line 13
    :cond_5
    sget-object p1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    invoke-virtual {p1, p3, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 14
    iput-object p1, p6, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 15
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 16
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppConfig finish,isEmpty:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 18
    :cond_7
    :goto_5
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u91cc\u8bfb\u5230\u7684\u5185\u5bb9\u4e3a\u7a7a"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 19
    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p3, "appConfig\u4e0d\u5b58\u5728\uff1a"

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 20
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "appConfig.json error"

    invoke-direct {p1, v0, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 22
    :cond_8
    :goto_6
    :try_start_1
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 23
    const-string p3, "100000"

    .line 24
    invoke-interface {p5, p3, p1}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 25
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {p3, p1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    :cond_9
    sget-object p1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    invoke-virtual {p1, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 27
    iput-object p1, p6, Lcom/cloud/tmc/integration/structure/AppLoadResult;->frameworkConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    if-eqz p2, :cond_a

    .line 28
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "frameworkConfig.json error"

    invoke-direct {p1, v0, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 30
    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p2, "frameworkConfig \u4e0d\u5b58\u5728\uff1a"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/HashMap<",
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

    .line 61
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->G0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 66
    invoke-virtual/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v1, v2, v3, p6}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubpackageStartStep:absPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";vUrl:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v3, "Subpackage::"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "f.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "vUrl"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "getDefault()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, ".html"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Step_LoadStep: tar\u5305\u7ed3\u6784: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;",
            "Lcom/cloud/tmc/integration/model/PrepareContext;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
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

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v0, p3

    move-object/from16 v10, p8

    const-string v11, "15"

    const-string v12, "frameworkzip error"

    const-string v13, "14"

    .line 31
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 32
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 33
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-string v7, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    .line 37
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    if-eqz v9, :cond_2

    .line 38
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 39
    invoke-direct {v1, v13, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    if-eqz v9, :cond_3

    .line 41
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-direct {v1, v13, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 43
    :cond_3
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, "\u8bf7\u5148\u4e0b\u8f7d\u6846\u67b6\u5305\u8d44\u6e90\u6587\u4ef6\uff1a"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_8

    if-nez v1, :cond_5

    goto :goto_3

    .line 45
    :cond_5
    iget-object v2, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v2, v0, v10}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 46
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 47
    :cond_6
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o()V

    .line 48
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 49
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-nez v1, :cond_a

    .line 50
    const-string v7, ""

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 51
    :cond_7
    :goto_2
    sget-object v2, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    invoke-virtual {v2, v1, v0, v10}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    .line 52
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 53
    const-string v1, "miniappzip error"

    .line 54
    invoke-direct {v0, v11, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    :goto_3
    return-void

    :goto_4
    if-eqz v9, :cond_9

    .line 56
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {v1, v11, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 60
    :cond_9
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "\u8d44\u6e90\u6587\u4ef6\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 6

    const/4 v0, 0x1

    .line 75
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 76
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0o0:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 77
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 78
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0OO:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    return-void

    .line 82
    :cond_4
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 83
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 84
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 85
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "subpackage_sync_lock_status_%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const-string v4, "miniapp_business_subpackage_record"

    invoke-interface {v3, v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v0

    const/4 v0, 0x2

    if-ge v5, v0, :cond_6

    .line 87
    invoke-interface {v3, v1, v4, v2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_8

    .line 88
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->finish()V

    goto :goto_2

    .line 89
    :cond_6
    invoke-interface {v3, v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    goto :goto_2

    .line 91
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public OooO0OO(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/integration/model/PrepareCallbackParam;
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    :try_start_0
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "startStep \u521b\u5efanormal app config"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 13
    .line 14
    .line 15
    move-result-object v12

    .line 16
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 17
    .line 18
    iget-object v2, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0:Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v1, v12, v2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 26
    .line 27
    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    if-eqz v12, :cond_0

    .line 32
    .line 33
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const-class v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    .line 51
    .line 52
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->setPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v12, :cond_2

    .line 70
    .line 71
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v3, 0x0

    .line 77
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, "_used"

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v1, v2, v12, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 98
    .line 99
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v12, :cond_3

    .line 104
    .line 105
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const/4 v3, 0x0

    .line 111
    :goto_2
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getPreUnzipStatus(Landroid/content/Context;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    const-string v1, "Tmc"

    .line 118
    .line 119
    const-string v2, "startStep_\u4f7f\u7528\u4e86\u9884\u5148\u89e3\u538b\u7684\u5305"

    .line 120
    .line 121
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 131
    .line 132
    if-eqz v12, :cond_4

    .line 133
    .line 134
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const/4 v2, 0x0

    .line 140
    :goto_3
    const-string v3, "preunzip"

    .line 141
    .line 142
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 146
    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v12, :cond_5

    .line 152
    .line 153
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    goto :goto_4

    .line 158
    :cond_5
    const/4 v3, 0x0

    .line 159
    :goto_4
    const/4 v4, 0x0

    .line 160
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updatePreUnzipStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 161
    .line 162
    .line 163
    :cond_6
    new-instance v13, Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v14, Ljava/util/HashMap;

    .line 169
    .line 170
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v15, Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 176
    .line 177
    .line 178
    const-class v1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 179
    .line 180
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    move-object v8, v1

    .line 185
    check-cast v8, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    const-string v7, "manager"

    .line 188
    .line 189
    if-eqz v9, :cond_7

    .line 190
    .line 191
    :try_start_1
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    move-object/from16 v1, p0

    .line 195
    .line 196
    move-object/from16 v2, p1

    .line 197
    .line 198
    move-object/from16 v3, p2

    .line 199
    .line 200
    move-object v4, v12

    .line 201
    move-object v5, v13

    .line 202
    move-object v6, v14

    .line 203
    move-object v11, v7

    .line 204
    move-object v7, v15

    .line 205
    move-object/from16 v16, v8

    .line 206
    .line 207
    invoke-virtual/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_7
    move-object v11, v7

    .line 212
    move-object/from16 v16, v8

    .line 213
    .line 214
    :goto_5
    new-instance v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 215
    .line 216
    invoke-direct {v8}, Lcom/cloud/tmc/integration/structure/AppLoadResult;-><init>()V

    .line 217
    .line 218
    .line 219
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 220
    .line 221
    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appVersion:Ljava/lang/String;

    .line 226
    .line 227
    const-string v1, "https://100000.miniapp.transsion.com/index.html"

    .line 228
    .line 229
    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainHtmlUrl:Ljava/lang/String;

    .line 230
    .line 231
    move-object/from16 v6, v16

    .line 232
    .line 233
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-class v1, Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;

    .line 237
    .line 238
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const-string v2, "get(ISubPackageResourceManager::class.java)"

    .line 243
    .line 244
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    check-cast v1, Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;

    .line 248
    .line 249
    move-object/from16 v1, p0

    .line 250
    .line 251
    move-object v2, v12

    .line 252
    move-object/from16 v3, p1

    .line 253
    .line 254
    move-object v4, v13

    .line 255
    move-object v5, v14

    .line 256
    move-object v7, v8

    .line 257
    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/util/Map;Ljava/util/Map;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Lcom/cloud/tmc/integration/structure/AppLoadResult;)V

    .line 258
    .line 259
    .line 260
    iput-object v15, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->htmlMap:Ljava/util/HashMap;

    .line 261
    .line 262
    const-string v1, "WEB_TINY"

    .line 263
    .line 264
    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->frameWorkModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 271
    .line 272
    new-instance v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    .line 273
    .line 274
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V

    .line 275
    .line 276
    .line 277
    iput-object v8, v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 278
    .line 279
    new-instance v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    .line 280
    .line 281
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V

    .line 282
    .line 283
    .line 284
    iput-object v8, v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .line 286
    return-object v1

    .line 287
    :goto_6
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    const/4 v1, 0x0

    .line 293
    return-object v1
.end method
