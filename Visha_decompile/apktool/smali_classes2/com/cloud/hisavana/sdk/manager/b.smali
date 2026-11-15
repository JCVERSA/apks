.class public final Lcom/cloud/hisavana/sdk/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/manager/b$a;,
        Lcom/cloud/hisavana/sdk/manager/b$b;,
        Lcom/cloud/hisavana/sdk/manager/b$c;
    }
.end annotation


# static fields
.field public static final e:Lcom/cloud/hisavana/sdk/manager/b$a;

.field public static final f:Lcom/cloud/hisavana/sdk/manager/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:I

.field public final d:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/manager/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/b;->e:Lcom/cloud/hisavana/sdk/manager/b$a;

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/b;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/b;->f:Lcom/cloud/hisavana/sdk/manager/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RetryTrackingManager"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/manager/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/manager/b;->c:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/manager/b;->d:Ljava/security/SecureRandom;

    return-void
.end method

.method public static final synthetic a(Lcom/cloud/hisavana/sdk/manager/b;)J
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/b;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic b()Lcom/cloud/hisavana/sdk/manager/b;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/b;->f:Lcom/cloud/hisavana/sdk/manager/b;

    return-object v0
.end method

.method public static final synthetic d(Lcom/cloud/hisavana/sdk/manager/b;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/b;->c(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lcom/cloud/hisavana/sdk/manager/b;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/manager/b;->c:I

    return p0
.end method

.method public static final synthetic l(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)Ljava/lang/Object;
    .locals 3

    sget-object p0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/b$e;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/manager/b$e;-><init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->w(JLe74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/b;->c:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/b;->k(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/cloud/hisavana/sdk/Y0;->e:Lcom/cloud/hisavana/sdk/Y0$a;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/Y0$a;->a()Lcom/cloud/hisavana/sdk/Y0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/Y0;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()J
    .locals 6

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b;->d:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 p0, 0x7d0

    int-to-long v2, p0

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-gez p0, :cond_0

    add-long/2addr v0, v2

    :cond_0
    const/16 p0, 0x3e8

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 7

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f()Lnk1;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e()Lhk1;

    move-result-object v2

    new-instance v4, Lcom/cloud/hisavana/sdk/manager/b$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/cloud/hisavana/sdk/manager/b$d;-><init>(Lcom/cloud/hisavana/sdk/manager/b;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final j()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "startRetryTracking,is retrying"

    invoke-virtual {v0, p0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f()Lnk1;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e()Lhk1;

    move-result-object v2

    new-instance v4, Lcom/cloud/hisavana/sdk/manager/b$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/cloud/hisavana/sdk/manager/b$f;-><init>(Lcom/cloud/hisavana/sdk/manager/b;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final k(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/cloud/hisavana/sdk/Y0;->e:Lcom/cloud/hisavana/sdk/Y0$a;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/Y0$a;->a()Lcom/cloud/hisavana/sdk/Y0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/Y0;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
