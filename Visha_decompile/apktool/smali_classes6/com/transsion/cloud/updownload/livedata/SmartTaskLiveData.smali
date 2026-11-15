.class public final Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$a;,
        Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;,
        Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;,
        Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MediatorLiveData<",
        "Ljava/util/List<",
        "+",
        "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 52\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0003\u00186\u001aB\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u000e\u001a\u00020\r2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ \u0010\u0011\u001a\u00020\u00102\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0082@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J \u0010\u0014\u001a\u00020\u00132\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0082@\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u001e\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0082@\u00a2\u0006\u0004\u0008\u0017\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010&R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00067"
    }
    d2 = {
        "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
        "Lcom/transsion/cloudcore/db/CloudTaskDao;",
        "dao",
        "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;",
        "taskType",
        "<init>",
        "(Lcom/transsion/cloudcore/db/CloudTaskDao;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;)V",
        "newList",
        "",
        "newCount",
        "Lzfb;",
        "q",
        "(Ljava/util/List;I)V",
        "",
        "p",
        "(Ljava/util/List;Lwh1;)Ljava/lang/Object;",
        "",
        "r",
        "taskList",
        "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;",
        "o",
        "a",
        "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;",
        "b",
        "Ljava/util/List;",
        "lastValue",
        "c",
        "I",
        "lastCount",
        "",
        "d",
        "J",
        "lastUpdateTime",
        "",
        "e",
        "Ljava/lang/String;",
        "lastTaskIds",
        "f",
        "lastFileExistStatus",
        "g",
        "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;",
        "lastSignature",
        "Lnk1;",
        "h",
        "Lnk1;",
        "coroutineScope",
        "Lkotlinx/coroutines/j;",
        "i",
        "Lkotlinx/coroutines/j;",
        "currentJob",
        "j",
        "TaskType",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final j:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$a;


# instance fields
.field public final a:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

.field public b:Ljava/util/List;

.field public c:I

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

.field public final h:Lnk1;

.field public i:Lkotlinx/coroutines/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->j:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$a;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTaskDao;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;)V
    .locals 3

    const-string v0, "dao"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->a:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f:Ljava/lang/String;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->h:Lnk1;

    sget-object v0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v2, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getAllUploadedTaskLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p1}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getAllDownloadedTaskLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    :goto_0
    new-instance p2, Ldq9;

    invoke-direct {p2, p0}, Ldq9;-><init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)V

    new-instance v0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$d;

    invoke-direct {v0, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$d;-><init>(Le74;)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->b(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;)Lzfb;
    .locals 10

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->a:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " task list received, count: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "visha_cloud_SmartTaskLiveData"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->i:Lkotlinx/coroutines/j;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/j;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->a:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Cancelling previous job"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v3}, Lkotlinx/coroutines/j$a;->b(Lkotlinx/coroutines/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c:I

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->h:Lnk1;

    new-instance v7, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;

    invoke-direct {v7, p0, p1, v3}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;-><init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->i:Lkotlinx/coroutines/j;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->a:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Task count changed from "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updating immediately"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->q(Ljava/util/List;I)V

    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->o(Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c:I

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->g:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->a:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c:I

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->g:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->d:J

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic m(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->p(Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->r(Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final o(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q(Ljava/util/List;I)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->b:Ljava/util/List;

    iput p2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c:I

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->g:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->d:J

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->a:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  Task list updated immediately with count: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_SmartTaskLiveData"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;-><init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
