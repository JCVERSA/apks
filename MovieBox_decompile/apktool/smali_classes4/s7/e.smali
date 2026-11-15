.class public abstract Ls7/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ls7/d;

.field static b:Ls7/a;

.field static c:Lg8/c;

.field static d:Z


# direct methods
.method static a()V
    .locals 2

    .line 1
    sget-boolean v0, Ls7/e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Do you forget to initialize XLog?"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ls7/e;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ls7/e;->a:Ls7/d;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ls7/d;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ls7/e;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ls7/e;->a:Ls7/d;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ls7/d;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ls7/e;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ls7/e;->a:Ls7/d;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ls7/d;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static e(Ls7/a;)V
    .locals 3

    .line 1
    invoke-static {}, Ld8/a;->i()Lg8/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Lg8/c;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    invoke-static {p0, v1}, Ls7/e;->f(Ls7/a;[Lg8/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static varargs f(Ls7/a;[Lg8/c;)V
    .locals 2

    .line 1
    sget-boolean v0, Ls7/e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ld8/b;->e()Ld8/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "XLog is already initialized, do not initialize again"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ld8/b;->g(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Ls7/e;->d:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    sput-object p0, Ls7/e;->b:Ls7/a;

    .line 20
    .line 21
    new-instance p0, Lg8/d;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lg8/d;-><init>([Lg8/c;)V

    .line 24
    .line 25
    .line 26
    sput-object p0, Ls7/e;->c:Lg8/c;

    .line 27
    .line 28
    new-instance p1, Ls7/d;

    .line 29
    .line 30
    sget-object v0, Ls7/e;->b:Ls7/a;

    .line 31
    .line 32
    invoke-direct {p1, v0, p0}, Ls7/d;-><init>(Ls7/a;Lg8/c;)V

    .line 33
    .line 34
    .line 35
    sput-object p1, Ls7/e;->a:Ls7/d;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "Please specify a LogConfiguration"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static g(Ljava/lang/String;)Ls7/d$a;
    .locals 1

    .line 1
    new-instance v0, Ls7/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ls7/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ls7/d$a;->x(Ljava/lang/String;)Ls7/d$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
