.class public final Lru/zdevs/zarchiver/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/service/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lru/zdevs/zarchiver/service/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/service/a;->a:Ljava/util/LinkedList;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Lh0/h;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh0/h;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lh0/h;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x2f

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lh0/h;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Lh0/h;III)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lru/zdevs/zarchiver/service/a;->c(Lh0/h;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p2, p3, p4, p1}, Lru/zdevs/zarchiver/service/a;->b(IIILjava/lang/String;)Lru/zdevs/zarchiver/service/a$a;

    .line 7
    .line 8
    .line 9
    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    :try_start_1
    iget-object p4, p0, Lru/zdevs/zarchiver/service/a;->a:Ljava/util/LinkedList;

    .line 16
    .line 17
    new-instance v0, Lru/zdevs/zarchiver/service/a$a;

    .line 18
    .line 19
    invoke-direct {v0, p2, p3, p1}, Lru/zdevs/zarchiver/service/a$a;-><init>(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final declared-synchronized b(IIILjava/lang/String;)Lru/zdevs/zarchiver/service/a$a;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/service/a;->a:Ljava/util/LinkedList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lru/zdevs/zarchiver/service/a$a;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {p3, v2}, La0/c;->K(II)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget v3, v1, Lru/zdevs/zarchiver/service/a$a;->c:I

    .line 28
    .line 29
    if-ne v3, p2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x4

    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq p1, v2, :cond_3

    .line 35
    .line 36
    if-eq p1, v4, :cond_4

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq p1, v2, :cond_5

    .line 40
    .line 41
    if-eq p1, v3, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object v2, v1, Lru/zdevs/zarchiver/service/a$a;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p4, v2}, La0/c;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-object v1

    .line 54
    :cond_3
    :try_start_1
    iget v5, v1, Lru/zdevs/zarchiver/service/a$a;->b:I

    .line 55
    .line 56
    if-ne v5, v4, :cond_4

    .line 57
    .line 58
    iget-object v4, v1, Lru/zdevs/zarchiver/service/a$a;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p4, v4}, La0/c;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-object v1

    .line 68
    :cond_4
    :try_start_2
    iget v4, v1, Lru/zdevs/zarchiver/service/a$a;->b:I

    .line 69
    .line 70
    if-ne v4, v2, :cond_5

    .line 71
    .line 72
    iget-object v2, v1, Lru/zdevs/zarchiver/service/a$a;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p4, v2}, La0/c;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-object v1

    .line 82
    :cond_5
    :try_start_3
    iget v2, v1, Lru/zdevs/zarchiver/service/a$a;->b:I

    .line 83
    .line 84
    if-ne v2, v3, :cond_0

    .line 85
    .line 86
    iget-object v2, v1, Lru/zdevs/zarchiver/service/a$a;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v2, p4}, La0/c;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-object v1

    .line 96
    :cond_6
    monitor-exit p0

    .line 97
    const/4 p1, 0x0

    .line 98
    return-object p1

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    monitor-exit p0

    .line 101
    goto :goto_2

    .line 102
    :goto_1
    throw p1

    .line 103
    :goto_2
    goto :goto_1
.end method
