.class public abstract Lhb0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhb0$a;
    }
.end annotation


# static fields
.field public static final CLOUD:Ljava/lang/String; = "cloud"

.field public static final EVENT_NAME_VD_CP_PLAYLIST_VIDEO_SLIDE:Ljava/lang/String; = "vd_cp_playlist_video_slide"

.field public static final KEY_NAME_BTN:Ljava/lang/String; = "btn"

.field public static final KEY_NAME_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final KEY_NAME_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_NAME_ERROR_CODE:Ljava/lang/String; = "err_code"

.field public static final KEY_NAME_FILE_TYPE:Ljava/lang/String; = "file_type"

.field public static final KEY_NAME_FROM:Ljava/lang/String; = "from"

.field public static final KEY_NAME_MAINURL:Ljava/lang/String; = "main_url"

.field public static final KEY_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final KEY_NAME_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NAME_NUM:Ljava/lang/String; = "num"

.field public static final KEY_NAME_REGION_ID:Ljava/lang/String; = "region_id"

.field public static final KEY_NAME_SERIALSID:Ljava/lang/String; = "serialsID"

.field public static final KEY_NAME_SNIFF_RESULT_DLG_TYPE:Ljava/lang/String; = "dlg_type"

.field public static final KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION:Ljava/lang/String; = "definition"

.field public static final KEY_NAME_STATUE:Ljava/lang/String; = "status"

.field public static final KEY_NAME_SUB_ERROR_CODE:Ljava/lang/String; = "sub_err_code"

.field public static final KEY_NAME_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_NAME_VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final KEY_NAME_VERSION_NAME:Ljava/lang/String; = "version_name"

.field public static final KEY_NAME_VK_SOURCE_ID:Ljava/lang/String; = "source_id"

.field public static final LOCAL:Ljava/lang/String; = "local"

.field public static final OFF:Ljava/lang/String; = "off"

.field public static final ON:Ljava/lang/String; = "on"

.field public static final VALUE_SNIFF_RESULT_DLG_TYPE_NORMAL:I = 0x0

.field public static final VALUE_SNIFF_RESULT_DLG_TYPE_RESOLUTION:I = 0x1

.field public static duration:J

.field public static name:Ljava/lang/String;

.field public static num:I

.field public static sniffDlgType:I

.field public static sniffDownloadResolution:Ljava/lang/String;

.field public static status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    goto :goto_0

    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/transsion/athena/data/TrackData;

    goto :goto_0

    :cond_1
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/transsion/athena/data/TrackData;

    goto :goto_0

    :cond_2
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/transsion/athena/data/TrackData;

    goto :goto_0

    :cond_3
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/transsion/athena/data/TrackData;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :goto_0
    return-void
.end method

.method public static checkHorizontalFlag(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "imgx"

    return-object p0

    :cond_1
    const-string p0, "imgy"

    return-object p0
.end method

.method public static checkPayType(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "vipdiscount"

    return-object p0

    :cond_1
    const-string p0, "vip"

    return-object p0

    :cond_2
    const-string p0, "free"

    return-object p0
.end method

.method public static markDirect(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x246c

    .line 1
    invoke-static {v0, v0, p0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static markDirect(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V
    .locals 3

    .line 2
    const-string v0, "version_name"

    const-string v1, "version_code"

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lydc;->a()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lydc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lydc;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    .line 6
    invoke-static {}, Lydc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_1
    const-wide/16 v0, 0x246c

    .line 7
    invoke-static {p1, p2, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static varargs markKV(Ljava/lang/String;[Lhb0$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lhb0$a;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    iget-object v5, v4, Lhb0$a;->a:Ljava/lang/String;

    iget-object v4, v4, Lhb0$a;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v5, v4}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static markTrackFour(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "TR;",
            "Ljava/lang/String;",
            "TR;",
            "Ljava/lang/String;",
            "TR;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {v0, v1, p1, p2}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, p3, p4}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, p5, p6}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, p7, p8}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static markTrackMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {v0, v1, p1, p2}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static markTrackThree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "TR;",
            "Ljava/lang/String;",
            "TR;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {v0, v1, p1, p2}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, p3, p4}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, p5, p6}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "TR;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {v0, v1, p1, p2}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, p3, p4}, Lhb0;->a(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method
