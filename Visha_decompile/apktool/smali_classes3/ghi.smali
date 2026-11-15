.class public final Lghi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv9i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;

.field public final c:Lv9i;

.field public d:Lv9i;

.field public e:Lv9i;

.field public f:Lv9i;

.field public g:Lv9i;

.field public h:Lv9i;

.field public i:Lv9i;

.field public j:Lv9i;

.field public k:Lv9i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv9i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lghi;->a:Landroid/content/Context;

    iput-object p2, p0, Lghi;->c:Lv9i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lghi;->b:Ljava/util/List;

    return-void
.end method

.method public static final m(Lv9i;Lixi;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lv9i;->c(Lixi;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 0

    iget-object p0, p0, Lghi;->k:Lv9i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2, p3}, Lk8j;->b([BII)I

    move-result p0

    return p0
.end method

.method public final c(Lixi;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lghi;->c:Lv9i;

    invoke-interface {v0, p1}, Lv9i;->c(Lixi;)V

    iget-object v0, p0, Lghi;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lghi;->d:Lv9i;

    invoke-static {v0, p1}, Lghi;->m(Lv9i;Lixi;)V

    iget-object v0, p0, Lghi;->e:Lv9i;

    invoke-static {v0, p1}, Lghi;->m(Lv9i;Lixi;)V

    iget-object v0, p0, Lghi;->f:Lv9i;

    invoke-static {v0, p1}, Lghi;->m(Lv9i;Lixi;)V

    iget-object v0, p0, Lghi;->g:Lv9i;

    invoke-static {v0, p1}, Lghi;->m(Lv9i;Lixi;)V

    iget-object v0, p0, Lghi;->h:Lv9i;

    invoke-static {v0, p1}, Lghi;->m(Lv9i;Lixi;)V

    iget-object v0, p0, Lghi;->i:Lv9i;

    invoke-static {v0, p1}, Lghi;->m(Lv9i;Lixi;)V

    iget-object p0, p0, Lghi;->j:Lv9i;

    invoke-static {p0, p1}, Lghi;->m(Lv9i;Lixi;)V

    return-void
.end method

.method public final j(Lcfi;)J
    .locals 4

    iget-object v0, p0, Lghi;->k:Lv9i;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v0, p1, Lcfi;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    sget v2, Lkfh;->a:I

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lghi;->k()Lv9i;

    move-result-object v0

    iput-object v0, p0, Lghi;->k:Lv9i;

    goto/16 :goto_5

    :cond_2
    const-string v0, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lghi;->f:Lv9i;

    if-nez v0, :cond_3

    iget-object v0, p0, Lghi;->a:Landroid/content/Context;

    new-instance v1, Lm7i;

    invoke-direct {v1, v0}, Lm7i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lghi;->f:Lv9i;

    invoke-virtual {p0, v1}, Lghi;->l(Lv9i;)V

    :cond_3
    iget-object v0, p0, Lghi;->f:Lv9i;

    iput-object v0, p0, Lghi;->k:Lv9i;

    goto/16 :goto_5

    :cond_4
    const-string v0, "rtmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lghi;->g:Lv9i;

    if-nez v0, :cond_5

    :try_start_0
    const-class v0, Landroidx/media3/datasource/rtmp/RtmpDataSource;

    sget v1, Landroidx/media3/datasource/rtmp/RtmpDataSource;->a:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9i;

    iput-object v0, p0, Lghi;->g:Lv9i;

    invoke-virtual {p0, v0}, Lghi;->l(Lv9i;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error instantiating RTMP extension"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lghi;->g:Lv9i;

    if-nez v0, :cond_5

    iget-object v0, p0, Lghi;->c:Lv9i;

    iput-object v0, p0, Lghi;->g:Lv9i;

    :cond_5
    iget-object v0, p0, Lghi;->g:Lv9i;

    iput-object v0, p0, Lghi;->k:Lv9i;

    goto/16 :goto_5

    :cond_6
    const-string v0, "udp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lghi;->h:Lv9i;

    if-nez v0, :cond_7

    new-instance v0, Lazi;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lazi;-><init>(I)V

    iput-object v0, p0, Lghi;->h:Lv9i;

    invoke-virtual {p0, v0}, Lghi;->l(Lv9i;)V

    :cond_7
    iget-object v0, p0, Lghi;->h:Lv9i;

    iput-object v0, p0, Lghi;->k:Lv9i;

    goto/16 :goto_5

    :cond_8
    const-string v0, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lghi;->i:Lv9i;

    if-nez v0, :cond_9

    new-instance v0, Ld8i;

    invoke-direct {v0}, Ld8i;-><init>()V

    iput-object v0, p0, Lghi;->i:Lv9i;

    invoke-virtual {p0, v0}, Lghi;->l(Lv9i;)V

    :cond_9
    iget-object v0, p0, Lghi;->i:Lv9i;

    iput-object v0, p0, Lghi;->k:Lv9i;

    goto :goto_5

    :cond_a
    const-string v0, "rawresource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lghi;->c:Lv9i;

    :goto_2
    iput-object v0, p0, Lghi;->k:Lv9i;

    goto :goto_5

    :cond_c
    :goto_3
    iget-object v0, p0, Lghi;->j:Lv9i;

    if-nez v0, :cond_d

    iget-object v0, p0, Lghi;->a:Landroid/content/Context;

    new-instance v1, Lvvi;

    invoke-direct {v1, v0}, Lvvi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lghi;->j:Lv9i;

    invoke-virtual {p0, v1}, Lghi;->l(Lv9i;)V

    :cond_d
    iget-object v0, p0, Lghi;->j:Lv9i;

    goto :goto_2

    :cond_e
    :goto_4
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lghi;->k()Lv9i;

    move-result-object v0

    iput-object v0, p0, Lghi;->k:Lv9i;

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lghi;->d:Lv9i;

    if-nez v0, :cond_10

    new-instance v0, Lvoi;

    invoke-direct {v0}, Lvoi;-><init>()V

    iput-object v0, p0, Lghi;->d:Lv9i;

    invoke-virtual {p0, v0}, Lghi;->l(Lv9i;)V

    :cond_10
    iget-object v0, p0, Lghi;->d:Lv9i;

    iput-object v0, p0, Lghi;->k:Lv9i;

    :goto_5
    iget-object p0, p0, Lghi;->k:Lv9i;

    invoke-interface {p0, p1}, Lv9i;->j(Lcfi;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final k()Lv9i;
    .locals 2

    iget-object v0, p0, Lghi;->e:Lv9i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lghi;->a:Landroid/content/Context;

    new-instance v1, Lz3i;

    invoke-direct {v1, v0}, Lz3i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lghi;->e:Lv9i;

    invoke-virtual {p0, v1}, Lghi;->l(Lv9i;)V

    :cond_0
    iget-object p0, p0, Lghi;->e:Lv9i;

    return-object p0
.end method

.method public final l(Lv9i;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lghi;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lixi;

    invoke-interface {p1, v1}, Lv9i;->c(Lixi;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lghi;->k:Lv9i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lv9i;->zzc()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()V
    .locals 2

    iget-object v0, p0, Lghi;->k:Lv9i;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lv9i;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lghi;->k:Lv9i;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lghi;->k:Lv9i;

    throw v0

    :cond_0
    return-void
.end method

.method public final zze()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lghi;->k:Lv9i;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lv9i;->zze()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method
