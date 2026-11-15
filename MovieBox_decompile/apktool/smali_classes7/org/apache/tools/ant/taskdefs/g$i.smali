.class Lorg/apache/tools/ant/taskdefs/g$i;
.super Lorg/apache/tools/ant/taskdefs/g$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/g$b;-><init>(Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 5

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->m()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/g$b;->a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_1
    :goto_0
    array-length v0, p2

    .line 16
    const/4 v1, 0x6

    .line 17
    add-int/2addr v0, v1

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "cmd"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const-string v4, "/c"

    .line 27
    .line 28
    aput-object v4, v0, v2

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    const-string v4, "cd"

    .line 32
    .line 33
    aput-object v4, v0, v2

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    const-string v4, "/d"

    .line 37
    .line 38
    aput-object v4, v0, v2

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    aput-object p4, v0, v2

    .line 46
    .line 47
    const/4 p4, 0x5

    .line 48
    const-string v2, "&&"

    .line 49
    .line 50
    aput-object v2, v0, p4

    .line 51
    .line 52
    array-length p4, p2

    .line 53
    invoke-static {p2, v3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/tools/ant/taskdefs/g$b;->a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method
