.class public Lcom/transsion/hubsdk/common/api/TranAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAospSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final mThubSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final mVersionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TI;>;",
            "Ljava/util/function/Supplier<",
            "TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/api/TranAdapter;->mVersionMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/transsion/hubsdk/common/api/TranAdapter;->mAospSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/transsion/hubsdk/common/api/TranAdapter;->mThubSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static isIntegratedThubCore(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/os/TranBuild;->THUBCORE_VERSION:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranVersionComparator;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public getImpl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/common/api/TranAdapter;->mVersionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/transsion/hubsdk/common/api/TranAdapter;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/hubsdk/common/api/TranAdapter;->mThubSupplier:Ljava/util/function/Supplier;

    :goto_0
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/hubsdk/common/api/TranAdapter;->mAospSupplier:Ljava/util/function/Supplier;

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/transsion/hubsdk/common/api/TranAdapter;->mVersionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
