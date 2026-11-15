.class public final Lcom/cloud/tmc/storage/TmcStorageModule;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/storage/TmcStorageModule;",
        "",
        "()V",
        "sInit",
        "",
        "optionalInitCalls",
        "",
        "context",
        "Landroid/content/Context;",
        "storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/storage/TmcStorageModule;

.field private static volatile sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/storage/TmcStorageModule;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/storage/TmcStorageModule;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/storage/TmcStorageModule;->INSTANCE:Lcom/cloud/tmc/storage/TmcStorageModule;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final optionalInitCalls(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    sget-boolean v0, Lcom/cloud/tmc/storage/TmcStorageModule;->sInit:Z

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    const-class v0, Lcom/cloud/tmc/storage/TmcStorageModule;

    .line 15
    .line 16
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    sget-boolean v1, Lcom/cloud/tmc/storage/TmcStorageModule;->sInit:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->C(Landroid/content/Context;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    sput-boolean p0, Lcom/cloud/tmc/storage/TmcStorageModule;->sInit:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    :try_start_2
    monitor-exit v0

    .line 37
    goto :goto_3

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit v0

    .line 41
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :goto_2
    const-string v0, "TmcStorageModule::"

    .line 43
    .line 44
    const-string v1, ""

    .line 45
    .line 46
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/storage/TmcStorageModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_3
    return-void
.end method
