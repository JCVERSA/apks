.class public Lcom/bytedance/sdk/openadsdk/core/dNu;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/dNu$Sj;
    }
.end annotation


# static fields
.field private static volatile Sj:Landroid/content/Context; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static TKC:I = -0x1

.field private static volatile sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/RiZ<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static HiB()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static Sj()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;

    return-object v0
.end method

.method public static Sj(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/core/RiZ<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/dNu;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/sU;

    .line 13
    .line 14
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/sU;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 29
    .line 30
    return-object v0
.end method

.method public static sP()I
    .locals 1

    .line 11
    sget v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC:I

    if-gez v0, :cond_0

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC:I

    .line 14
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC:I

    return v0
.end method

.method public static sP(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/dNu;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 4
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 8
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu$Sj;->Sj()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :catchall_1
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_3
    return-void
.end method
