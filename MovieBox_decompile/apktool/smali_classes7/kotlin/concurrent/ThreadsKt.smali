.class public final Lkotlin/concurrent/ThreadsKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aQ\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "",
        "start",
        "isDaemon",
        "Ljava/lang/ClassLoader;",
        "contextClassLoader",
        "",
        "name",
        "",
        "priority",
        "Lkotlin/Function0;",
        "",
        "block",
        "Ljava/lang/Thread;",
        "a",
        "(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static final a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;
    .locals 1

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    .line 7
    .line 8
    invoke-direct {v0, p5}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-lez p4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/Thread;->setPriority(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    if-eqz p3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz p2, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 30
    .line 31
    .line 32
    :cond_3
    if-eqz p0, :cond_4

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    .line 36
    .line 37
    :cond_4
    return-object v0
.end method

.method public static synthetic b(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    :cond_0
    move v0, p0

    .line 7
    and-int/lit8 p0, p6, 0x2

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_1
    move v1, p1

    .line 13
    and-int/lit8 p0, p6, 0x4

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    move-object v2, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move-object v2, p2

    .line 21
    :goto_0
    and-int/lit8 p0, p6, 0x8

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_3
    move-object v3, p3

    .line 28
    :goto_1
    and-int/lit8 p0, p6, 0x10

    .line 29
    .line 30
    if-eqz p0, :cond_4

    .line 31
    .line 32
    const/4 p4, -0x1

    .line 33
    :cond_4
    move v4, p4

    .line 34
    move-object v5, p5

    .line 35
    invoke-static/range {v0 .. v5}, Lkotlin/concurrent/ThreadsKt;->a(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
