.class public final Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000bR\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;",
        "",
        "()V",
        "getLauncherMultiMMKV",
        "Lcom/tencent/mmkv/MMKV;",
        "getGetLauncherMultiMMKV",
        "()Lcom/tencent/mmkv/MMKV;",
        "multiMMKV",
        "getNewsOptionPopShow",
        "",
        "getSelectLanguage",
        "",
        "putNewsOptionPopShow",
        "",
        "showStatus",
        "putSelectLanguage",
        "selectLanguage",
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


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;

.field private static multiMMKV:Lcom/tencent/mmkv/MMKV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->INSTANCE:Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;

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


# virtual methods
.method public final getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->multiMMKV:Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x18

    .line 13
    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/cloud/tmc/integration/b;->a(Landroid/app/Application;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-object v2, v0

    .line 24
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "/files/mmkv/"

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v2, "zeroscreen_sp_file_nametrue"

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    invoke-static {v2, v3, v1, v0}, Lcom/tencent/mmkv/MMKV;->L(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "mmkvWithID(\n            \u2026dir\n                    )"

    .line 64
    .line 65
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->multiMMKV:Lcom/tencent/mmkv/MMKV;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    const-string v2, "getLauncherMultiMMKV error"

    .line 72
    .line 73
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_2
    sget-object v0, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->multiMMKV:Lcom/tencent/mmkv/MMKV;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    const-string v0, "multiMMKV"

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    move-object v1, v0

    .line 87
    :goto_3
    return-object v1
.end method

.method public final getNewsOptionPopShow()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "zs_key_card_news_options_pop_show"

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catchall_0
    return v0
.end method

.method public final getSelectLanguage()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "user_select_language"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :catchall_0
    return-object v0
.end method

.method public final putNewsOptionPopShow(Z)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "zs_key_card_news_options_pop_show"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    const-string v0, "putSelectLanguage"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final putSelectLanguage(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "selectLanguage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/LauncherMMkvStorageHelper;->getGetLauncherMultiMMKV()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "user_select_language"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    const-string v0, "putSelectLanguage"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
