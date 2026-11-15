.class public abstract Lcom/google/android/gms/common/api/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/common/api/a;

.field public final d:Lcom/google/android/gms/common/api/a$d;

.field public final e:Lxd;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lcom/google/android/gms/common/api/c;

.field public final i:Lqx9;

.field public final j:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 3
    invoke-static {p3, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 4
    invoke-static {p5, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    .line 6
    invoke-static {v0, v1}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 7
    invoke-static {p1}, Lyi4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/b;->d:Lcom/google/android/gms/common/api/a$d;

    .line 10
    iget-object v1, p5, Lcom/google/android/gms/common/api/b$a;->b:Landroid/os/Looper;

    iput-object v1, p0, Lcom/google/android/gms/common/api/b;->f:Landroid/os/Looper;

    .line 11
    invoke-static {p3, p4, p1}, Lxd;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lxd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->e:Lxd;

    .line 12
    new-instance p3, Lf0e;

    invoke-direct {p3, p0}, Lf0e;-><init>(Lcom/google/android/gms/common/api/b;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/b;->h:Lcom/google/android/gms/common/api/c;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/c;->u(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/common/api/b;->j:Lcom/google/android/gms/common/api/internal/c;

    .line 14
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/c;->l()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/common/api/b;->g:I

    .line 15
    iget-object p4, p5, Lcom/google/android/gms/common/api/b$a;->a:Lqx9;

    iput-object p4, p0, Lcom/google/android/gms/common/api/b;->i:Lqx9;

    if-eqz p2, :cond_1

    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_1

    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_1

    .line 17
    invoke-static {p2, p3, p1}, Lpzd;->u(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/c;Lxd;)V

    .line 18
    :cond_1
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/c;->H(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lqx9;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/gms/common/api/b$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/b$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/b$a$a;->b(Lqx9;)Lcom/google/android/gms/common/api/b$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a$a;->a()Lcom/google/android/gms/common/api/b$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V

    return-void
.end method


# virtual methods
.method public final c()Lxd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->e:Lxd;

    return-object p0
.end method

.method public d()Lcom/google/android/gms/common/api/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->h:Lcom/google/android/gms/common/api/c;

    return-object p0
.end method

.method public e()Lay0$a;
    .locals 2

    new-instance v0, Lay0$a;

    invoke-direct {v0}, Lay0$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lay0$a;->d(Landroid/accounts/Account;)Lay0$a;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lay0$a;->c(Ljava/util/Collection;)Lay0$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lay0$a;->e(Ljava/lang/String;)Lay0$a;

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lay0$a;->b(Ljava/lang/String;)Lay0$a;

    return-object v0
.end method

.method public f(Lyda;)Lxda;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/b;->u(ILyda;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public g(Lyda;)Lxda;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/b;->u(ILyda;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public h(Lcom/google/android/gms/common/api/internal/g;)Lxda;
    .locals 3

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/g;->a:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->b()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/g;->b:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/h;->a()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    invoke-static {v0, v1}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/g;->a:Lcom/google/android/gms/common/api/internal/f;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/g;->b:Lcom/google/android/gms/common/api/internal/h;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/g;->c:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->j:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/common/api/internal/c;->w(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/h;Ljava/lang/Runnable;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcom/google/android/gms/common/api/internal/d$a;)Lxda;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/b;->j(Lcom/google/android/gms/common/api/internal/d$a;I)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public j(Lcom/google/android/gms/common/api/internal/d$a;I)Lxda;
    .locals 1

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->j:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/c;->x(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/internal/d$a;I)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public k(Lyda;)Lxda;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/b;->u(ILyda;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public l(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/b;->t(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    return-object p1
.end method

.method public m(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public n()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public p()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->f:Landroid/os/Looper;

    return-object p0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/b;->g:I

    return p0
.end method

.method public final r(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/m;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->e()Lay0$a;

    move-result-object v0

    invoke-virtual {v0}, Lay0$a;->a()Lay0;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a$a;

    iget-object v5, p0, Lcom/google/android/gms/common/api/b;->d:Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lay0;Ljava/lang/Object;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->o()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p2, p1, Lcom/google/android/gms/common/internal/a;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/common/internal/a;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/common/internal/a;->setAttributionTag(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_2

    instance-of p0, p1, Lm17;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final s(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zact;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zact;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->e()Lay0$a;

    move-result-object p0

    invoke-virtual {p0}, Lay0$a;->a()Lay0;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/common/api/internal/zact;-><init>(Landroid/content/Context;Landroid/os/Handler;Lay0;)V

    return-object v0
.end method

.method public final t(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->j:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/c;->C(Lcom/google/android/gms/common/api/b;ILcom/google/android/gms/common/api/internal/b;)V

    return-object p2
.end method

.method public final u(ILyda;)Lxda;
    .locals 7

    new-instance v6, Lzda;

    invoke-direct {v6}, Lzda;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/common/api/b;->i:Lqx9;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->j:Lcom/google/android/gms/common/api/internal/c;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/c;->D(Lcom/google/android/gms/common/api/b;ILyda;Lzda;Lqx9;)V

    invoke-virtual {v6}, Lzda;->a()Lxda;

    move-result-object p0

    return-object p0
.end method
