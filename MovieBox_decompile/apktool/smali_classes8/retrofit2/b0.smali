.class abstract Lretrofit2/b0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final a:Ljava/util/concurrent/Executor;

.field static final b:Lretrofit2/d0;

.field static final c:Lretrofit2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "java.vm.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "RoboVM"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    const-string v2, "Dalvik"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sput-object v1, Lretrofit2/b0;->a:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    new-instance v0, Lretrofit2/d0$b;

    .line 30
    .line 31
    invoke-direct {v0}, Lretrofit2/d0$b;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    .line 35
    .line 36
    new-instance v0, Lretrofit2/c$a;

    .line 37
    .line 38
    invoke-direct {v0}, Lretrofit2/c$a;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lretrofit2/a;

    .line 45
    .line 46
    invoke-direct {v0}, Lretrofit2/a;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lretrofit2/b0;->a:Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x18

    .line 54
    .line 55
    if-lt v0, v1, :cond_1

    .line 56
    .line 57
    new-instance v0, Lretrofit2/d0$a;

    .line 58
    .line 59
    invoke-direct {v0}, Lretrofit2/d0$a;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    .line 63
    .line 64
    new-instance v0, Lretrofit2/c$a;

    .line 65
    .line 66
    invoke-direct {v0}, Lretrofit2/c$a;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lretrofit2/d0;

    .line 73
    .line 74
    invoke-direct {v0}, Lretrofit2/d0;-><init>()V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    .line 78
    .line 79
    new-instance v0, Lretrofit2/c;

    .line 80
    .line 81
    invoke-direct {v0}, Lretrofit2/c;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    sput-object v1, Lretrofit2/b0;->a:Ljava/util/concurrent/Executor;

    .line 88
    .line 89
    new-instance v0, Lretrofit2/d0;

    .line 90
    .line 91
    invoke-direct {v0}, Lretrofit2/d0;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    .line 95
    .line 96
    new-instance v0, Lretrofit2/c;

    .line 97
    .line 98
    invoke-direct {v0}, Lretrofit2/c;-><init>()V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    .line 102
    .line 103
    :goto_0
    return-void
.end method
