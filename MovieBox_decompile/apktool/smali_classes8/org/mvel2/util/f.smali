.class public Lorg/mvel2/util/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/mvel2/util/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/mvel2/util/f;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eq p1, p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    array-length p2, p2

    .line 12
    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getCursor()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gt p2, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    array-length p2, p2

    .line 23
    add-int/lit8 p2, p2, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getCursor()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, p1}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Lorg/mvel2/CompileException;->setCursor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    sget-object p2, Lorg/mvel2/util/f;->a:Ljava/util/logging/Logger;

    .line 80
    .line 81
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 82
    .line 83
    const-string v1, ""

    .line 84
    .line 85
    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b(Lorg/mvel2/c;[CI)Lorg/mvel2/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/c;->d()[C

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mvel2/c;->d()[C

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/mvel2/c;->c()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, p1}, Lorg/mvel2/c;->j([C)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-int/2addr p2, p1

    .line 41
    invoke-virtual {p0, p2}, Lorg/mvel2/c;->i(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object p0
.end method
