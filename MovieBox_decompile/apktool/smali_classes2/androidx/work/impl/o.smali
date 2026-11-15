.class public Landroidx/work/impl/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/work/l;


# instance fields
.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/work/impl/utils/futures/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/o;->c:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->x()Landroidx/work/impl/utils/futures/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/work/impl/o;->d:Landroidx/work/impl/utils/futures/a;

    .line 16
    .line 17
    sget-object v0, Landroidx/work/l;->b:Landroidx/work/l$b$b;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/work/impl/o;->a(Landroidx/work/l$b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroidx/work/l$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/o;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/work/l$b$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/work/impl/o;->d:Landroidx/work/impl/utils/futures/a;

    .line 11
    .line 12
    check-cast p1, Landroidx/work/l$b$c;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Landroidx/work/l$b$a;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, Landroidx/work/l$b$a;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/work/impl/o;->d:Landroidx/work/impl/utils/futures/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/work/l$b$a;->a()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/a;->u(Ljava/lang/Throwable;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
