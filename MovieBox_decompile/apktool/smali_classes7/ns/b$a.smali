.class public final Lns/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lns/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lns/b$a;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    .line 1
    invoke-static {}, Lns/b;->a()Lns/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lns/b$a;->b()Lns/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lns/b;->b(Lns/a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final b()Lns/a;
    .locals 1

    .line 1
    sget-object v0, Lqs/b;->a:Lqs/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqs/b$a;->a()Lqs/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic g(Lns/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move v4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v4, p3

    .line 9
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    move v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v5, p4

    .line 16
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    move v6, v0

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move v6, p5

    .line 23
    :goto_2
    move-object v1, p0

    .line 24
    move v2, p1

    .line 25
    move-object v3, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Lns/b$a;->f(ILjava/lang/CharSequence;III)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lqs/b;->a:Lqs/b$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lqs/b$a;->b(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lns/b$a;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lns/b;->a()Lns/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lns/a;->a(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lns/b$a;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lns/b;->a()Lns/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lns/a;->b(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final f(ILjava/lang/CharSequence;III)V
    .locals 7

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lns/b$a;->a()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lns/b;->a()Lns/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move v4, p3

    .line 18
    move v5, p4

    .line 19
    move v6, p5

    .line 20
    invoke-interface/range {v1 .. v6}, Lns/a;->c(ILjava/lang/CharSequence;III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
