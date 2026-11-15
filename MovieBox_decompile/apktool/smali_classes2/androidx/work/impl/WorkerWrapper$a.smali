.class public Landroidx/work/impl/WorkerWrapper$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroidx/work/i;

.field c:Landroidx/work/impl/foreground/a;

.field d:Lk4/c;

.field e:Landroidx/work/a;

.field f:Landroidx/work/impl/WorkDatabase;

.field g:Lj4/u;

.field h:Ljava/util/List;

.field private final i:Ljava/util/List;

.field j:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lk4/c;Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Lj4/u;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/WorkerParameters$a;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper$a;->j:Landroidx/work/WorkerParameters$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$a;->a:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$a;->d:Lk4/c;

    .line 18
    .line 19
    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$a;->c:Landroidx/work/impl/foreground/a;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$a;->e:Landroidx/work/a;

    .line 22
    .line 23
    iput-object p5, p0, Landroidx/work/impl/WorkerWrapper$a;->f:Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    iput-object p6, p0, Landroidx/work/impl/WorkerWrapper$a;->g:Lj4/u;

    .line 26
    .line 27
    iput-object p7, p0, Landroidx/work/impl/WorkerWrapper$a;->i:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method static synthetic a(Landroidx/work/impl/WorkerWrapper$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$a;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/work/impl/WorkerWrapper;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/impl/WorkerWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/work/impl/WorkerWrapper$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Landroidx/work/WorkerParameters$a;)Landroidx/work/impl/WorkerWrapper$a;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$a;->j:Landroidx/work/WorkerParameters$a;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public d(Ljava/util/List;)Landroidx/work/impl/WorkerWrapper$a;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$a;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
