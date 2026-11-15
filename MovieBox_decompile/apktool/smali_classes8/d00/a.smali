.class public Ld00/a;
.super Ljava/lang/Object;
.source "source.java"


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


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ld00/f;

    .line 7
    .line 8
    invoke-direct {v1}, Ld00/f;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "set"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v1, Ld00/e;

    .line 17
    .line 18
    invoke-direct {v1}, Ld00/e;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "push"

    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Ld00/c;

    .line 27
    .line 28
    invoke-direct {v1}, Ld00/c;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "help"

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v1, Ld00/g;

    .line 37
    .line 38
    invoke-direct {v1}, Ld00/g;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "showvars"

    .line 42
    .line 43
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v1, Ld00/d;

    .line 47
    .line 48
    invoke-direct {v1}, Ld00/d;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "inspect"

    .line 52
    .line 53
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v1, Ld00/b;

    .line 57
    .line 58
    invoke-direct {v1}, Ld00/b;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "exit"

    .line 62
    .line 63
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object v0
.end method
