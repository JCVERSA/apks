.class public final Lcom/transsion/push/tracker/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/tracker/Tracker$KEY;
    }
.end annotation


# static fields
.field public static c:Lcom/transsion/push/tracker/Tracker;

.field public static d:Ljava/util/HashMap;

.field public static e:Ljava/util/HashMap;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/Tracker;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lhf;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/tracker/Tracker;->a:Ljava/lang/String;

    invoke-static {}, Lhf;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/tracker/Tracker;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "fail"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/push/tracker/Tracker;->e:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/push/tracker/Tracker;->e:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "handled"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/transsion/push/tracker/Tracker;
    .locals 1

    sget-object v0, Lcom/transsion/push/tracker/Tracker;->c:Lcom/transsion/push/tracker/Tracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/push/tracker/Tracker;

    invoke-direct {v0}, Lcom/transsion/push/tracker/Tracker;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/Tracker;->c:Lcom/transsion/push/tracker/Tracker;

    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/Tracker;->c:Lcom/transsion/push/tracker/Tracker;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/push/tracker/Tracker;->c(Lcom/transsion/push/bean/PushMessage;)Z

    move-result p0

    const-string v0, "head_up"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p2, Lcom/transsion/push/bean/PushMessage;->materialId:Ljava/lang/String;

    const-string v0, "material_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "seq"

    iget-object v0, p2, Lcom/transsion/push/bean/PushMessage;->seq:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sourceType"

    iget-object v0, p2, Lcom/transsion/push/bean/PushMessage;->sourceType:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "scheduleDate"

    iget-object v0, p2, Lcom/transsion/push/bean/PushMessage;->scheduleDate:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "tag"

    iget-object p2, p2, Lcom/transsion/push/bean/PushMessage;->tag:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkg"

    iget-object v2, p0, Lcom/transsion/push/tracker/Tracker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    iget-object p0, p0, Lcom/transsion/push/tracker/Tracker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sdk"

    const-string v1, "2.0.5.02"

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appid"

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lcom/transsion/push/bean/PushMessage;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public init()V
    .locals 0

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/push/tracker/AthenaTracker;->b()V

    return-void
.end method

.method public trackActiveSyncInit()V
    .locals 0

    return-void
.end method

.method public trackActiveSyncProcess()V
    .locals 0

    return-void
.end method

.method public trackBroadcastGcmInfoeye()V
    .locals 0

    return-void
.end method

.method public trackBroadcastInfoeye()V
    .locals 0

    return-void
.end method

.method public trackClick(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/transsion/push/utils/PushUtils;->m(J)Lcom/transsion/push/bean/PushMessage;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/push/tracker/Tracker;->trackClick(JLcom/transsion/push/bean/PushMessage;)V

    .line 3
    invoke-static {p1, p2}, Lcom/transsion/push/utils/PushUtils;->b(J)V

    return-void
.end method

.method public trackClick(JLcom/transsion/push/bean/PushMessage;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 5
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 6
    invoke-virtual {p0, v0, p3}, Lcom/transsion/push/tracker/Tracker;->a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackClick, message is :  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PUSH_"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p0

    sget-object p1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CLICK:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackConfig(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cfgv"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cfgt"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CFG:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackConversion(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CONVERSION:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackHandleMsgErrorInfoeye(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trackImg(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "url"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_IMG_DOWNLOAD:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackInit()V
    .locals 3

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "init"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object v0

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trackInstall()V
    .locals 2

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "is_track_install"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/tracker/PushTracker;->getInstance()Lcom/transsion/push/tracker/PushTracker;

    move-result-object p0

    sget-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/tracker/PushTracker;->i(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public trackMessage(JILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "type"

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "do"

    int-to-long p2, p6

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "pts"

    invoke-virtual {p0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {p0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_MSG:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackReport()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkg"

    iget-object v2, p0, Lcom/transsion/push/tracker/Tracker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    iget-object p0, p0, Lcom/transsion/push/tracker/Tracker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sdk"

    const-string v1, "2.0.5.02"

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p0

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_REPORT:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/PushTracker;->getInstance()Lcom/transsion/push/tracker/PushTracker;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/tracker/PushTracker;->i(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public trackShow(JILjava/lang/String;ZI)V
    .locals 8

    .line 1
    invoke-static {p1, p2}, Lcom/transsion/push/utils/PushUtils;->m(J)Lcom/transsion/push/bean/PushMessage;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    return-void
.end method

.method public trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 3
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4
    const-string p1, "type"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    const-string p1, "able"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    const-string p1, "pts"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string p1, "status"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    const-string p1, "show_status"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p0, v0, p7}, Lcom/transsion/push/tracker/Tracker;->a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackShow, message is :  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PUSH_"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p0

    sget-object p1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_SHOW:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    .line 2
    const-string v0, "id"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3
    const-string p1, "type"

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4
    const-string p1, "pts"

    invoke-virtual {p0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p1, "rpkg"

    invoke-virtual {p0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p1, "result"

    invoke-virtual {p0, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TARGET:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    .line 8
    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/PushMessage;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 10
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 11
    const-string p1, "type"

    int-to-long p2, p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 12
    const-string p1, "pts"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string p1, "rpkg"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string p1, "result"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0, p7}, Lcom/transsion/push/tracker/Tracker;->a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "trackTarget, message is :  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PUSH_"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p0

    sget-object p1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TARGET:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    .line 18
    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackToken(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "token"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TOKEN:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTokenUpdateInit()V
    .locals 0

    return-void
.end method

.method public trackTokenUpdateProcess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trackTrace(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "osV"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "data"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRACE:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTrigger(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "reason"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRIG:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackUninstall(JLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "tpkg"

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_UNINSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public tracks()V
    .locals 0

    invoke-static {}, Lcom/transsion/push/tracker/PushTracker;->getInstance()Lcom/transsion/push/tracker/PushTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/push/tracker/PushTracker;->tracks()V

    return-void
.end method
