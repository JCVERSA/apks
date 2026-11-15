.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/ReportProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$OooO00o;,
        Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;,
        Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$OooO00o;

.field public static OooO0OO:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final OooO00o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$OooO00o;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0OO:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lazyGetPkgInfoBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;)V

    return-void
.end method

.method public static final synthetic access$getMainProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0OO:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMiniProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUniqueIdMaps$p(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getZeroProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setMainProcessInitAthenaFlag$cp(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0OO:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMiniProcessInitAthenaFlag$cp(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setZeroProcessInitAthenaFlag$cp(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 27
    :try_start_0
    const-string v1, "AthenaReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realPagePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 29
    :cond_0
    const-string v3, "?"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 30
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 31
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p1

    .line 32
    :cond_2
    const-string p1, "http"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, p1, v2, v4, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    .line 33
    :cond_3
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 34
    const-string v5, "athenaReportPaths"

    .line 35
    const-string v6, "{\"testPath\": \"www.test.com\"}"

    .line 36
    invoke-virtual {p1, v5, v6}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance v5, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getMatchPagePath$pathMap$1;

    invoke-direct {v5}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getMatchPagePath$pathMap$1;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v5, "fromJson(paths, object :\u2026ring, String>>() {}.type)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v2, v4, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 40
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_5
    return-object v1

    :catchall_0
    return-object v0
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 3
    :cond_3
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 4
    new-instance v3, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v1, v4, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_4
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 7
    :cond_5
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 8
    :cond_6
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/a;

    invoke-direct {v1, p0, p1, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/a;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 11
    :cond_7
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 12
    :goto_2
    const-string v0, "AthenaReport"

    const-string v1, "getOfflinePackageInfo"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 14
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflinePackageDownloadInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    const-string v3, "disable_offline_processor"

    invoke-interface {p1, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    .line 17
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 19
    check-cast v4, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;

    .line 20
    const-string v5, "key"

    invoke-virtual {v4}, Lcom/cloud/tmc/offline/download/model/ZipFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 21
    const-string v5, "useStatus"

    xor-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lkotlin/Pair;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    .line 22
    invoke-static {v6}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v4

    .line 23
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 24
    invoke-static {v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->setInfo(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    const-string p1, "seven"

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->getInfo()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public bridge synthetic checkReportIntercept(Ljava/lang/String;Ljava/lang/Boolean;)Lkotlin/Triple;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->checkReportIntercept(Ljava/lang/String;Z)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method

.method public checkReportIntercept(Ljava/lang/String;Z)Lkotlin/Triple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    move-result-object p1

    .line 3
    new-instance p2, Lkotlin/Triple;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-boolean v1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    goto :goto_0

    :cond_0
    move v1, v0

    .line 5
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 6
    iget-boolean v2, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z

    goto :goto_1

    :cond_1
    move v2, v0

    .line 7
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 8
    iget-boolean v0, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z

    .line 9
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 10
    invoke-direct {p2, v1, v2, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public forceAthenaReport(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tag"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bundle"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p4, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->getAthenaCommonBundle(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p2, p3, p1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0O0(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string p2, "AthenaReport"

    .line 28
    .line 29
    const-string p3, "forceAthenaReport"

    .line 30
    .line 31
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final getAthenaCommonBundle(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    new-instance v4, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "miniapp_id"

    .line 13
    .line 14
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 32
    .line 33
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-class v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 54
    .line 55
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_2
    move-object v6, v0

    .line 60
    :goto_1
    const-string v7, "AthenaReport"

    .line 61
    .line 62
    const-string v8, "page_path"

    .line 63
    .line 64
    const-string v9, ""

    .line 65
    .line 66
    const/4 v10, 0x1

    .line 67
    if-eqz v6, :cond_1c

    .line 68
    .line 69
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 70
    .line 71
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    if-eqz v11, :cond_3

    .line 76
    .line 77
    invoke-interface {v11}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/4 v11, 0x0

    .line 83
    :goto_2
    invoke-virtual {v0, v11, v4}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getMemoryInfo(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const/4 v0, 0x0

    .line 102
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v11, "miniapp_categorType"

    .line 107
    .line 108
    invoke-virtual {v4, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppVersion()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v11, "miniapp_version"

    .line 116
    .line 117
    invoke-virtual {v4, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    invoke-virtual {v3, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-ne v0, v10, :cond_6

    .line 127
    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-ne v0, v10, :cond_5

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_5
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v3, v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-interface {v6, v11}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v4, v0, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_6
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    goto :goto_4

    .line 168
    :cond_7
    const/4 v0, 0x0

    .line 169
    :goto_4
    invoke-virtual {v4, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    if-eqz v3, :cond_8

    .line 173
    .line 174
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-ne v0, v10, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    if-eqz v11, :cond_9

    .line 190
    .line 191
    invoke-interface {v11}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    goto :goto_5

    .line 196
    :cond_9
    const/4 v11, 0x0

    .line 197
    :goto_5
    if-nez v11, :cond_a

    .line 198
    .line 199
    move-object v11, v9

    .line 200
    :cond_a
    invoke-interface {v6, v11}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v4, v0, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_6
    const-string v0, "scene"

    .line 212
    .line 213
    if-eqz v3, :cond_b

    .line 214
    .line 215
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-ne v11, v10, :cond_b

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_b
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    if-eqz v11, :cond_c

    .line 227
    .line 228
    const-string v12, "scene_id"

    .line 229
    .line 230
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    if-nez v11, :cond_d

    .line 235
    .line 236
    :cond_c
    const-string v11, "100000"

    .line 237
    .line 238
    :cond_d
    invoke-virtual {v4, v0, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :goto_7
    const-string v0, "start_session_id"

    .line 242
    .line 243
    if-eqz v3, :cond_e

    .line 244
    .line 245
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-ne v11, v10, :cond_e

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_e
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    if-eqz v11, :cond_f

    .line 257
    .line 258
    const-string v12, "massid"

    .line 259
    .line 260
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    goto :goto_8

    .line 265
    :cond_f
    const/4 v11, 0x0

    .line 266
    :goto_8
    invoke-virtual {v4, v0, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :goto_9
    const-string v0, "fis_type"

    .line 270
    .line 271
    if-eqz v3, :cond_10

    .line 272
    .line 273
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v11

    .line 277
    if-ne v11, v10, :cond_10

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_10
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    if-eqz v11, :cond_11

    .line 285
    .line 286
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    if-nez v11, :cond_12

    .line 291
    .line 292
    :cond_11
    const-string v11, "0"

    .line 293
    .line 294
    :cond_12
    invoke-virtual {v4, v0, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :goto_a
    const-string v0, "uniqueid"

    .line 298
    .line 299
    if-eqz v3, :cond_13

    .line 300
    .line 301
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    if-ne v11, v10, :cond_13

    .line 306
    .line 307
    goto/16 :goto_d

    .line 308
    .line 309
    :cond_13
    iget-object v11, v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 310
    .line 311
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    check-cast v11, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    .line 320
    .line 321
    if-eqz v11, :cond_14

    .line 322
    .line 323
    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->getUniqueId()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    if-eqz v11, :cond_14

    .line 328
    .line 329
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    if-nez v12, :cond_14

    .line 334
    .line 335
    goto :goto_c

    .line 336
    :cond_14
    iget-object v11, v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 337
    .line 338
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    check-cast v11, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    .line 347
    .line 348
    if-eqz v11, :cond_15

    .line 349
    .line 350
    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    if-eqz v11, :cond_15

    .line 355
    .line 356
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 357
    .line 358
    .line 359
    move-result v11

    .line 360
    if-ne v11, v10, :cond_15

    .line 361
    .line 362
    :goto_b
    move-object v11, v9

    .line 363
    goto :goto_c

    .line 364
    :cond_15
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v12

    .line 372
    if-eqz v12, :cond_16

    .line 373
    .line 374
    const-string v11, "\u57cb\u70b9getUniqueId fail: gaid is empty"

    .line 375
    .line 376
    invoke-static {v7, v11}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_16
    iget-object v12, v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    .line 382
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v13

    .line 386
    const-string v14, "app.appId"

    .line 387
    .line 388
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    new-instance v15, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    .line 392
    .line 393
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 394
    .line 395
    invoke-direct {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 396
    .line 397
    .line 398
    invoke-direct {v15, v5, v9}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    new-instance v12, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;

    .line 412
    .line 413
    invoke-direct {v12, v1, v6}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;Lcom/cloud/tmc/integration/structure/App;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v11, v5, v12}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    .line 417
    .line 418
    .line 419
    goto :goto_b

    .line 420
    :goto_c
    invoke-virtual {v4, v0, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :goto_d
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 424
    .line 425
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 430
    .line 431
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-interface {v0, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->getPerformanceImproves(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const-string v5, "improveTags"

    .line 440
    .line 441
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const-string v0, "isForeground"

    .line 445
    .line 446
    if-eqz v3, :cond_17

    .line 447
    .line 448
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-ne v5, v10, :cond_17

    .line 453
    .line 454
    goto :goto_11

    .line 455
    :cond_17
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    if-eqz v5, :cond_18

    .line 460
    .line 461
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    goto :goto_e

    .line 466
    :cond_18
    const/4 v5, 0x0

    .line 467
    :goto_e
    instance-of v11, v5, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 468
    .line 469
    if-eqz v11, :cond_19

    .line 470
    .line 471
    check-cast v5, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 472
    .line 473
    goto :goto_f

    .line 474
    :cond_19
    const/4 v5, 0x0

    .line 475
    :goto_f
    if-eqz v5, :cond_1a

    .line 476
    .line 477
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getMStarted()Z

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    goto :goto_10

    .line 486
    :cond_1a
    const/4 v5, 0x0

    .line 487
    :goto_10
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    :goto_11
    :try_start_0
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    if-eqz v0, :cond_1c

    .line 499
    .line 500
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    if-eqz v0, :cond_1c

    .line 505
    .line 506
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    const-string v11, "app.appModel"

    .line 511
    .line 512
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v0, v5}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_1b

    .line 520
    .line 521
    move v0, v10

    .line 522
    goto :goto_12

    .line 523
    :cond_1b
    const/4 v0, 0x2

    .line 524
    :goto_12
    const-string v5, "packageSource"

    .line 525
    .line 526
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    .line 528
    .line 529
    goto :goto_13

    .line 530
    :catchall_0
    move-exception v0

    .line 531
    invoke-static {v7, v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    .line 533
    .line 534
    :cond_1c
    :goto_13
    const-class v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 535
    .line 536
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    check-cast v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 541
    .line 542
    invoke-interface {v0, v2}, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;->getId(Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const-string v2, "sessionId"

    .line 551
    .line 552
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-class v0, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    .line 556
    .line 557
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    .line 562
    .line 563
    if-eqz v0, :cond_1d

    .line 564
    .line 565
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;->workerType()I

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    goto :goto_14

    .line 570
    :cond_1d
    const/16 v0, -0x64

    .line 571
    .line 572
    :goto_14
    const-string v2, "worker_type"

    .line 573
    .line 574
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 575
    .line 576
    .line 577
    const-class v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 578
    .line 579
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    check-cast v2, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 584
    .line 585
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getSDKVersion()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    const-string v5, "sdk_version"

    .line 590
    .line 591
    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    check-cast v0, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 599
    .line 600
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    const-string v2, "framework_version"

    .line 605
    .line 606
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 610
    .line 611
    .line 612
    move-result-wide v11

    .line 613
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const-string v2, "timestamp"

    .line 618
    .line 619
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getTctpStatus()Ljava/lang/Boolean;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    if-eqz v0, :cond_1e

    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    goto :goto_15

    .line 635
    :cond_1e
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getTCTP()Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    :goto_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    const-string v2, "TCTP"

    .line 644
    .line 645
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getNetworkStatus()I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-ne v0, v10, :cond_1f

    .line 653
    .line 654
    goto :goto_16

    .line 655
    :cond_1f
    const/4 v10, 0x0

    .line 656
    :goto_16
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    const-string v2, "NetworkIsConnected"

    .line 661
    .line 662
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getMNetWorkType()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    const-string v2, "NetworkType"

    .line 674
    .line 675
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenWidth()I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    const-string v2, "screen_width"

    .line 683
    .line 684
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 685
    .line 686
    .line 687
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenHeight()I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    const-string v2, "screen_height"

    .line 692
    .line 693
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 694
    .line 695
    .line 696
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getNetworkStatus()I

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    const-string v2, "networkStatus"

    .line 701
    .line 702
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 703
    .line 704
    .line 705
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    const-string v2, "miniapp_gaid"

    .line 714
    .line 715
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    if-eqz v6, :cond_20

    .line 719
    .line 720
    :try_start_1
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    goto :goto_17

    .line 725
    :catchall_1
    move-exception v0

    .line 726
    goto :goto_19

    .line 727
    :cond_20
    const/4 v0, 0x0

    .line 728
    :goto_17
    if-nez v0, :cond_21

    .line 729
    .line 730
    goto :goto_1a

    .line 731
    :cond_21
    invoke-virtual {v1, v6}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o(Lcom/cloud/tmc/integration/structure/App;)V

    .line 732
    .line 733
    .line 734
    const-string v2, "offlinePkgList"

    .line 735
    .line 736
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 737
    .line 738
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    check-cast v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    .line 743
    .line 744
    if-eqz v0, :cond_22

    .line 745
    .line 746
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->getInfo()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    goto :goto_18

    .line 751
    :cond_22
    const/4 v0, 0x0

    .line 752
    :goto_18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 757
    .line 758
    .line 759
    goto :goto_1a

    .line 760
    :goto_19
    const-string v2, "getOfflinePackageInfo"

    .line 761
    .line 762
    invoke-static {v7, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 763
    .line 764
    .line 765
    :goto_1a
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 766
    .line 767
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getCupInfo(Landroid/os/Bundle;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v4, v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    const-string v2, "real_page_path"

    .line 778
    .line 779
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    const-string v2, "realPagePath"

    .line 783
    .line 784
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    .line 792
    .line 793
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .line 795
    .line 796
    const-string v3, "reportPagePath:"

    .line 797
    .line 798
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    invoke-static {v7, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v4, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    .line 815
    .line 816
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    const-string v2, " =====> "

    .line 823
    .line 824
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    move-object/from16 v2, p3

    .line 828
    .line 829
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    const-string v2, "reportData"

    .line 837
    .line 838
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 842
    .line 843
    if-eqz v6, :cond_23

    .line 844
    .line 845
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    if-eqz v2, :cond_23

    .line 850
    .line 851
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    goto :goto_1b

    .line 856
    :cond_23
    const/4 v2, 0x0

    .line 857
    :goto_1b
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-eqz v0, :cond_26

    .line 862
    .line 863
    if-eqz v6, :cond_24

    .line 864
    .line 865
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    if-eqz v0, :cond_24

    .line 870
    .line 871
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    goto :goto_1c

    .line 876
    :cond_24
    const/4 v0, 0x0

    .line 877
    :goto_1c
    const-string v2, "mini_template_id"

    .line 878
    .line 879
    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    if-eqz v6, :cond_25

    .line 883
    .line 884
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    if-eqz v0, :cond_25

    .line 889
    .line 890
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getCurrentUseCommonResVersion()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    goto :goto_1d

    .line 895
    :cond_25
    const/4 v5, 0x0

    .line 896
    :goto_1d
    const-string v0, "mini_template_ver"

    .line 897
    .line 898
    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    :cond_26
    return-object v4
.end method

.method public final getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-class v0, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    const-string v1, "session_id"

    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getSessionId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "sdk_version"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 26
    .line 27
    invoke-interface {v2}, Lcom/cloud/tmc/ad/IAdManagerProxy;->getAdSdkFrameworkVersion()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "sdk_version_int"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/cloud/tmc/ad/IAdManagerProxy;->getAdSdkFrameworkVersionInt()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    const-string v0, "user_agent"

    .line 50
    .line 51
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getUserAgent()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "type"

    .line 59
    .line 60
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string v0, "make"

    .line 68
    .line 69
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getMake()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "ostype"

    .line 77
    .line 78
    const-string v1, "Android"

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "screen_width"

    .line 84
    .line 85
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenWidth()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const-string v0, "screen_height"

    .line 93
    .line 94
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenHeight()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    const-string v0, "screen_density"

    .line 102
    .line 103
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenDensity()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    const-string v0, "base_station"

    .line 111
    .line 112
    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGsmCellLocation()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "latitude"

    .line 122
    .line 123
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLatitude()D

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 128
    .line 129
    .line 130
    const-string v0, "longitude"

    .line 131
    .line 132
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLongitude()D

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 137
    .line 138
    .line 139
    const-string v0, "coordtime"

    .line 140
    .line 141
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getCoordTime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 146
    .line 147
    .line 148
    const-string v0, "oneid"

    .line 149
    .line 150
    const-string v2, ""

    .line 151
    .line 152
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "turn_off_per_ads"

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGaidStatus()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v2, "getBundle fail: "

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v1, "AthenaReport"

    .line 184
    .line 185
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_0
    return-object p1
.end method

.method public getVaid()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "0000-0000-0000-0000"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "miniLauncherGlobal"

    .line 16
    .line 17
    const-string v4, "athenaVaid"

    .line 18
    .line 19
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :catch_0
    :goto_0
    return-object v0
.end method

.method public mfahCacheDataReport(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "AthenaReport"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, "mfahCacheDataReport: appId is null"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_2
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xeab

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->getAthenaCommonBundle(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 p4, 0xeab

    .line 4
    :goto_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    invoke-virtual {v0, p2, p4, p3, p1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 5
    :goto_1
    const-string p2, "AthenaReport"

    const-string p3, "report: "

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public reportAd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-class v1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    if-nez v1, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-class v1, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 45
    .line 46
    invoke-interface {v1, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move-object v2, v1

    .line 54
    :goto_1
    if-eqz v2, :cond_4

    .line 55
    .line 56
    const-string v1, "mini_program_id"

    .line 57
    .line 58
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    const-string v2, ""

    .line 65
    .line 66
    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    const-string v1, "host_package_name"

    .line 70
    .line 71
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    const-string v0, "reportBussinessData"

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " =====> "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 119
    .line 120
    const/16 v1, 0x96b

    .line 121
    .line 122
    invoke-virtual {v0, p2, v1, p3, p1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :goto_2
    const-string p2, "AthenaReport"

    .line 127
    .line 128
    const-string p3, "reportAd: "

    .line 129
    .line 130
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_3
    return-void
.end method
