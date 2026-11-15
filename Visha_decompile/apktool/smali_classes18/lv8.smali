.class public Llv8;
.super Ljv8;
.source "SourceFile"

# interfaces
.implements Lut1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llv8$c;,
        Llv8$e;,
        Llv8$b;,
        Llv8$a;,
        Llv8$d;
    }
.end annotation


# static fields
.field public static final e:Lzp0;

.field public static final f:Ljava/lang/Object;

.field public static g:J

.field public static h:Ljava/util/Set;


# instance fields
.field public c:Z

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxr9;

    new-instance v1, Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {v1}, Lfreemarker/ext/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lxr9;-><init>(Ljava/util/Map;)V

    sput-object v0, Llv8;->e:Lzp0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llv8;->f:Ljava/lang/Object;

    const-wide/16 v0, 0x1

    sput-wide v0, Llv8;->g:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Llv8;->h:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 4

    new-instance v0, Llv8$c;

    invoke-direct {v0, p1}, Llv8$c;-><init>(Lfreemarker/core/Environment;)V

    const/16 p1, 0x800

    invoke-direct {p0, v0, p1}, Ljv8;-><init>(Lzfa;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Llv8;->c:Z

    sget-object p1, Llv8;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-wide v0, Llv8;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Llv8;->g:J

    iput-wide v0, p0, Llv8;->d:J

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-class v0, Llv8;

    monitor-enter v0

    :try_start_0
    sget-object v1, Llv8;->e:Lzp0;

    invoke-interface {v1, p0}, Lzp0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    instance-of v3, p0, Lzfa;

    if-eqz v3, :cond_2

    instance-of v2, p0, Llv8$b;

    if-eqz v2, :cond_0

    const/16 v2, 0x2000

    goto :goto_0

    :cond_0
    instance-of v2, p0, Llv8$e;

    if-eqz v2, :cond_1

    const/16 v2, 0x1000

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljv8;

    move-object v4, p0

    check-cast v4, Lzfa;

    invoke-direct {v3, v4, v2}, Ljv8;-><init>(Lzfa;I)V

    move-object v2, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    instance-of v3, p0, Lfreemarker/core/Environment;

    if-eqz v3, :cond_3

    new-instance v2, Llv8;

    move-object v3, p0

    check-cast v3, Lfreemarker/core/Environment;

    invoke-direct {v2, v3}, Llv8;-><init>(Lfreemarker/core/Environment;)V

    goto :goto_1

    :cond_3
    instance-of v3, p0, Lfreemarker/template/Template;

    if-eqz v3, :cond_4

    new-instance v2, Llv8$e;

    move-object v3, p0

    check-cast v3, Lfreemarker/template/Template;

    invoke-direct {v2, v3}, Llv8$e;-><init>(Lfreemarker/template/Template;)V

    goto :goto_1

    :cond_4
    instance-of v3, p0, Lxe1;

    if-eqz v3, :cond_5

    new-instance v2, Llv8$b;

    move-object v3, p0

    check-cast v3, Lxe1;

    invoke-direct {v2, v3}, Llv8$b;-><init>(Lxe1;)V

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v1, p0, v2}, Lzp0;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    instance-of p0, v2, Ljava/rmi/Remote;

    if-eqz p0, :cond_7

    sget-object p0, Llv8;->h:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit v0

    return-object v2

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public c()Z
    .locals 0

    iget-boolean p0, p0, Llv8;->c:Z

    return p0
.end method
