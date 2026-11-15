.class public final Lcz5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcz5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz5;

    invoke-direct {v0}, Lcz5;-><init>()V

    sput-object v0, Lcz5;->a:Lcz5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(JZ)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    :goto_0
    sget-object p2, Lhz9;->a:Lhz9;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float p0, p0

    float-to-double p0, p0

    div-double/2addr p0, v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.3f"

    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(JZ)F
    .locals 2

    if-eqz p2, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    :goto_0
    long-to-double p0, p0

    div-double/2addr p0, v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public static final c(Ljava/util/List;Z)J
    .locals 7

    const-string v0, "videoList"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    if-eqz p1, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v3, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    instance-of v0, p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaSize()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    add-long/2addr v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected VideoCloudDataLocal but got "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarkCloudTransmit"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v3, v1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_4
    move-wide v5, v1

    :goto_3
    add-long/2addr v3, v5

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public static final d(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "status"

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "cloud_transfer_setting_wifi_cl"

    invoke-static {v0, v1, p0}, Lcz5;->h(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public static final f(JIZ)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcz5;->a(JZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "total_size"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "file_num"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    if-eqz p3, :cond_0

    const-string p0, "cloud_upload_confirm_cl"

    goto :goto_0

    :cond_0
    const-string p0, "cloud_download_cl"

    :goto_0
    invoke-static {v0, v1, p0}, Lcz5;->h(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;)V

    return-void
.end method

.method public static final g(Ljava/lang/String;)V
    .locals 3

    const-string v0, "from"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "cloud_upload_entry_cl"

    invoke-static {v1, v2, p0}, Lcz5;->h(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;)V
    .locals 2

    const-string v0, "bundle"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x246c

    invoke-static {p1, p0, p2, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static final i(ZLjava/lang/String;I)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    const-string v4, "file_name"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "error_code"

    invoke-virtual {v0, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    invoke-virtual {v1, v4, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v3, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    if-eqz p0, :cond_2

    const-string p0, "cloud_upload_fail"

    goto :goto_1

    :cond_2
    const-string p0, "cloud_download_fail"

    :goto_1
    invoke-static {v0, v1, p0}, Lcz5;->h(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;)V

    return-void
.end method

.method public static final j(JLjava/lang/String;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcz5;->a(JZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "file_size"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {v0, v1, p2}, Lcz5;->h(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;)V

    return-void
.end method
