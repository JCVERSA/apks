.class Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ll8/b;


# instance fields
.field private final a:I

.field private b:Lcom/facebook/biddingkit/facebook/bidder/a;

.field private final c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

.field private final d:Lcom/facebook/biddingkit/facebook/bidder/c;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/c;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    .line 6
    iput v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->a:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 10
    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->d:Lcom/facebook/biddingkit/facebook/bidder/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/facebook/biddingkit/facebook/bidder/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/facebook/biddingkit/facebook/bidder/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/c;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method protected static c(Lr8/b;Lr8/b;)Ljava/lang/Double;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/biddingkit/facebook/bidder/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0}, Lr8/b;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1}, Lr8/b;->a()D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {p0}, Lr8/b;->a()D

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_1
    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->d:Lcom/facebook/biddingkit/facebook/bidder/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/c;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected static e(Lr8/b;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Lr8/b;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    return-object p0
.end method

.method private i()I
    .locals 1

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lr8/a;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lq8/b;->b(Lr8/a;)[Lr8/b;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v1, p2, v0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->e(Lr8/b;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    aget-object v3, p2, v0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aget-object p2, p2, v3

    .line 17
    .line 18
    invoke-static {v1, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c(Lr8/b;Lr8/b;)Ljava/lang/Double;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/facebook/biddingkit/bridge/a;->a()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lq8/b;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method protected g(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/LossCode;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/facebook/biddingkit/bidders/LossCode;->DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/bidders/LossCode;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lcom/facebook/biddingkit/facebook/bidder/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/facebook/biddingkit/bidders/LossCode;->WIN:Lcom/facebook/biddingkit/bidders/LossCode;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    sget-object p1, Lcom/facebook/biddingkit/bidders/LossCode;->TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

    .line 20
    .line 21
    return-object p1
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/facebook/biddingkit/bridge/a;->a()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->k(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->i()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p1, p2}, Lo8/b;->a(Ljava/lang/String;I)Ln8/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "null"

    .line 14
    .line 15
    const-string p3, "FacebookNotifier"

    .line 16
    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    new-instance p4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Facebook display winner notified with http status "

    .line 25
    .line 26
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Ln8/e;->a()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :goto_0
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p3, p1}, Lcom/facebook/biddingkit/logging/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v0, "Facebook bidder winner notified with http status "

    .line 57
    .line 58
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p1}, Ln8/e;->a()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :goto_1
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p3, p1}, Lcom/facebook/biddingkit/logging/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method

.method protected k(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->c:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "_"

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v9, ""

    .line 20
    .line 21
    if-lt v2, v3, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :try_start_1
    aget-object v0, v0, v2

    .line 25
    .line 26
    move-object v4, v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    move-object v4, v9

    .line 31
    :goto_0
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    move-object v3, p0

    .line 35
    move-object v5, p2

    .line 36
    move-object v6, p3

    .line 37
    move-object v7, p4

    .line 38
    move v8, p1

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/String;

    .line 67
    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    move-object v3, v9

    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/CharSequence;

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    const-string v2, "FacebookNotifier"

    .line 83
    .line 84
    const-string v3, "Failed processing the Url"

    .line 85
    .line 86
    invoke-static {v2, v3, v0}, Lcom/facebook/biddingkit/logging/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-object v1
.end method
