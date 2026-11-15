.class public Landroidx/work/impl/utils/WorkForegroundUpdater;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/work/f;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lk4/c;

.field final b:Landroidx/work/impl/foreground/a;

.field final c:Lj4/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WMFgUpdater"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/a;Lk4/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater;->b:Landroidx/work/impl/foreground/a;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater;->a:Lk4/c;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater;->c:Lj4/v;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/e;)Lcom/google/common/util/concurrent/r;
    .locals 9

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->x()Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    iget-object v7, p0, Landroidx/work/impl/utils/WorkForegroundUpdater;->a:Lk4/c;

    .line 6
    .line 7
    new-instance v8, Landroidx/work/impl/utils/WorkForegroundUpdater$1;

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, v6

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/utils/WorkForegroundUpdater$1;-><init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Landroidx/work/impl/utils/futures/a;Ljava/util/UUID;Landroidx/work/e;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v7, v8}, Lk4/c;->c(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-object v6
.end method
