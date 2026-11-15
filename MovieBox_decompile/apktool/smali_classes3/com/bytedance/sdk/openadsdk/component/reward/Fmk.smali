.class public Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$Sj;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$sP;
    }
.end annotation


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final EjP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$sP;",
            ">;"
        }
    .end annotation
.end field

.field private HiB:Lcom/bytedance/sdk/component/Dq/Dq;

.field private final TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sP:Landroid/content/Context;

.field private final vS:Lcom/bytedance/sdk/component/utils/wE$Sj;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->EjP:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$7;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->vS:Lcom/bytedance/sdk/component/utils/wE$Sj;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/component/Dq/Dq;)Lcom/bytedance/sdk/component/Dq/Dq;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->HiB:Lcom/bytedance/sdk/component/Dq/Dq;

    return-object p1
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;
    .locals 2

    .line 5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    if-nez v0, :cond_1

    .line 6
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 10
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 48
    invoke-interface {p3, p4}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->sP()I

    move-result p3

    const/4 p4, 0x2

    if-eqz p5, :cond_2

    if-ne p3, p4, :cond_1

    .line 50
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    .line 51
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void

    :cond_2
    if-ne p3, p4, :cond_3

    .line 52
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_3
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
    .locals 10

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ib;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ib;-><init>()V

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 28
    :goto_0
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->sP:I

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->aa(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isExpressAd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    :cond_2
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    .line 32
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object v8

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;

    move-object v1, v9

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    const/4 p2, 0x7

    invoke-interface {v8, p1, v0, p2, v9}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$sP;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->EjP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->EjP:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->EjP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V
    .locals 13

    move-object v8, p0

    move-object v5, p1

    move-object v0, p2

    move-object/from16 v4, p4

    move-object/from16 v9, p6

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)V

    invoke-virtual {v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;)V

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    .line 34
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object v2

    .line 36
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->EjP:I

    if-ne v2, v1, :cond_0

    .line 37
    iget-object v2, v8, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TzV;->EjP(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$sP;

    invoke-direct {v1, p2, v4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$sP;)V

    return-void

    :cond_0
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    if-nez p7, :cond_2

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v10

    .line 40
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 41
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 42
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v1

    invoke-interface {v1}, Lz5/b;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v11

    .line 43
    const-string v1, "material_meta"

    invoke-virtual {v11, v1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v0, "ad_slot"

    invoke-virtual {v11, v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lx5/a$a;)V

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    move v1, v10

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_5

    .line 46
    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 47
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-nez p5, :cond_1

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 18
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v1

    invoke-interface {v1}, Lz5/b;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v1

    .line 20
    const-string v2, "material_meta"

    invoke-virtual {v1, v2, p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    const-string p1, "ad_slot"

    invoke-virtual {v1, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;

    invoke-direct {p1, p0, p3, p5, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;ZLcom/bytedance/sdk/openadsdk/component/reward/Zq;)V

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lx5/a$a;)V

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->EjP:Ljava/util/List;

    return-object p0
.end method

.method private TKC()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->vS:Lcom/bytedance/sdk/component/utils/wE$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Lcom/bytedance/sdk/component/utils/wE$Sj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)Lcom/bytedance/sdk/component/Dq/Dq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->HiB:Lcom/bytedance/sdk/component/Dq/Dq;

    return-object p0
.end method

.method private sP()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->vS:Lcom/bytedance/sdk/component/utils/wE$Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Lcom/bytedance/sdk/component/utils/wE$Sj;Landroid/content/Context;)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/HiB;->sP()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
    .locals 12

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->HiB()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 7
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v5

    if-nez v5, :cond_0

    .line 8
    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-direct {v3, v4, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->sP()V

    :cond_2
    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result v2

    if-nez v2, :cond_3

    .line 15
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    move-result-object v8

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V

    .line 16
    :cond_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$Sj;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    const/4 v9, 0x1

    move-object v4, v10

    move-object v6, p1

    move-object v7, v0

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Z)V

    const/4 p2, 0x0

    invoke-direct {v2, v10, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$1;)V

    move p2, v1

    .line 17
    :goto_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v11

    move-object v6, p0

    move-object v8, p1

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Z)V

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->aa()Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 21
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)V

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 24
    :cond_6
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->HiB:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->Sj()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->HiB:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->HiB:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->TKC()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
