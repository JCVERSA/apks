.class public Lnet/grandcentrix/tray/provider/ContentProviderStorage;
.super Lnet/grandcentrix/tray/core/TrayStorage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;
    }
.end annotation


# instance fields
.field public c:Ljava/util/WeakHashMap;

.field public d:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

.field public e:Landroid/os/HandlerThread;

.field public final f:Landroid/content/Context;

.field public final g:Lnet/grandcentrix/tray/provider/a;

.field public volatile h:Z

.field public final i:Lnet/grandcentrix/tray/provider/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lnet/grandcentrix/tray/core/TrayStorage;-><init>(Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->c:Ljava/util/WeakHashMap;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->f:Landroid/content/Context;

    new-instance p2, Lnet/grandcentrix/tray/provider/b;

    invoke-direct {p2, p1}, Lnet/grandcentrix/tray/provider/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->i:Lnet/grandcentrix/tray/provider/b;

    new-instance p2, Lnet/grandcentrix/tray/provider/a;

    invoke-direct {p2, p1}, Lnet/grandcentrix/tray/provider/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->g:Lnet/grandcentrix/tray/provider/a;

    return-void
.end method

.method public static synthetic c(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/b;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->i:Lnet/grandcentrix/tray/provider/b;

    return-object p0
.end method

.method public static synthetic d(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/a;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->g:Lnet/grandcentrix/tray/provider/a;

    return-object p0
.end method

.method public static synthetic e(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic f(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->h:Z

    return p1
.end method


# virtual methods
.method public g(Ljava/lang/String;)Lq9b;
    .locals 5

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->i:Lnet/grandcentrix/tray/provider/b;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/b;->d()Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->b()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->e(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->d(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/b$a;->c(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/b$a;->a()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->g:Lnet/grandcentrix/tray/provider/a;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/a;->e(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found more than one item for key \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in module "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "This can be caused by using the same name for a device and user specific preference."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr9b;->c(Ljava/lang/String;)V

    move p0, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq9b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr9b;->a(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq9b;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->g(Ljava/lang/String;)Lq9b;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 2

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->i:Lnet/grandcentrix/tray/provider/b;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/b;->d()Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->b(Z)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->b()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->e(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->d(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->c(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/b$a;->a()Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->g:Lnet/grandcentrix/tray/provider/a;

    invoke-virtual {p0, v0}, Lnet/grandcentrix/tray/provider/a;->d(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq9b;

    invoke-virtual {p0}, Lq9b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public declared-synchronized registerOnTrayPreferenceChangeListener(Lpf7;)V
    .locals 2
    .param p1    # Lpf7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    new-instance p1, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;

    const-string v0, "observer"

    invoke-direct {p1, p0, v0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;-><init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->e:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    iget-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->h:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->i:Lnet/grandcentrix/tray/provider/b;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/b;->d()Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->b()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->e(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->d(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/b$a;->c(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/b$a;->a()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->g:Lnet/grandcentrix/tray/provider/a;

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/a;->f(Landroid/net/Uri;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null is not valid. use clear or wipe to delete all preferences"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVersion(I)Z
    .locals 2

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->b()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v0

    sget-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->i:Lnet/grandcentrix/tray/provider/b;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/b;->d()Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->b(Z)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->b()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->e(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->d(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/b$a;->c(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/b$a;->a()Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->g:Lnet/grandcentrix/tray/provider/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/grandcentrix/tray/provider/a;->b(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lnet/grandcentrix/tray/core/TrayRuntimeException;

    const-string p1, "writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed."

    invoke-direct {p0, p1}, Lnet/grandcentrix/tray/core/TrayRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterOnTrayPreferenceChangeListener(Lpf7;)V
    .locals 1
    .param p1    # Lpf7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->d:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->d:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->e:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method
