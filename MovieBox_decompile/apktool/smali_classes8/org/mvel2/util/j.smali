.class public Lorg/mvel2/util/j;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/util/j$c;,
        Lorg/mvel2/util/j$b;
    }
.end annotation


# instance fields
.field private a:[C

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/Set;


# direct methods
.method public constructor <init>([C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/util/j;->a:[C

    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lorg/mvel2/util/j;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Lorg/mvel2/util/j$b;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/TreeSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/mvel2/util/j;->c:Ljava/util/Set;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    move v2, v1

    .line 18
    move v1, v0

    .line 19
    :goto_0
    iget-object v3, p0, Lorg/mvel2/util/j;->a:[C

    .line 20
    .line 21
    array-length v4, v3

    .line 22
    const/4 v5, 0x0

    .line 23
    if-ge v0, v4, :cond_1

    .line 24
    .line 25
    aget-char v3, v3, v0

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v3, p0, Lorg/mvel2/util/j;->c:Ljava/util/Set;

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v4, Lorg/mvel2/util/j$c;

    .line 44
    .line 45
    add-int/lit8 v6, v2, 0x1

    .line 46
    .line 47
    invoke-direct {v4, v1, v0, v2, v5}, Lorg/mvel2/util/j$c;-><init>(IIILorg/mvel2/util/j$a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v0, 0x1

    .line 54
    .line 55
    move v2, v6

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-le v0, v1, :cond_2

    .line 60
    .line 61
    iget-object v3, p0, Lorg/mvel2/util/j;->c:Ljava/util/Set;

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    .line 71
    .line 72
    new-instance v4, Lorg/mvel2/util/j$c;

    .line 73
    .line 74
    invoke-direct {v4, v1, v0, v2, v5}, Lorg/mvel2/util/j$c;-><init>(IIILorg/mvel2/util/j$a;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    new-instance v0, Lorg/mvel2/util/j$a;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lorg/mvel2/util/j$a;-><init>(Lorg/mvel2/util/j;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method
