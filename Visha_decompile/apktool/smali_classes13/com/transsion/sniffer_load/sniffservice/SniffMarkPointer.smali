.class public Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;
    }
.end annotation


# static fields
.field public static final DL_BROWER_SNIFF:Ljava/lang/String; = "dl_brower_sniff"

.field private static final MARK_POINTER_THREAD_POOL_FIXED_SIZE:I = 0x3

.field public static final SNIFF_EVENT_NAME_DL_BROWER_RP_C_S:Ljava/lang/String; = "dl_brower_rp_c_s"

.field private static final TAG:Ljava/lang/String;

.field private static bInjectSuccess:Z

.field public static endTime:J

.field public static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->bInjectSuccess:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->startTime:J

    sput-wide v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->endTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->bInjectSuccess:Z

    return v0
.end method

.method public static markPointSnifSync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    .locals 13

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getMainUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "main_url"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    const-string v5, "video_url"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getJs_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "js_type"

    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getDomain_name()Ljava/lang/String;

    move-result-object v2

    const-string v7, "domain_name"

    invoke-virtual {v0, v7, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getErrorCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "error_code"

    invoke-virtual {v0, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v9, "code"

    invoke-virtual {v0, v9, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v10, "type"

    invoke-virtual {v0, v10, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getDuration()I

    move-result v2

    const-string v11, "duration"

    invoke-virtual {v0, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getMsg()Ljava/lang/String;

    move-result-object v2

    const-string v12, "msg"

    invoke-virtual {v0, v12, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getMainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getJs_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getDomain_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getErrorCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getDuration()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getEvent_name()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$1;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$1;-><init>(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static markPointSniffFromJson(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->bInjectSuccess:Z

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$2;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$2;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ThreadUtils;->g(ILcom/blankj/utilcode/util/ThreadUtils$Task;)V

    :cond_0
    return-void
.end method

.method public static markPointSniffInjectSuccessDelay(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->bInjectSuccess:Z

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;-><init>(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    const-wide/16 v1, 0x1e

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2, p0}, Lcom/blankj/utilcode/util/ThreadUtils;->h(ILcom/blankj/utilcode/util/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method
