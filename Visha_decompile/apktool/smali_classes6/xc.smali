.class public final Lxc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc$c;,
        Lxc$d;,
        Lxc$a;,
        Lxc$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Landroid/util/ArrayMap;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lxc$a;

.field public final d:Ljava/lang/Runnable;

.field public e:Lxc$d;

.field public f:J

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lxc;->h:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lxc$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lxc;->a:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxc;->b:Ljava/util/ArrayList;

    new-instance v0, Lxc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxc$a;-><init>(Lxc;Lzc;)V

    iput-object v0, p0, Lxc;->c:Lxc$a;

    new-instance v0, Lwc;

    invoke-direct {v0, p0}, Lwc;-><init>(Lxc;)V

    iput-object v0, p0, Lxc;->d:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lxc;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxc;->g:Z

    iput-object p1, p0, Lxc;->e:Lxc$d;

    return-void
.end method

.method public static synthetic a(Lxc;)V
    .locals 0

    invoke-virtual {p0}, Lxc;->k()V

    return-void
.end method

.method public static bridge synthetic b(Lxc;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lxc;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic c(Lxc;)Lxc$d;
    .locals 0

    iget-object p0, p0, Lxc;->e:Lxc$d;

    return-object p0
.end method

.method public static bridge synthetic d()J
    .locals 2

    invoke-static {}, Lxc;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()Lxc;
    .locals 3

    sget-object v0, Lxc;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lxc;

    new-instance v2, Lxc$c;

    invoke-direct {v2}, Lxc$c;-><init>()V

    invoke-direct {v1, v2}, Lxc;-><init>(Lxc$d;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxc;

    return-object v0
.end method

.method public static i()J
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    invoke-static {}, Lvc;->a()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public e(Lxc$b;J)V
    .locals 2

    iget-object v0, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxc;->e:Lxc$d;

    iget-object v1, p0, Lxc;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lxc$d;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lxc;->a:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lxc;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxc;->g:Z

    :cond_2
    return-void
.end method

.method public g(J)V
    .locals 5

    invoke-static {}, Lxc;->i()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxc$b;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3, v0, v1}, Lxc;->j(Lxc$b;J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p1, p2}, Lxc$b;->doAnimationFrame(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lxc;->f()V

    return-void
.end method

.method public final j(Lxc$b;J)Z
    .locals 4

    iget-object v0, p0, Lxc;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    iget-object p0, p0, Lxc;->a:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic k()V
    .locals 0

    iget-object p0, p0, Lxc;->c:Lxc$a;

    invoke-virtual {p0}, Lxc$a;->a()V

    return-void
.end method

.method public l(Lxc$b;)V
    .locals 2

    iget-object v0, p0, Lxc;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lxc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lxc;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxc;->g:Z

    :cond_0
    return-void
.end method
