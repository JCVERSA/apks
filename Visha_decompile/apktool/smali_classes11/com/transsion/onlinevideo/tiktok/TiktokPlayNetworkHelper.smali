.class public final Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;,
        Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;

.field public static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->a:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->b:Z

    return-void
.end method

.method public static final b(Landroid/content/Context;)Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_NET:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    return-object p0

    :cond_0
    invoke-static {p0}, Le07;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_NET:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    return-object p0

    :cond_1
    invoke-static {p0}, Le07;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NO_WIFI:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;->NONE:Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;

    return-object p0
.end method

.method public static final c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final d()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->b:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    return-void
.end method

.method public static final e(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Le07;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->i(Landroid/content/Context;Z)V

    const-string p1, "allow_mobile_data_play"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/playercommon/R$string;->auto_play_stream_toast:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Le07;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Le07;->h(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Le07;->g(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->h(ZZZLjava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->f(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static final h(ZZZLjava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p0

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    :goto_1
    return p0

    :cond_4
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p3, p0

    :goto_2
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_6
    const/4 p0, 0x6

    :goto_3
    return p0
.end method

.method public static final i(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->b:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "allow_mobile_data_play"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    xor-int/2addr p0, v0

    iput-boolean p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    return-void

    :cond_2
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    if-nez p0, :cond_3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v2, "moble_remind"

    invoke-virtual {p0, v2, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v0

    :cond_3
    iput-boolean v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    return-void
.end method

.method public static final j(Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "block"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/16 p0, 0x3e9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/16 p0, 0x3ea

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method
