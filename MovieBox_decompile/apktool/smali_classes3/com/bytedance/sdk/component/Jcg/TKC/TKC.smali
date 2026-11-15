.class public Lcom/bytedance/sdk/component/Jcg/TKC/TKC;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Jcg/TKC/TKC$TKC;,
        Lcom/bytedance/sdk/component/Jcg/TKC/TKC$sP;,
        Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;

.field private sP:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$sP;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;->EjP:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;->Sj:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/Jcg/TKC/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Jcg/TKC/sP;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;->sP:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$sP;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Jcg/TKC/TKC$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;-><init>()V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;)V
    .locals 2

    .line 1
    const-class v0, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/Jcg/TKC/TKC$TKC;->Sj()Lcom/bytedance/sdk/component/Jcg/TKC/TKC;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object p0, v1, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;->Sj:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method
