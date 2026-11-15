.class public Lorg/mvel2/util/d$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


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

.method private c(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    const-class p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    invoke-direct {p0, p2, p3}, Lorg/mvel2/util/d$b;->d(Ljava/lang/Class;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    invoke-direct {p0, p2, p3}, Lorg/mvel2/util/d$b;->d(Ljava/lang/Class;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-ne p1, v0, :cond_4

    .line 35
    .line 36
    invoke-direct {p0, p2, p3}, Lorg/mvel2/util/d$b;->d(Ljava/lang/Class;Z)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    if-ne p1, v0, :cond_5

    .line 44
    .line 45
    invoke-direct {p0, p2, p3}, Lorg/mvel2/util/d$b;->d(Ljava/lang/Class;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_5
    sget-object p3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-ne p1, p3, :cond_7

    .line 53
    .line 54
    const-class p1, Ljava/lang/Character;

    .line 55
    .line 56
    if-ne p2, p1, :cond_6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_6
    move v1, v2

    .line 60
    :goto_1
    return v1

    .line 61
    :cond_7
    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 62
    .line 63
    if-ne p1, p3, :cond_9

    .line 64
    .line 65
    const-class p1, Ljava/lang/Byte;

    .line 66
    .line 67
    if-ne p2, p1, :cond_8

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_8
    move v1, v2

    .line 71
    :goto_2
    return v1

    .line 72
    :cond_9
    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    if-ne p1, p3, :cond_b

    .line 75
    .line 76
    const-class p1, Ljava/lang/Short;

    .line 77
    .line 78
    if-ne p2, p1, :cond_a

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_a
    move v1, v2

    .line 82
    :goto_3
    return v1

    .line 83
    :cond_b
    return v2
.end method

.method private d(Ljava/lang/Class;Z)Z
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-class p2, Ljava/lang/String;

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/util/d$b;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-class v1, Lorg/mvel2/util/l;

    .line 3
    .line 4
    if-eq p1, v1, :cond_7

    .line 5
    .line 6
    if-ne p2, v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_7

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v1}, Lorg/mvel2/util/d$b;->d(Ljava/lang/Class;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-direct {p0, p2, v0}, Lorg/mvel2/util/d$b;->d(Ljava/lang/Class;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    invoke-direct {p0, p1, p2, v0}, Lorg/mvel2/util/d$b;->c(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v0, v1

    .line 56
    :cond_4
    :goto_0
    return v0

    .line 57
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-direct {p0, p2, p1, v1}, Lorg/mvel2/util/d$b;->c(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_6
    return v1

    .line 69
    :cond_7
    :goto_1
    return v0
.end method
