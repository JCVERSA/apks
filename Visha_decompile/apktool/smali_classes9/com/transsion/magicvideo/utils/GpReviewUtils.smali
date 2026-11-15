.class public abstract Lcom/transsion/magicvideo/utils/GpReviewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/utils/GpReviewUtils;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static b()Z
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_gp_rating_quick"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_gp_rating"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_gp_rating_download"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic c(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "\u4e0b\u8f7d\u5f39\u7a97"

    invoke-static {v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->O(Ljava/lang/String;)Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    move-result-object v0

    const-string v1, "downloadTag"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 10

    invoke-static {}, Lcom/transsion/magicvideo/utils/GpReviewUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "gp_download_count_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "gp_download_count"

    invoke-virtual {v2, v5, v4}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v6, "gp_download_count_Limit"

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v7}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v5, v2}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    :cond_1
    if-lt v2, v4, :cond_2

    new-instance v0, Lhj4;

    invoke-direct {v0, p0}, Lhj4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 10

    invoke-static {}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b()Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/magicvideo/utils/GpReviewUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_gp_rating_interval_1"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_gp_rating_interval_3"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "mmkv_gp_rating_cancel_count"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xb

    const-wide/32 v4, 0xf731400

    if-ge v2, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x48190800

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_gp_rating_queue"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startReviewLogic6 json"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "visha_GpReviewUtils"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/transsion/magicvideo/utils/GpReviewUtils$1;

    invoke-direct {v2}, Lcom/transsion/magicvideo/utils/GpReviewUtils$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\u64ad\u653e\u7ed3\u675f\u540e"

    invoke-static {v2}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->K(Ljava/lang/String;)Lcom/transsion/playercommon/gprating/GPRatingDialog;

    move-result-object v2

    const-string v3, "gpRatingCustom"

    invoke-virtual {v2, p0, v3}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {v2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public static g(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b()Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->c(I)Z

    return-void
.end method
