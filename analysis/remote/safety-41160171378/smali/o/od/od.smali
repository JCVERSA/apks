.class public Lo/od;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    sput v2, Lo/od;->a:I

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lo/od;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-static {p1}, Lo/od;->o([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iesrs_k//_dipn"

    const-string v2, "/pre_init_sdk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v3, 0x7

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    return v1

    :cond_0
    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/preload_switch/"

    const/4 v4, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x5

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v4, 0x4

    return p0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 4

    const/4 v3, 0x7

    const-string v0, "/selfbuild/%s/ad_video_log_position"

    const/4 v1, 0x1

    move v3, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-object p0, v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x5

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x4

    const/16 v1, 0x7d0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x6

    int-to-long v0, p0

    return-wide v0
.end method

.method public static e()J
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x2

    const-string v1, "uctmrti/e_naalb/eoeosmn"

    const-string v1, "/bannerad/close_timeout"

    const/4 v3, 0x4

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    int-to-long v0, v0

    return-wide v0
.end method

.method public static f()J
    .locals 4

    const/4 v3, 0x2

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x4

    const-string v1, "/a/noim_diaeelcotvsetou"

    const-string v1, "/nativead/close_timeout"

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x7

    int-to-long v0, v0

    const/4 v3, 0x5

    return-wide v0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x4

    invoke-static {}, Lo/od;->l()I

    move-result v0

    const/4 v3, 0x6

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x7

    const-string v2, "__ilrbacrapusofevrtislneenmn__ospse_il"

    const-string v2, "ad_pos_full_screen_impression_interval"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    invoke-static {v2, p0}, Lo/od;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x258

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v3, 0x7

    const/16 v0, 0x12c

    const/4 v3, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v3, 0x5

    return p0
.end method

.method public static h()J
    .locals 4

    const/4 v3, 0x7

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "/selfbuild/adx_banner/impression_timeout"

    sget v2, Lo/od;->a:I

    const/4 v3, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    int-to-long v0, v0

    const/4 v3, 0x3

    return-wide v0
.end method

.method public static i()J
    .locals 4

    const/4 v3, 0x6

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x7

    const-string v1, "/selfbuild/adx_banner/impression_valid_time"

    sget v2, Lo/od;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x6

    int-to-long v0, v0

    return-wide v0
.end method

.method public static j()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "/selfbuild/adx_banner/mraid_regex"

    const-string v2, "[^a-zA-Z0-9]mraid\\.js[^a-zA-Z0-9]"

    const/4 v3, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    return-object v0
.end method

.method public static k()Ljava/util/Set;
    .locals 6

    const/4 v5, 0x6

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v5, 0x3

    const-string v1, "abwrs/brcdo_elosy/p"

    const-string v1, "/ad_policy/browsers"

    const-string v2, ""

    const/4 v5, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-instance v1, Ljava/util/HashSet;

    const/4 v5, 0x3

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    const/4 v5, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    if-eqz v2, :cond_0

    const/4 v5, 0x7

    array-length v0, v2

    const/4 v5, 0x2

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x6

    if-ge v3, v0, :cond_1

    const/4 v5, 0x4

    aget-object v4, v2, v3

    const/4 v5, 0x5

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    new-instance v1, Ljava/util/HashSet;

    const/4 v5, 0x7

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x7

    return-object v1
.end method

.method public static l()I
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x4

    const-string v1, "/global/full_screen_impression_interval"

    const/4 v3, 0x2

    const/16 v2, 0x258

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x3

    return v0
.end method

.method public static m(Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x7

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v3, "/"

    const-string v3, "/"

    const/4 v4, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    const-string p0, "ram_os/tiuminnadisn_tle_drvioi"

    const-string p0, "/min_valid_impression_duration"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x6

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v4, 0x2

    return p0
.end method

.method public static n(Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x5

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v4, 0x5

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    const-string v3, "/"

    const/4 v4, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    const-string p0, "/min_valid_impression_area_percentage"

    const/4 v4, 0x0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x4

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v4, 0x7

    return p0
.end method

.method public static varargs o([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v5, 0x3

    if-nez v0, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :cond_0
    const/4 v5, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    const-string v1, "/"

    const/4 v5, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    array-length v2, p0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    const/4 v5, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    const-string p0, ""

    return-object p0
.end method

.method public static p()Landroid/content/SharedPreferences;
    .locals 4

    const/4 v3, 0x7

    invoke-static {}, Lcom/snaptube/base/BaseApplication;->e()Landroid/app/Application;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "pref.fan"

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    return-object v0
.end method

.method public static q()I
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x3

    const-string v1, "/selfbuild/skip_debug_index"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    return v0
.end method

.method public static r(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x4

    const-string v0, "%eoi_tcap/onrot_udssaul"

    const-string v0, "/%s/auto_close_duration"

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object p0, v1, v2

    const/4 v3, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x5

    return p0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "%flsec/nltkasicce__eublr/"

    const-string v0, "/%s/full_screen_clickable"

    const/4 v1, 0x1

    const/4 v3, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput-object p0, v1, v2

    const/4 v3, 0x6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v3, 0x6

    return p0
.end method

.method public static t(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "/selfbuild/%s/ad_video_loop_play"

    const/4 v4, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x5

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v4, 0x0

    return p0
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "lessudmitfovu_avbd_sm//l%/_deuiole"

    const-string v0, "/selfbuild/%s/ad_video_volume_mute"

    const/4 v1, 0x3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v4, 0x3

    return p0
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x5

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x5

    const-string v1, "alemebd"

    const-string v1, "enabled"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v1, p0}, Lo/od;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v2, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x5

    const-string v1, "nmilorbl/lrb/_ufese_sdxe/eeri_aanrspudigxn"

    const-string v1, "/selfbuild/adx_banner/impression_url_regex"

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x7

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 v3, 0x3

    const/4 p0, 0x0

    const/4 v3, 0x6

    return p0
.end method
