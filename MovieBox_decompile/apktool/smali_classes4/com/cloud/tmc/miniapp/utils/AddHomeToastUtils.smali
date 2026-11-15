.class public final Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;

.field public static final OooO0O0:Landroid/os/Handler;

.field public static OooO0OO:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO0O0:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "$windowToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 19
    invoke-virtual {v0, p0, v1, v2}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->showPopWindow(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowToken"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v10, p0

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v0, v1, v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u67e5\u8be2\u684c\u9762\u662f\u5426\u5b58\u5728\uff0cstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AddHomeToastUtils"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    return-void

    :cond_2
    move-object v10, p0

    .line 4
    invoke-virtual {p0, v6}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v0, p6, v4

    if-gtz v0, :cond_4

    .line 5
    const-string v0, "\u6dfb\u52a0\u684c\u9762\u5c55\u793a\u5ef6\u8fdf\u65f6\u95f4\u5c0f\u4e8e\u7b49\u4e8e 0"

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_4
    sget-object v11, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 7
    new-instance v12, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    .line 8
    new-instance v7, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;

    .line 9
    new-instance v5, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO0O0;

    move-object/from16 v0, p8

    invoke-direct {v5, v6, v0}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO0O0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;-><init>(Landroid/content/Context;Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V

    const/16 v8, 0x10

    const/4 v13, 0x0

    const/16 v4, 0xa

    const/4 v14, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move-wide/from16 v2, p6

    move-object v5, v7

    move v6, v14

    move v7, v8

    move-object v8, v13

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-virtual {v11, v9, v12}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->addPopWindow(Ljava/lang/String;Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V

    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;JJ)V
    .locals 2

    .line 13
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO0OO:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/a;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO0OO:Ljava/lang/Runnable;

    .line 16
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {p1, v0, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "[\"1000497027976413184\"]"

    const-string v1, "AddHomeToastUtils"

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 21
    :cond_0
    :try_start_0
    const-class v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 22
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 23
    const-string v4, "miniAddHomeCustomWhitelist"

    .line 24
    invoke-interface {v3, v4, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 25
    const-string v4, "checkAddHomeCustomWhiteList failed!"

    invoke-static {v1, v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_1

    .line 26
    :try_start_1
    new-instance v4, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$checkAddHomeCustomWhiteList$whiteList$1;

    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$checkAddHomeCustomWhiteList$whiteList$1;-><init>()V

    .line 27
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    const-string v5, "object :\n               \u2026ayList<String>>() {}.type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 30
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :try_start_2
    new-instance v3, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$checkAddHomeCustomWhiteList$whiteList$2;

    invoke-direct {v3}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$checkAddHomeCustomWhiteList$whiteList$2;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "object : TypeToken<ArrayList<String>>() {}.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 34
    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    return v2

    .line 36
    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addHomeCustom: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " \u767d\u540d\u5355\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v2
.end method
