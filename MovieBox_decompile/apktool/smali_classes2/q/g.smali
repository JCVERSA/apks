.class public abstract Lq/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lq/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    invoke-static {v0}, Lq/g;->a(I)Lq/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lq/g;->a:Lq/f;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(I)Lq/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lq/c;->a(I)Lq/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lq/g;->b(Lq/b;)Lq/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final b(Lq/b;)Lq/f;
    .locals 1

    .line 1
    new-instance v0, Lq/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0, p0, p0}, Lq/f;-><init>(Lq/b;Lq/b;Lq/b;Lq/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final c(F)Lq/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lq/c;->b(F)Lq/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lq/g;->b(Lq/b;)Lq/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final d(FFFF)Lq/f;
    .locals 1

    .line 1
    new-instance v0, Lq/f;

    .line 2
    .line 3
    invoke-static {p0}, Lq/c;->b(F)Lq/b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lq/c;->b(F)Lq/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2}, Lq/c;->b(F)Lq/b;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p3}, Lq/c;->b(F)Lq/b;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-direct {v0, p0, p1, p2, p3}, Lq/f;-><init>(Lq/b;Lq/b;Lq/b;Lq/b;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final e()Lq/f;
    .locals 1

    .line 1
    sget-object v0, Lq/g;->a:Lq/f;

    .line 2
    .line 3
    return-object v0
.end method
