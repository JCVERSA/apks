.class public final Lru/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lretrofit2/f;


# instance fields
.field public final synthetic a:Lru/d;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lru/d;Lcom/transsion/upgradesdk/manager/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/c;->a:Lru/d;

    .line 2
    .line 3
    iput-object p2, p0, Lru/c;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/d;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "t"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "\u5347\u7ea7\u4fe1\u606f - request failure: "

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "tag"

    .line 26
    .line 27
    const-string v1, "UpgradeSdkManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "msg"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    sget-boolean p1, Ltu/g;->a:Z

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-wide v2, Ltu/g;->b:J

    .line 47
    .line 48
    sub-long v2, v0, v2

    .line 49
    .line 50
    const-wide/16 v4, 0x1388

    .line 51
    .line 52
    cmp-long v2, v2, v4

    .line 53
    .line 54
    if-gez v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sput-wide v0, Ltu/g;->b:J

    .line 58
    .line 59
    const-string p1, "upgradeSdkLog"

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    sput-boolean p1, Ltu/g;->a:Z

    .line 70
    .line 71
    :cond_2
    sget-boolean p1, Ltu/g;->a:Z

    .line 72
    .line 73
    :goto_0
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 74
    .line 75
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 80
    .line 81
    iget-object p1, p0, Lru/c;->a:Lru/d;

    .line 82
    .line 83
    const/4 v0, 0x6

    .line 84
    iput v0, p1, Lru/d;->c:I

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/4 v7, 0x0

    .line 91
    const/16 v8, 0x70

    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    const/4 v2, 0x3

    .line 95
    const-string v4, "2"

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    invoke-static/range {v1 .. v8}, Ltu/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lru/c;->b:Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final b(Lretrofit2/d;Lretrofit2/j0;)V
    .locals 3

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lretrofit2/j0;->e()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lru/c;->a:Lru/d;

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    iput v0, p1, Lru/d;->c:I

    .line 21
    .line 22
    iget-object p1, p0, Lru/c;->b:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    invoke-virtual {p2}, Lretrofit2/j0;->a()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lru/c;->a:Lru/d;

    .line 33
    .line 34
    const/4 v0, 0x6

    .line 35
    iput v0, p1, Lru/d;->c:I

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lretrofit2/j0;->b()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x2d

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lretrofit2/j0;->f()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "2"

    .line 66
    .line 67
    const/16 v0, 0x10

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    const/4 v2, 0x3

    .line 71
    invoke-static {v1, v2, p1, p2, v0}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lru/c;->b:Lkotlin/jvm/functions/Function1;

    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method
