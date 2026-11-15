.class public final Lb9/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lw8/b;


# instance fields
.field private final a:Liy/a;

.field private final b:Liy/a;

.field private final c:Liy/a;

.field private final d:Liy/a;


# direct methods
.method public constructor <init>(Liy/a;Liy/a;Liy/a;Liy/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb9/t;->a:Liy/a;

    .line 5
    .line 6
    iput-object p2, p0, Lb9/t;->b:Liy/a;

    .line 7
    .line 8
    iput-object p3, p0, Lb9/t;->c:Liy/a;

    .line 9
    .line 10
    iput-object p4, p0, Lb9/t;->d:Liy/a;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Liy/a;Liy/a;Liy/a;Liy/a;)Lb9/t;
    .locals 1

    .line 1
    new-instance v0, Lb9/t;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lb9/t;-><init>(Liy/a;Liy/a;Liy/a;Liy/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lc9/d;Lb9/u;Ld9/a;)Lb9/s;
    .locals 1

    .line 1
    new-instance v0, Lb9/s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lb9/s;-><init>(Ljava/util/concurrent/Executor;Lc9/d;Lb9/u;Ld9/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lb9/s;
    .locals 4

    .line 1
    iget-object v0, p0, Lb9/t;->a:Liy/a;

    .line 2
    .line 3
    invoke-interface {v0}, Liy/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget-object v1, p0, Lb9/t;->b:Liy/a;

    .line 10
    .line 11
    invoke-interface {v1}, Liy/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lc9/d;

    .line 16
    .line 17
    iget-object v2, p0, Lb9/t;->c:Liy/a;

    .line 18
    .line 19
    invoke-interface {v2}, Liy/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lb9/u;

    .line 24
    .line 25
    iget-object v3, p0, Lb9/t;->d:Liy/a;

    .line 26
    .line 27
    invoke-interface {v3}, Liy/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ld9/a;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lb9/t;->c(Ljava/util/concurrent/Executor;Lc9/d;Lb9/u;Ld9/a;)Lb9/s;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb9/t;->b()Lb9/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
