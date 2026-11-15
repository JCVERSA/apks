.class public final enum Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

.field public static final enum NEW_AUDIO_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

.field public static final enum NEW_MV_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;


# instance fields
.field public final audioListClear:Ljava/lang/Runnable;

.field public final audioListExecutor:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public final channel:Ljava/lang/String;

.field public final channelSilent:Ljava/lang/String;

.field public final iconId:I

.field public final listFlags:I

.field public final notificationId:I

.field public final oneDescribeStrId:I

.field public final someDescribeStrId:I

.field public final titleStrId:I

.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;
    .locals 2

    sget-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->NEW_AUDIO_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    sget-object v1, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->NEW_MV_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    filled-new-array {v0, v1}, [Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 29

    new-instance v14, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    sget v6, Lcom/transsion/playercommon/R$string;->audio_file_new_find_medie_notification:I

    sget v22, Lcom/transsion/playercommon/R$string;->audio_new_find_size:I

    sget v8, Lcom/transsion/playercommon/R$string;->audio_file_new_find_detail:I

    sget v24, Lcom/transsion/playercommon/R$drawable;->ic_icon_visha_small:I

    new-instance v12, Lnv3;

    invoke-direct {v12}, Lnv3;-><init>()V

    new-instance v13, Lov3;

    invoke-direct {v13}, Lov3;-><init>()V

    const-string v1, "NEW_AUDIO_NOTIFICATION"

    const/4 v2, 0x0

    const/16 v3, 0x7530

    const/4 v4, 0x0

    const/16 v5, 0x14

    const-string v10, "notify_new_audio"

    const-string v11, "notify_new_audio_silent"

    move-object v0, v14

    move/from16 v7, v22

    move/from16 v9, v24

    invoke-direct/range {v0 .. v13}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;-><init>(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Runnable;)V

    sput-object v14, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->NEW_AUDIO_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    new-instance v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    iget v1, v14, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->notificationId:I

    add-int/lit8 v18, v1, 0x1

    iget v1, v14, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    add-int/lit8 v19, v1, 0x1

    sget v21, Lcom/transsion/playercommon/R$string;->visha_find_new_music_video_file_title:I

    sget v23, Lcom/transsion/playercommon/R$string;->visha_find_new_music_video_files:I

    new-instance v27, Lpv3;

    invoke-direct/range {v27 .. v27}, Lpv3;-><init>()V

    new-instance v28, Lqv3;

    invoke-direct/range {v28 .. v28}, Lqv3;-><init>()V

    const-string v16, "NEW_MV_NOTIFICATION"

    const/16 v17, 0x1

    const/16 v20, 0x13

    const-string v25, "notify_mv"

    const-string v26, "notify_mv_silent"

    move-object v15, v0

    invoke-direct/range {v15 .. v28}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;-><init>(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Runnable;)V

    sput-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->NEW_MV_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->$values()[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->$VALUES:[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->notificationId:I

    iput p4, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    iput p5, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->listFlags:I

    iput p6, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->titleStrId:I

    iput p7, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->oneDescribeStrId:I

    iput p8, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->someDescribeStrId:I

    iput p9, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->iconId:I

    iput-object p10, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->channel:Ljava/lang/String;

    iput-object p11, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->channelSilent:Ljava/lang/String;

    iput-object p12, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->audioListExecutor:Ljava/util/function/Supplier;

    iput-object p13, p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->audioListClear:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->lambda$static$1()V

    return-void
.end method

.method public static synthetic b()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->lambda$static$0()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static clearNewAudioList(I)V
    .locals 5

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->values()[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    if-ne v4, p0, :cond_0

    iget-object p0, v3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->audioListClear:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearNewAudioList error value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FindNewAudioNotification"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic d()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->lambda$static$2()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getListFlag(I)I
    .locals 5

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->values()[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    if-ne v4, p0, :cond_0

    iget p0, v3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->listFlags:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListFlag error value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FindNewAudioNotification"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x14

    return p0
.end method

.method public static getNewAudioList(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->values()[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->value:I

    if-ne v4, p0, :cond_0

    iget-object p0, v3, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->audioListExecutor:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNewAudioList error value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FindNewAudioNotification"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$static$0()Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k(Landroid/content/Context;Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->l(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$1()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k(Landroid/content/Context;Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->h()V

    return-void
.end method

.method private static synthetic lambda$static$2()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/transsion/audio/utils/MVNotificationUtils;->h(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;
    .locals 1

    const-class v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;
    .locals 1

    sget-object v0, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->$VALUES:[Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    invoke-virtual {v0}, [Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    return-object v0
.end method
