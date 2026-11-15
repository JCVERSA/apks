.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-rc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lob/b0;Lob/e;)Lcom/google/firebase/remoteconfig/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lob/b0;Lob/e;)Lcom/google/firebase/remoteconfig/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lob/b0;Lob/e;)Lcom/google/firebase/remoteconfig/c;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/firebase/remoteconfig/c;

    .line 2
    .line 3
    const-class v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lob/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroid/content/Context;

    .line 11
    .line 12
    invoke-interface {p1, p0}, Lob/e;->f(Lob/b0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    move-object v2, p0

    .line 17
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    const-class p0, Lcom/google/firebase/f;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lob/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    move-object v3, p0

    .line 26
    check-cast v3, Lcom/google/firebase/f;

    .line 27
    .line 28
    const-class p0, Llc/e;

    .line 29
    .line 30
    invoke-interface {p1, p0}, Lob/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    move-object v4, p0

    .line 35
    check-cast v4, Llc/e;

    .line 36
    .line 37
    const-class p0, Lcom/google/firebase/abt/component/a;

    .line 38
    .line 39
    invoke-interface {p1, p0}, Lob/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/google/firebase/abt/component/a;

    .line 44
    .line 45
    const-string v0, "frc"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/google/firebase/abt/component/a;->b(Ljava/lang/String;)Ljb/b;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-class p0, Lmb/a;

    .line 52
    .line 53
    invoke-interface {p1, p0}, Lob/e;->h(Ljava/lang/Class;)Lkc/b;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v0, v7

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Llc/e;Ljb/b;Lkc/b;)V

    .line 59
    .line 60
    .line 61
    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lob/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lnb/b;

    .line 2
    .line 3
    const-class v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lob/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lob/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v3, Lcd/a;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 16
    .line 17
    const-class v3, Lcom/google/firebase/remoteconfig/c;

    .line 18
    .line 19
    invoke-static {v3, v2}, Lob/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lob/c$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "fire-rc"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lob/c$b;->h(Ljava/lang/String;)Lob/c$b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-class v5, Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v5}, Lob/r;->k(Ljava/lang/Class;)Lob/r;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v2, v5}, Lob/c$b;->b(Lob/r;)Lob/c$b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0}, Lob/r;->l(Lob/b0;)Lob/r;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v2, v5}, Lob/c$b;->b(Lob/r;)Lob/c$b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-class v5, Lcom/google/firebase/f;

    .line 48
    .line 49
    invoke-static {v5}, Lob/r;->k(Ljava/lang/Class;)Lob/r;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v2, v5}, Lob/c$b;->b(Lob/r;)Lob/c$b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-class v5, Llc/e;

    .line 58
    .line 59
    invoke-static {v5}, Lob/r;->k(Ljava/lang/Class;)Lob/r;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v2, v5}, Lob/c$b;->b(Lob/r;)Lob/c$b;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-class v5, Lcom/google/firebase/abt/component/a;

    .line 68
    .line 69
    invoke-static {v5}, Lob/r;->k(Ljava/lang/Class;)Lob/r;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v2, v5}, Lob/c$b;->b(Lob/r;)Lob/c$b;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-class v5, Lmb/a;

    .line 78
    .line 79
    invoke-static {v5}, Lob/r;->i(Ljava/lang/Class;)Lob/r;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v2, v5}, Lob/c$b;->b(Lob/r;)Lob/c$b;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v5, Lad/o;

    .line 88
    .line 89
    invoke-direct {v5, v0}, Lad/o;-><init>(Lob/b0;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Lob/c$b;->f(Lob/h;)Lob/c$b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lob/c$b;->e()Lob/c$b;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lob/c$b;->d()Lob/c;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v2, "22.0.1"

    .line 105
    .line 106
    invoke-static {v3, v2}, Lzc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lob/c;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const/4 v3, 0x2

    .line 111
    new-array v3, v3, [Lob/c;

    .line 112
    .line 113
    aput-object v0, v3, v4

    .line 114
    .line 115
    aput-object v2, v3, v1

    .line 116
    .line 117
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
