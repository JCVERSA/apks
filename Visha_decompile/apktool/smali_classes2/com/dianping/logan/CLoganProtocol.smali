.class public Lcom/dianping/logan/CLoganProtocol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhq5;


# static fields
.field public static e:Lcom/dianping/logan/CLoganProtocol;

.field public static f:Z


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lef7;

.field public d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "logan"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/dianping/logan/CLoganProtocol;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianping/logan/CLoganProtocol;->f:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/dianping/logan/CLoganProtocol;->d:Ljava/util/Set;

    return-void
.end method

.method private native clogan_debug(Z)V
.end method

.method private native clogan_flush()V
.end method

.method private native clogan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native clogan_open(Ljava/lang/String;)I
.end method

.method private native clogan_write(ILjava/lang/String;JLjava/lang/String;JI)I
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/dianping/logan/CLoganProtocol;->f:Z

    return v0
.end method

.method public static i()Lcom/dianping/logan/CLoganProtocol;
    .locals 2

    sget-object v0, Lcom/dianping/logan/CLoganProtocol;->e:Lcom/dianping/logan/CLoganProtocol;

    if-nez v0, :cond_1

    const-class v0, Lcom/dianping/logan/CLoganProtocol;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dianping/logan/CLoganProtocol;->e:Lcom/dianping/logan/CLoganProtocol;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dianping/logan/CLoganProtocol;

    invoke-direct {v1}, Lcom/dianping/logan/CLoganProtocol;-><init>()V

    sput-object v1, Lcom/dianping/logan/CLoganProtocol;->e:Lcom/dianping/logan/CLoganProtocol;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/dianping/logan/CLoganProtocol;->e:Lcom/dianping/logan/CLoganProtocol;

    return-object v0
.end method


# virtual methods
.method public a(Lef7;)V
    .locals 0

    iput-object p1, p0, Lcom/dianping/logan/CLoganProtocol;->c:Lef7;

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/dianping/logan/CLoganProtocol;->b:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/dianping/logan/CLoganProtocol;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/dianping/logan/CLoganProtocol;->clogan_flush()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "clogan_init"

    iget-boolean v1, p0, Lcom/dianping/logan/CLoganProtocol;->a:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/dianping/logan/CLoganProtocol;->f:Z

    if-nez v1, :cond_1

    const-string p1, "logan_loadso"

    const/16 p2, -0x139c

    invoke-virtual {p0, p1, p2}, Lcom/dianping/logan/CLoganProtocol;->h(Ljava/lang/String;I)V

    return-void

    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/dianping/logan/CLoganProtocol;->clogan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/dianping/logan/CLoganProtocol;->a:Z

    invoke-virtual {p0, v0, p1}, Lcom/dianping/logan/CLoganProtocol;->h(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, -0x424

    invoke-virtual {p0, v0, p1}, Lcom/dianping/logan/CLoganProtocol;->h(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public d(ILjava/lang/String;JLjava/lang/String;JZ)V
    .locals 2

    const-string v0, "clogan_write"

    iget-boolean v1, p0, Lcom/dianping/logan/CLoganProtocol;->b:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/dianping/logan/CLoganProtocol;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/dianping/logan/CLoganProtocol;->clogan_write(ILjava/lang/String;JLjava/lang/String;JI)I

    move-result p1

    const/16 p2, -0xfaa

    if-ne p1, p2, :cond_1

    sget-boolean p2, Lfq5;->d:Z

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/dianping/logan/CLoganProtocol;->h(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, -0xfdc

    invoke-virtual {p0, v0, p1}, Lcom/dianping/logan/CLoganProtocol;->h(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "clogan_open"

    iget-boolean v1, p0, Lcom/dianping/logan/CLoganProtocol;->a:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/dianping/logan/CLoganProtocol;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/dianping/logan/CLoganProtocol;->clogan_open(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dianping/logan/CLoganProtocol;->b:Z

    invoke-virtual {p0, v0, p1}, Lcom/dianping/logan/CLoganProtocol;->h(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, -0x816

    invoke-virtual {p0, v0, p1}, Lcom/dianping/logan/CLoganProtocol;->h(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/dianping/logan/CLoganProtocol;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/dianping/logan/CLoganProtocol;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/dianping/logan/CLoganProtocol;->clogan_debug(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;I)V
    .locals 2

    if-gez p2, :cond_2

    const-string v0, "clogan_write"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0xfdc

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/dianping/logan/CLoganProtocol;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianping/logan/CLoganProtocol;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/dianping/logan/CLoganProtocol;->c:Lef7;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lef7;->a(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
