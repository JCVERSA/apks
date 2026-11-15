.class public final Lcom/cloud/hisavana/sdk/manager/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/manager/g$a;,
        Lcom/cloud/hisavana/sdk/manager/g$b;,
        Lcom/cloud/hisavana/sdk/manager/g$c;
    }
.end annotation


# static fields
.field public static final d:Lcom/cloud/hisavana/sdk/manager/g$a;

.field private static final e:Lcom/cloud/hisavana/sdk/manager/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/manager/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    .line 8
    .line 9
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/g;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/g;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/g;->e:Lcom/cloud/hisavana/sdk/manager/g;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "RetryTrackingManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->c:I

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/manager/g;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/g;->k(Lcom/cloud/hisavana/sdk/manager/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/cloud/hisavana/sdk/manager/g;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/g;->f()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic c()Lcom/cloud/hisavana/sdk/manager/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/g;->e:Lcom/cloud/hisavana/sdk/manager/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f()J
    .locals 4

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/16 v2, 0x7d0

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    rem-long/2addr v0, v2

    .line 14
    const/16 v2, 0x3e8

    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    add-long/2addr v0, v2

    .line 18
    return-wide v0
.end method

.method public static final synthetic g(Lcom/cloud/hisavana/sdk/manager/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final k(Lcom/cloud/hisavana/sdk/manager/g;)V
    .locals 5

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/hisavana/sdk/N0;->e:Lcom/cloud/hisavana/sdk/N0$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/N0$a;->a()Lcom/cloud/hisavana/sdk/N0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/N0;->m()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v2, v1

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->setNext(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 56
    .line 57
    .line 58
    move-object v2, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "tracking "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->c:I

    .line 39
    .line 40
    if-lt v0, v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getNext()Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x1

    .line 54
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "tracking,net is not ok"

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/g$d;

    .line 79
    .line 80
    invoke-direct {v0, p1, p0}, Lcom/cloud/hisavana/sdk/manager/g$d;-><init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/Y0;->g(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g$b;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final d(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->c:I

    .line 20
    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/N0;->e:Lcom/cloud/hisavana/sdk/N0$a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/N0$a;->a()Lcom/cloud/hisavana/sdk/N0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/N0;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "addTrackingBean "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/cloud/hisavana/sdk/N0;->e:Lcom/cloud/hisavana/sdk/N0$a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/N0$a;->a()Lcom/cloud/hisavana/sdk/N0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/N0;->k()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/N0$a;->a()Lcom/cloud/hisavana/sdk/N0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getUuid()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    :cond_0
    const-string v2, ""

    .line 49
    .line 50
    :cond_1
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/N0;->h(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/N0$a;->a()Lcom/cloud/hisavana/sdk/N0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/N0;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "startRetryTracking,is retrying"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 28
    .line 29
    new-instance v1, Lcom/cloud/hisavana/sdk/manager/f;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/manager/f;-><init>(Lcom/cloud/hisavana/sdk/manager/g;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/hisavana/sdk/N0;->e:Lcom/cloud/hisavana/sdk/N0$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/N0$a;->a()Lcom/cloud/hisavana/sdk/N0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getUuid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/N0;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
