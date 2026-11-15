.class public Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final Sj:Lx5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg6/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lg6/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj:Lx5/a;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-static/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    return-void
.end method

.method public static Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lx5/a$a;)V
    .locals 12

    .line 5
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TEQ()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x1770

    .line 6
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP(I)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB(I)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS(I)V

    .line 9
    const-string v0, "material_meta"

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 10
    :goto_0
    const-string v4, "ad_slot"

    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 13
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    move-object v8, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move-object v8, v0

    .line 14
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 15
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;

    move-object v1, v11

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move-wide v5, v9

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;-><init>(Lx5/a$a;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 16
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x194

    invoke-interface {p1, p0, v2, v1}, Lx5/a$a;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V

    .line 18
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v4, v1, v9

    const/4 v6, -0x1

    .line 19
    const-string v7, "video url is invalid"

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    return-void

    .line 20
    :cond_6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$2;

    const-string v0, "VideoPreload"

    invoke-direct {p1, v0, p0, v11}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$2;-><init>(Ljava/lang/String;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lx5/a$a;)V

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void

    .line 23
    :cond_7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    const/16 v0, 0x64

    .line 24
    invoke-interface {p1, p0, v0}, Lx5/a$a;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    :cond_9
    return-void
.end method

.method public static Sj()Z
    .locals 2

    .line 31
    const-string v0, "video_lower_support_discard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private static Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static Sj(Ljava/lang/String;)Z
    .locals 8

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    const-string v5, "ws:"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    const-string v5, "wss:"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-static {p1, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/uA;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long v3, p0

    .line 33
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/uA;-><init>(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    .line 37
    .line 38
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TEQ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uA()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    move-result v0

    int-to-long v0, v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 4
    invoke-static {p1, v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Ym;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Ym;-><init>(Ljava/lang/String;J)V

    .line 6
    new-instance p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 7
    const-string p1, "load_video_start"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    return-void
.end method

.method private static sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 4

    .line 20
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 22
    invoke-static {p1, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/aa;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/aa;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/aa;->Sj(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/aa;->Sj(J)V

    .line 26
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/aa;->sP(J)V

    .line 27
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->RiZ()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    const-wide/16 p3, 0x1

    .line 28
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/aa;->TKC(J)V

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    .line 29
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/aa;->TKC(J)V

    .line 30
    :goto_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 31
    const-string p1, "load_video_success"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    return-void
.end method

.method private static sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V
    .locals 4

    .line 8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 10
    invoke-static {p1, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;->Sj(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;->Sj(J)V

    .line 14
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;->sP(J)V

    .line 15
    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;->Sj(I)V

    .line 16
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p3, ""

    if-eqz p0, :cond_1

    move-object p6, p3

    :cond_1
    invoke-virtual {v1, p6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;->sP(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;->TKC(Ljava/lang/String;)V

    .line 18
    new-instance p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 19
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    return-void
.end method
