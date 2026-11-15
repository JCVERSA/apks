.class public Lfreemarker/template/SimpleCollection;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lbfa;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/SimpleCollection$a;
    }
.end annotation


# instance fields
.field private final collection:Ljava/util/Collection;

.field private final iterator:Ljava/util/Iterator;

.field private iteratorOwned:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnpc;-><init>()V

    .line 5
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->collection:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lgc7;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    .line 11
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->collection:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnpc;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->collection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lgc7;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    .line 8
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->collection:Ljava/util/Collection;

    return-void
.end method

.method public static synthetic access$000(Lfreemarker/template/SimpleCollection;)Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/template/SimpleCollection;->iteratorOwned:Z

    return p0
.end method

.method public static synthetic access$002(Lfreemarker/template/SimpleCollection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lfreemarker/template/SimpleCollection;->iteratorOwned:Z

    return p1
.end method


# virtual methods
.method public iterator()Lbga;
    .locals 4

    iget-object v0, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    new-instance v1, Lfreemarker/template/SimpleCollection$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lfreemarker/template/SimpleCollection$a;-><init>(Lfreemarker/template/SimpleCollection;Ljava/util/Iterator;Z)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lfreemarker/template/SimpleCollection;->collection:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lfreemarker/template/SimpleCollection$a;

    iget-object v2, p0, Lfreemarker/template/SimpleCollection;->collection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lfreemarker/template/SimpleCollection$a;-><init>(Lfreemarker/template/SimpleCollection;Ljava/util/Iterator;Z)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
