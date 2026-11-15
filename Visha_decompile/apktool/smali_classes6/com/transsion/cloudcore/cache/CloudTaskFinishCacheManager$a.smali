.class public final Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;
.super Lchc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lchc;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;->d(Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;Z)V

    return-void
.end method

.method public d(Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;Z)V
    .locals 0

    const-string p0, "owner"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "InnerContentObserver execute"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->f()V

    return-void
.end method
