.class public final Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0007J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;",
        "",
        "<init>",
        "()V",
        "cachedAndroidId",
        "",
        "get",
        "readAndroidId",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;

.field private static volatile cachedAndroidId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;->INSTANCE:Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;->cachedAndroidId:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;->cachedAndroidId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_2
    sget-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;->INSTANCE:Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;->readAndroidId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;->cachedAndroidId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final readAndroidId()Ljava/lang/String;
    .locals 2

    const-string p0, ""

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :catch_0
    :goto_0
    return-object p0
.end method
