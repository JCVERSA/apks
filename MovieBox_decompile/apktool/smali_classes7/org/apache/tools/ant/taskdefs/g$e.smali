.class Lorg/apache/tools/ant/taskdefs/g$e;
.super Lorg/apache/tools/ant/taskdefs/g$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
    .locals 7

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
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    array-length v0, p2

    .line 20
    const/4 v1, 0x7

    .line 21
    add-int/2addr v0, v1

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "cmd"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v2, v0, v3

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const-string v4, "/c"

    .line 31
    .line 32
    aput-object v4, v0, v2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {p4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v0, v2

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    const-string v5, "&&"

    .line 43
    .line 44
    aput-object v5, v0, v4

    .line 45
    .line 46
    const/4 v4, 0x4

    .line 47
    const-string v6, "cd"

    .line 48
    .line 49
    aput-object v6, v0, v4

    .line 50
    .line 51
    const/4 v4, 0x5

    .line 52
    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    aput-object p4, v0, v4

    .line 57
    .line 58
    const/4 p4, 0x6

    .line 59
    aput-object v5, v0, p4

    .line 60
    .line 61
    array-length p4, p2

    .line 62
    invoke-static {p2, v3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/tools/ant/taskdefs/g$b;->a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method
