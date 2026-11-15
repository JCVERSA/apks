.class public Lorg/apache/tools/ant/types/resources/comparators/FileSystem;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "source.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->FILE_UTILS:Lorg/apache/tools/ant/util/d;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected resourceCompare(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;)I
    .locals 2

    .line 1
    check-cast p1, Lmz/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lmz/c;->r()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p2, Lmz/c;

    .line 8
    .line 9
    invoke-virtual {p2}, Lmz/c;->r()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->FILE_UTILS:Lorg/apache/tools/ant/util/d;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/d;->n(Ljava/io/File;Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    :goto_0
    return p1
.end method
