.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;
.super Lcom/bytedance/sdk/component/sP/Sj/EjP;
.source "source.java"


# static fields
.field public static volatile Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;


# instance fields
.field private EjP:Ljava/util/concurrent/ExecutorService;

.field private TKC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->sP:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->TKC:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->EjP:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    return-void
.end method


# virtual methods
.method public EjP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->TKC:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;->Sj()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public Sj()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public Sj(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public TKC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->sP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;->Sj()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->EjP:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    return-object v0
.end method
