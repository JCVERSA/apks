.class public final Lcom/transsion/playercommon/utils/storage/MountPointManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/storage/MountPointManager$b;,
        Lcom/transsion/playercommon/utils/storage/MountPointManager$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/playercommon/utils/storage/MountPointManager;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Landroid/os/storage/StorageManager;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/utils/storage/MountPointManager;

    invoke-direct {v0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->g:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Root Path"

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->c:Landroid/os/storage/StorageManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager$1;-><init>(Lcom/transsion/playercommon/utils/storage/MountPointManager;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f:Ljava/util/Comparator;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0}, Ltpb;->x()V

    new-instance v0, Lfr6;

    invoke-direct {v0, p0}, Lfr6;-><init>(Lcom/transsion/playercommon/utils/storage/MountPointManager;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/utils/storage/MountPointManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->n()V

    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeclaredMethod "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MountPointManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static f()Lcom/transsion/playercommon/utils/storage/MountPointManager;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->g:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEjected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MountPointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;->onEjected(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0}, Ltpb;->x()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "haha"

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    iget-object v1, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le p0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_2
    return-object p1
.end method

.method public g()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "MountPointManager"

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getRealMountPointPath = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "getRealMountPointPath = \"\" "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public j(Lcom/transsion/playercommon/utils/storage/MountPointManager$b;)I
    .locals 0

    iget-boolean p0, p1, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->f:Z

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->d:Z

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_internal_storage:I

    return p0

    :cond_0
    iget-boolean p0, p1, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->e:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_otg:I

    return p0

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_sdcard_icon:I

    return p0

    :cond_2
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_internal_storage:I

    return p0
.end method

.method public declared-synchronized k(Landroid/content/Context;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->b:Landroid/content/Context;

    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->c:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MountPointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init,defaultPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/storage"

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->a:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->c:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    invoke-direct {v3}, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;-><init>()V

    iput v1, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->h:I

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_1

    const-string v4, "getPath"

    invoke-static {v2, v4}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lmpb;->a(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lmpb;->a(Landroid/os/storage/StorageVolume;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    :cond_2
    :goto_2
    const-string v4, "mounted"

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->f:Z

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    iput-boolean v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->d:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->m(Landroid/os/storage/StorageVolume;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->e:Z

    :cond_3
    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->j(Lcom/transsion/playercommon/utils/storage/MountPointManager$b;)I

    move-result v4

    iput v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "getMaxFileSize"

    invoke-static {v2, v4}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->g:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    const-string v4, "getId"

    invoke-static {v2, v4}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v2, "MountPointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mountPoint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->f:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->d:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/playercommon/R$string;->internal_storage:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    iget-boolean v2, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->e:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/playercommon/R$string;->otg:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/playercommon/R$string;->sd_card:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/playercommon/R$string;->internal_storage:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public m(Landroid/os/storage/StorageVolume;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.storage.VolumeInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.os.storage.DiskInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isUsb"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getDisk"

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v3, Landroid/os/storage/StorageManager;

    const-string v5, "findVolumeByUuid"

    const-class v6, Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->c:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    if-nez p0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    if-eqz p0, :cond_2

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public final synthetic n()V
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->k(Landroid/content/Context;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMounted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MountPointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0}, Ltpb;->x()V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;->onMounted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public q(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public r()V
    .locals 3

    const-string v0, "onSdSwap"

    const-string v1, "MountPointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;

    const-string v2, "onReceive,handle SD_SWAP "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;->onSdSwap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnMounted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MountPointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/utils/storage/MountPointManager$a;->onUnMounted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
