.class public abstract Landroidx/activity/result/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lf/g$f;IZLf/g$b;)Landroidx/activity/result/e;
    .locals 1

    .line 1
    const-string v0, "mediaType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "defaultTab"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/activity/result/e$a;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/activity/result/e$a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/activity/result/e$a;->d(Lf/g$f;)Landroidx/activity/result/e$a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/activity/result/e$a;->c(I)Landroidx/activity/result/e$a;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p2}, Landroidx/activity/result/e$a;->e(Z)Landroidx/activity/result/e$a;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p3}, Landroidx/activity/result/e$a;->b(Lf/g$b;)Landroidx/activity/result/e$a;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroidx/activity/result/e$a;->a()Landroidx/activity/result/e;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static synthetic b(Lf/g$f;IZLf/g$b;ILjava/lang/Object;)Landroidx/activity/result/e;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p0, Lf/g$c;->a:Lf/g$c;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    sget-object p1, Lf/e;->b:Lf/e$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lf/e$a;->a()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 18
    .line 19
    if-eqz p5, :cond_2

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 23
    .line 24
    if-eqz p4, :cond_3

    .line 25
    .line 26
    sget-object p3, Lf/g$b$a;->a:Lf/g$b$a;

    .line 27
    .line 28
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/activity/result/f;->a(Lf/g$f;IZLf/g$b;)Landroidx/activity/result/e;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
