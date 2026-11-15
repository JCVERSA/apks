.class public Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final MMKV_KEY_PAGE:Ljava/lang/String; = "vk_page"

.field private static final MMKV_REFRESH_PAGE:Ljava/lang/String; = "vk_page_refresh"

.field private static final REFRESH_INTERVAL_MS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "VkPageManager"


# instance fields
.field private lastRefreshTime:J

.field private final pageValue:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "vk_page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->pageValue:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "vk_page_refresh"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->lastRefreshTime:J

    .line 5
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->checkAndRefreshIfNeeded()V

    return-void
.end method

.method public synthetic constructor <init>(Lwfc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager$InstanceHolder;->a()Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkAndRefreshIfNeeded()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->lastRefreshTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->refreshPage()V

    :cond_0
    return-void
.end method

.method public getPageValue()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->pageValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public incrementAndGet()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incrementAndGet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->getPageValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VkPageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->checkAndRefreshIfNeeded()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->pageValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "vk_page"

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->getPageValue()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    return v0
.end method

.method public refreshPage()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->pageValue:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "vk_page"

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->getPageValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "vk_page_refresh"

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->lastRefreshTime:J

    return-void
.end method
