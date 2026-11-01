.class public final Lcom/wandoujia/download/storage/DownloadRootDirStore;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/wandoujia/download/storage/DownloadRootDirStore;

.field public static final b:Lo/t14;

.field public static final c:Lo/t14;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wandoujia/download/storage/DownloadRootDirStore;

    invoke-direct {v0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;-><init>()V

    sput-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore;->a:Lcom/wandoujia/download/storage/DownloadRootDirStore;

    sget-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore$relativePathList$2;->INSTANCE:Lcom/wandoujia/download/storage/DownloadRootDirStore$relativePathList$2;

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore;->b:Lo/t14;

    sget-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore$mediaRelativePathList$2;->INSTANCE:Lcom/wandoujia/download/storage/DownloadRootDirStore$mediaRelativePathList$2;

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore;->c:Lo/t14;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->u()V

    return-void
.end method

.method public static final synthetic b(Lcom/wandoujia/download/storage/DownloadRootDirStore;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/wandoujia/download/storage/DownloadRootDirStore;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/wandoujia/download/storage/DownloadRootDirStore;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->s(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final u()V
    .locals 1

    sget-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore;->a:Lcom/wandoujia/download/storage/DownloadRootDirStore;

    invoke-virtual {v0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->z()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/io/File;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_\ud83d\ude01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\ud83d\ude01_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v2}, Lo/yj2;->n(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :catchall_0
    return v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->VIDEO:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->AUDIO:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->IMAGE:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/xu0;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/yu0;->r(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    sget-object v3, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final g()Ljava/util/List;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->VIDEO:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->AUDIO:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->IMAGE:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->APP:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/xu0;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/yu0;->r(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    sget-object v3, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final h()Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "file_name_filter_emojis"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore;->c:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "root_dir_v2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/wandoujia/download/storage/DownloadRootDirStore;->b:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "secondary_download_dir"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo/yj2;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lo/yj2;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lo/hs7;->p()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/or3;->c(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p1, v3, v4, v5, v1}, Lo/cu7;->N(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Ljava/lang/String;

    :cond_4
    return-object v1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v1, v0, v2}, Lo/cu7;->N(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->k()Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lkotlin/text/StringsKt__StringsKt;->Q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->i()Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lkotlin/text/StringsKt__StringsKt;->Q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public final r(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->t(Lcom/wandoujia/download/storage/DownloadRootDirStore;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo/cu7;->B(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez p2, :cond_1

    if-eqz v2, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v1}, Lo/or3;->c(Ljava/lang/Object;)V

    move-object p1, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->w(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->x(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->w(Ljava/lang/String;)V

    :goto_1
    new-instance p1, Lo/tt1;

    invoke-direct {p1}, Lo/tt1;-><init>()V

    invoke-static {p1}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Z)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "file_name_filter_emojis"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Download Root Dir null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "root_dir_v2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secondary_download_dir"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final y()Z
    .locals 1

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->h()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 3

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lo/yj2;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->d(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->v(Z)V

    invoke-virtual {p0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->h()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFileNameFilterEmojis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadRootDirStore"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
