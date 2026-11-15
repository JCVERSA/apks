.class public final Lcom/yandex/mobile/ads/impl/i61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/l61;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/k61;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/lt0;

.field private final e:Lcom/yandex/mobile/ads/impl/ht0;

.field private f:Lcom/yandex/mobile/ads/impl/vt;

.field private g:Lcom/yandex/mobile/ads/impl/bu;

.field private h:Lcom/yandex/mobile/ads/impl/ku;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V
    .locals 9

    .line 1
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/lt0;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/lt0;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/i61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Ljava/util/List;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/vt;Lcom/yandex/mobile/ads/impl/bu;Lcom/yandex/mobile/ads/impl/ku;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Ljava/util/List;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/vt;Lcom/yandex/mobile/ads/impl/bu;Lcom/yandex/mobile/ads/impl/ku;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdLoadingItems"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadUsageValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadExecutor"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i61;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i61;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i61;->e:Lcom/yandex/mobile/ads/impl/ht0;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/i61;->f:Lcom/yandex/mobile/ads/impl/vt;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/i61;->g:Lcom/yandex/mobile/ads/impl/bu;

    .line 14
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/i61;->h:Lcom/yandex/mobile/ads/impl/ku;

    .line 15
    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;ILcom/yandex/mobile/ads/impl/i61;)V
    .locals 7

    .line 21
    const-string v0, "$adRequestData"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nativeResponseType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sourceType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestPolicy"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/yandex/mobile/ads/impl/u61;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/u61;-><init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;I)V

    .line 23
    new-instance p0, Lcom/yandex/mobile/ads/impl/k61;

    .line 24
    iget-object p1, p5, Lcom/yandex/mobile/ads/impl/i61;->a:Landroid/content/Context;

    iget-object p2, p5, Lcom/yandex/mobile/ads/impl/i61;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 25
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/yandex/mobile/ads/impl/k61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/l61;)V

    .line 26
    iget-object p1, p5, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p5, Lcom/yandex/mobile/ads/impl/i61;->g:Lcom/yandex/mobile/ads/impl/bu;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/k61;->a(Lcom/yandex/mobile/ads/impl/bu;)V

    .line 28
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k61;->c()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V
    .locals 7

    .line 9
    const-string v0, "$adRequestData"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nativeResponseType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sourceType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestPolicy"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/yandex/mobile/ads/impl/u61;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/u61;-><init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;I)V

    .line 12
    new-instance p0, Lcom/yandex/mobile/ads/impl/k61;

    .line 13
    iget-object p1, p4, Lcom/yandex/mobile/ads/impl/i61;->a:Landroid/content/Context;

    iget-object p2, p4, Lcom/yandex/mobile/ads/impl/i61;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 14
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/yandex/mobile/ads/impl/k61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/l61;)V

    .line 15
    iget-object p1, p4, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p4, Lcom/yandex/mobile/ads/impl/i61;->f:Lcom/yandex/mobile/ads/impl/vt;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/k61;->a(Lcom/yandex/mobile/ads/impl/vt;)V

    .line 17
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k61;->c()V

    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V
    .locals 7

    .line 4
    const-string v0, "$adRequestData"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nativeResponseType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sourceType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestPolicy"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/u61;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/u61;-><init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;I)V

    .line 7
    new-instance p0, Lcom/yandex/mobile/ads/impl/k61;

    .line 8
    iget-object p1, p4, Lcom/yandex/mobile/ads/impl/i61;->a:Landroid/content/Context;

    iget-object p2, p4, Lcom/yandex/mobile/ads/impl/i61;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/yandex/mobile/ads/impl/k61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/l61;)V

    .line 10
    iget-object p1, p4, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p4, Lcom/yandex/mobile/ads/impl/i61;->h:Lcom/yandex/mobile/ads/impl/ku;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/k61;->a(Lcom/yandex/mobile/ads/impl/ku;)V

    .line 12
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k61;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/i61;->b(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;ILcom/yandex/mobile/ads/impl/i61;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/i61;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;ILcom/yandex/mobile/ads/impl/i61;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/i61;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->e:Lcom/yandex/mobile/ads/impl/ht0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ht0;->a()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/k61;

    .line 4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k61;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hn2;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 41
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i61;->h:Lcom/yandex/mobile/ads/impl/ku;

    .line 42
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/k61;

    .line 43
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/k61;->a(Lcom/yandex/mobile/ads/impl/ku;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/k61;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 29
    const-string v0, "nativeAdLoadingItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 31
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/v61;)V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 6
    sget-object v2, Lcom/yandex/mobile/ads/impl/ca1;->c:Lcom/yandex/mobile/ads/impl/ca1;

    sget-object v3, Lcom/yandex/mobile/ads/impl/fa1;->c:Lcom/yandex/mobile/ads/impl/fa1;

    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeResponseType"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 8
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/i61;->e:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v7, Ldjd;

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ldjd;-><init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V

    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/v61;I)V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 18
    sget-object v2, Lcom/yandex/mobile/ads/impl/ca1;->d:Lcom/yandex/mobile/ads/impl/ca1;

    sget-object v3, Lcom/yandex/mobile/ads/impl/fa1;->c:Lcom/yandex/mobile/ads/impl/fa1;

    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeResponseType"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 20
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/i61;->e:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v8, Lejd;

    move-object v0, v8

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lejd;-><init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;ILcom/yandex/mobile/ads/impl/i61;)V

    invoke-virtual {v7, v8}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vt;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 33
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i61;->f:Lcom/yandex/mobile/ads/impl/vt;

    .line 34
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/k61;

    .line 35
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/k61;->a(Lcom/yandex/mobile/ads/impl/vt;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ym2;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 37
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i61;->g:Lcom/yandex/mobile/ads/impl/bu;

    .line 38
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i61;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/k61;

    .line 39
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/k61;->a(Lcom/yandex/mobile/ads/impl/bu;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/v61;)V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-object v2, Lcom/yandex/mobile/ads/impl/ca1;->e:Lcom/yandex/mobile/ads/impl/ca1;

    sget-object v3, Lcom/yandex/mobile/ads/impl/fa1;->c:Lcom/yandex/mobile/ads/impl/fa1;

    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeResponseType"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i61;->d:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 3
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/i61;->e:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v7, Lfjd;

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lfjd;-><init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V

    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
