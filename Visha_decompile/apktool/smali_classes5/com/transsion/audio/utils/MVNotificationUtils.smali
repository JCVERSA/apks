.class public abstract Lcom/transsion/audio/utils/MVNotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Set;

.field public static b:Ljava/util/ArrayList;

.field public static final c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lcom/transsion/audio/utils/MVNotificationUtils;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/audio/utils/MVNotificationUtils;->b:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/transsion/audio/utils/MVNotificationUtils;->c:Ljava/lang/Boolean;

    invoke-static {}, Lbx5;->a()Lbx5;

    move-result-object v0

    new-instance v1, Lcx5;

    invoke-direct {v1}, Lcx5;-><init>()V

    invoke-virtual {v0, v1}, Lbx5;->c(Lbx5$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/utils/MVNotificationUtils;->i(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static b(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    filled-new-array {p0}, [Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-static {p0}, Lu71;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audio/utils/MVNotificationUtils;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static c(Ljava/util/ArrayList;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/audio/utils/MVNotificationUtils;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/transsion/audio/utils/MVNotificationUtils;->j()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Lex5;

    invoke-direct {v0}, Lex5;-><init>()V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->NEW_MV_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->n(Ljava/util/List;Ljava/util/function/Function;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Z

    return-void
.end method

.method public static d(Ljava/util/ArrayList;)V
    .locals 3

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "new_mv_temp_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "value"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lcom/transsion/audio/utils/MVNotificationUtils;->c:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    sput-object v1, Lcom/transsion/audio/utils/MVNotificationUtils;->a:Ljava/util/Set;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static f()V
    .locals 2

    sget-object v0, Lcom/transsion/audio/utils/MVNotificationUtils;->c:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/transsion/audio/utils/MVNotificationUtils;->j()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/transsion/audio/utils/MVNotificationUtils;->b:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    sput-object v1, Lcom/transsion/audio/utils/MVNotificationUtils;->a:Ljava/util/Set;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static g()Ljava/util/ArrayList;
    .locals 4

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "new_mv_temp_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "value"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/audio/utils/MVNotificationUtils$1;

    invoke-direct {v2}, Lcom/transsion/audio/utils/MVNotificationUtils$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static h(Z)Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/transsion/audio/utils/MVNotificationUtils;->c:Ljava/lang/Boolean;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/transsion/audio/utils/MVNotificationUtils;->f()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/audio/utils/MVNotificationUtils;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/audio/utils/MVNotificationUtils;->g()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/transsion/audio/utils/MVNotificationUtils;->b:Ljava/util/ArrayList;

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic i(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/transsion/audio/utils/MVNotificationUtils;->b(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method

.method public static j()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/audio/utils/MVNotificationUtils;->a:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ldx5;

    invoke-direct {v1}, Ldx5;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v0}, Lcom/transsion/audio/utils/MVNotificationUtils;->d(Ljava/util/ArrayList;)V

    return-object v0
.end method
