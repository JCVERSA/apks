.class public Lcom/transsion/athena/enatha/enatha;
.super Lj5d;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static volatile v:Lcom/transsion/athena/enatha/enatha;


# instance fields
.field public d:Z

.field public e:Z

.field public f:I

.field public g:Z

.field public h:I

.field public i:Ljava/util/ArrayList;

.field public j:J

.field public final k:Landroid/util/SparseArray;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:J

.field public o:Z

.field public p:J

.field public final q:Ly3d;

.field public final r:Ljava/lang/Runnable;

.field public s:J

.field public final t:Ljava/lang/Runnable;

.field public final u:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lj5d;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->d:Z

    iput-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    new-instance p1, Lcom/transsion/athena/enatha/enatha$d;

    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$d;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->q:Ly3d;

    new-instance p1, Lcom/transsion/athena/enatha/enatha$anehat;

    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$anehat;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->r:Ljava/lang/Runnable;

    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->s:J

    new-instance p1, Lcom/transsion/athena/enatha/enatha$ehatna;

    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$ehatna;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    new-instance p1, Lcom/transsion/athena/enatha/enatha$g;

    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$g;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->u:Landroid/location/LocationListener;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Athena-Worker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    const/16 p0, 0x12f

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static A(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/ga/anateh;

    const-string v2, "cleanupEvents_off"

    invoke-direct {v1, v2, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lzbd;->a()Lzbd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzbd;->c(Lcom/transsion/ga/anateh;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "handleTidChange cleanupList : %s"

    invoke-static {v0, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic E(Ljava/util/List;Landroid/util/LongSparseArray;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveMemCacheToDb tidCountArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->f(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Le5d;->m(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v3

    invoke-virtual {p1, p0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/athena/config/data/model/aatnhe;->a(I)V

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/a;->a(J)I

    move-result v0

    const/16 v1, 0x270f

    if-ne v1, v0, :cond_0

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0}, Le5d;->w()V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method public static synthetic I(Lcom/transsion/athena/enatha/enatha;)Landroid/location/LocationListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha;->u:Landroid/location/LocationListener;

    return-object p0
.end method

.method public static K(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/ga/anateh;

    const-string v1, "cleanupEvents_oom"

    invoke-direct {p0, v1, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lzbd;->a()Lzbd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzbd;->c(Lcom/transsion/ga/anateh;)V

    return-void
.end method

.method public static synthetic L(Lcom/transsion/athena/enatha/enatha;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method private N()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/athena/taaneh/athena;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.transsion.dataservice.provider/authorize"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "pkg = ?"

    :try_start_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/athena/enatha/enatha;->o:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "Pkg [%s] DCS authorize [%s]"

    if-eqz v3, :cond_1

    const-string v2, "enable"

    goto :goto_1

    :cond_1
    const-string v2, "disable"

    :goto_1
    :try_start_2
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    const-string p0, "Cursor is null, Pkg [%s] may not on the DCS white list"

    :try_start_3
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_4

    :goto_3
    const-string v1, "Dcs applyForAccess exception : %s"

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_5
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public static synthetic h(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/enatha/enatha;->A(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/enatha/enatha;->K(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Landroid/util/SparseArray;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/enatha/enatha;->r(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/List;Landroid/util/LongSparseArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/athena/enatha/enatha;->E(Ljava/util/List;Landroid/util/LongSparseArray;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)Lcom/transsion/athena/enatha/enatha;
    .locals 2

    sget-object v0, Lcom/transsion/athena/enatha/enatha;->v:Lcom/transsion/athena/enatha/enatha;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/athena/enatha/enatha;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/enatha/enatha;->v:Lcom/transsion/athena/enatha/enatha;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/athena/enatha/enatha;

    invoke-direct {v1, p0}, Lcom/transsion/athena/enatha/enatha;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/athena/enatha/enatha;->v:Lcom/transsion/athena/enatha/enatha;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/athena/enatha/enatha;->v:Lcom/transsion/athena/enatha/enatha;

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->l:Ljava/lang/String;

    return-object p1
.end method

.method private o(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le5d;->f(I)V

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object p2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p2

    iget-object p0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/AppIdData;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p0

    new-instance v0, Lcom/transsion/athena/data/AppIdData;

    invoke-direct {v0}, Lcom/transsion/athena/data/AppIdData;-><init>()V

    iput p1, v0, Lcom/transsion/athena/data/AppIdData;->a:I

    iput-object p2, v0, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/AppIdData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic r(Landroid/util/SparseArray;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p0

    invoke-virtual {p0, v0}, Le5d;->j(Ljava/util/List;)V

    return-void
.end method

.method public static v(Lcom/transsion/athena/enatha/enatha;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0}, Le5d;->s()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->P()V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/athena/enatha/enatha;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/enatha/enatha;->p(IZ)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/athena/enatha/enatha;Landroid/location/Location;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->q(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/athena/enatha/enatha;Lcom/tencent/mmkv/MMKV;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->s(Lcom/tencent/mmkv/MMKV;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/athena/enatha/enatha;->B(Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app_id"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "url"

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/athena/config/data/model/athena;->k()J

    move-result-wide p2

    const-string p0, "ver"

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "gslb_data"

    invoke-virtual {p1, p0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lwj;

    const-string p2, "app_cfg_log"

    const/16 p3, 0x270f

    invoke-direct {p0, p2, p3}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    new-instance p0, Lcom/transsion/ga/anateh;

    invoke-direct {p0, p1, p2}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lzbd;->a()Lzbd;

    move-result-object p1

    invoke-virtual {p1, p0}, Lzbd;->c(Lcom/transsion/ga/anateh;)V

    return-void
.end method

.method public final D(Ljava/util/List;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/data/Track;

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/athena/data/TrackData;->b()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Le5d;->b(JF)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, La4d;->f()La4d;

    move-result-object v3

    invoke-virtual {v3, v2}, La4d;->c(Lcom/transsion/athena/data/Track;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v1

    new-instance v2, Lxbd;

    invoke-direct {v2, p1}, Lxbd;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/ArrayList;Lcom/transsion/athena/data/anateh/enatha;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveMemCacheToDb Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->f(Ljava/lang/String;)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p1

    new-instance v0, Lcom/transsion/athena/enatha/enatha$f;

    invoke-direct {v0, p0}, Lcom/transsion/athena/enatha/enatha$f;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(ILcom/transsion/athena/data/anateh/enatha;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveToDB out of memory cleanCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc4d;->d(Ljava/lang/String;)V

    :cond_2
    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/athena/enatha/enatha;->H(ZJ)V

    :cond_3
    return-void
.end method

.method public final G(Z)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    const/16 v4, 0x1f6

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-wide v5, p0, Lcom/transsion/athena/enatha/enatha;->s:J

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-gez p1, :cond_3

    :cond_1
    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p1

    const/16 v5, 0x270f

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "location"

    invoke-virtual {p1, v5, v7, v6}, Le5d;->a(ILjava/lang/String;F)I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v5}, Lcom/transsion/athena/taaneh/a;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v5}, Lcom/transsion/athena/taaneh/a;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_4
    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    const/4 v5, 0x0

    if-nez p1, :cond_5

    invoke-virtual {p0, v5}, Lcom/transsion/athena/enatha/enatha;->q(Landroid/location/Location;)V

    return-void

    :cond_5
    const-string v6, "network"

    invoke-virtual {p1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    :cond_6
    const-string v6, "passive"

    invoke-virtual {p1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    :cond_7
    const-string v6, "gps"

    invoke-virtual {p1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_0

    :cond_8
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_9

    iget-object v7, p0, Lj5d;->c:Landroid/os/Handler;

    iget-object v8, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lj5d;->c:Landroid/os/Handler;

    iget-object v8, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    const-wide/16 v9, 0x7530

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v7, p0, Lcom/transsion/athena/enatha/enatha;->u:Landroid/location/LocationListener;

    invoke-virtual {p1, v6, v7, v5}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->s:J

    :cond_9
    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    return-void
.end method

.method public final H(ZJ)V
    .locals 2

    iget-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    const/16 v1, 0x12a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final J(Lcom/transsion/athena/data/Track;)V
    .locals 9

    const-string v0, "eparam"

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Athena SDK isAthenaEnable = false"

    invoke-static {p0}, Lc4d;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->M(Lcom/transsion/athena/data/Track;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/a;->a(J)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    const-string v3, "tid"

    const-string v4, "event"

    const-string v5, ""

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v5

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    new-instance v2, Lcom/transsion/athena/data/Track;

    invoke-direct {v2}, Lcom/transsion/athena/data/Track;-><init>()V

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/transsion/athena/data/Track;->setEventName(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/transsion/athena/data/Track;->setTid(J)V

    const-string v7, "ts"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/transsion/athena/data/Track;->setTrackErTs(J)V

    invoke-virtual {v2, v0}, Lcom/transsion/athena/data/Track;->setOriginJsonData(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first_page_enter_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Le4d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/transsion/athena/enatha/enatha;->J(Lcom/transsion/athena/data/Track;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "type"

    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getOriginJsonData()Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "_apkg"

    :try_start_3
    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/taaneh/athena;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/athena/enatha/enatha;->F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v1, "_avn"

    :try_start_4
    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/taaneh/athena;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/athena/enatha/enatha;->F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v1, "_avc"

    :try_start_5
    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/taaneh/athena;->y(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/athena/enatha/enatha;->F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v1, "_atutp"

    :try_start_6
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->c()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/athena/enatha/enatha;->F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    const-string v1, "_atuid"

    :try_start_7
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_2
    invoke-direct {p0, p1, v1, v5}, Lcom/transsion/athena/enatha/enatha;->F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    const-string v1, "_achannel"

    :try_start_8
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/athena/enatha/enatha;->F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    const-string v1, "_ainstallchnl"

    :try_start_9
    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/taaneh/athena;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v2, :cond_6

    const-string v2, " "

    goto :goto_3

    :cond_6
    :try_start_a
    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/taaneh/athena;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/athena/enatha/enatha;->F(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_eparam"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Track by DCS exception : "

    invoke-static {v1, p1}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackObject"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.transsion.dataservice.provider/track"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "track by DCS:%s"

    invoke-static {p1, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final M(Lcom/transsion/athena/data/Track;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_launch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p0}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_launch_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/a;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le4d;->e(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v4

    div-long/2addr v4, v2

    int-to-long v6, v1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1c20

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Le4d;->b(Ljava/lang/String;I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final O()Z
    .locals 2

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p0

    invoke-virtual {p0}, Le5d;->e()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/config/data/model/athena;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lo3d;->f(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "%s"

    if-nez v0, :cond_0

    const-string p0, "CheckConfig cancel, network is not available"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "CheckConfig cancel, GslbSdk is not inited"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    iget-object v1, p0, Lj5d;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha;->q:Ly3d;

    invoke-virtual {v0, v1, p0}, Le5d;->g(Landroid/os/Handler;Ly3d;)V

    return-void
.end method

.method public final Q()V
    .locals 11

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lo3d;->f(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "%s"

    if-nez v0, :cond_0

    const-string p0, "checkUpload network unavailable"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, La4d;->f()La4d;

    move-result-object v0

    invoke-virtual {v0}, La4d;->j()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, La4d;->f()La4d;

    move-result-object v0

    invoke-virtual {v0}, La4d;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "checkUpload sync baseTime"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La4d;->f()La4d;

    move-result-object v0

    invoke-virtual {v0, v2}, La4d;->d(Z)V

    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/athena/hatnea/atnhae;

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-direct {v1, p0}, Lcom/transsion/athena/hatnea/atnhae;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/transsion/athena/hatnea/c;->e(Lcom/transsion/athena/hatnea/anateh;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "checkUpload sdk disable or gaid invalid"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object v0

    const-string v1, "gdpr_close"

    invoke-virtual {v0, v1}, Le4d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v1

    new-instance v2, Lcom/transsion/athena/hatnea/aethna;

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-direct {v2, p0, v0}, Lcom/transsion/athena/hatnea/aethna;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/athena/hatnea/c;->e(Lcom/transsion/athena/hatnea/anateh;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "checkUpload GSLB is not ready"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0}, Le5d;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "checkUpload global config is not ready"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/aethna;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v3

    invoke-virtual {v3}, Le5d;->e()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string p0, "checkUpload appid config list is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/config/data/model/athena;

    iget-object v4, p0, Lj5d;->b:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v3

    invoke-static {v4, v3}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object v3

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/AppIdData;)V

    goto :goto_0

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v5

    iget v6, v4, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v5, v6}, Le5d;->n(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/athena;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_b
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/athena;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/athena/config/data/model/ehanat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, v4, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v2

    new-instance v3, Lcom/transsion/athena/hatnea/hatnea;

    iget-object v6, p0, Lj5d;->c:Landroid/os/Handler;

    iget-boolean v9, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    iget-object v10, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    move-object v5, v3

    move-object v8, v0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/athena/hatnea/hatnea;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/util/List;ZLandroid/util/SparseArray;)V

    invoke-virtual {v2, v3}, Lcom/transsion/athena/hatnea/c;->e(Lcom/transsion/athena/hatnea/anateh;)V

    goto :goto_3

    :cond_d
    return-void
.end method

.method public final R()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->n:J

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lo3d;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    invoke-static {}, La4d;->f()La4d;

    move-result-object v0

    invoke-virtual {v0}, La4d;->h()V

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0}, Le5d;->t()V

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    new-instance v1, Lvbd;

    invoke-direct {v1}, Lvbd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/anateh/enatha;)V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->H()Lcom/transsion/ga/AthenaAnalytics$a;

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v2

    const-string v3, "page_view"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v3, v4}, Le5d;->a(ILjava/lang/String;F)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->e(Z)V

    :cond_1
    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/taaneh/a;->l(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "%s"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Dcs available"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->N()V

    goto :goto_1

    :cond_2
    const-string v0, "Dcs unavailable because of not support or conf disable"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    sget-object v3, Li5d;->a:[Ljava/lang/String;

    new-instance v4, Lcom/transsion/athena/enatha/enatha$b;

    invoke-direct {v4, p0}, Lcom/transsion/athena/enatha/enatha$b;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    invoke-static {v0, v3, v4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    iget-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    new-instance v3, Lcom/transsion/athena/enatha/anehat;

    invoke-direct {v3, v0}, Lcom/transsion/athena/enatha/anehat;-><init>(Landroid/os/Handler;)V

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/athena/enatha/enatha;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :try_start_0
    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object v0

    invoke-static {}, Lcom/transsion/athena/data/athena;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first_page_enter_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Le4d;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v5}, Le4d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_5
    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/transsion/athena/config/data/model/ehanat;->k:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->l:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iput-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dataFile deleted"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/athena/taaneh/athena;->i(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "handleInit"

    invoke-virtual {p0, v2, v0}, Lcom/transsion/athena/enatha/enatha;->C(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    iget-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    const/16 v2, 0x1f6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lj5d;->c:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->g:Z

    if-nez v0, :cond_b

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0}, Le5d;->s()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    :cond_b
    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x134

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Message;J)V
    .locals 3

    iget-object v0, p0, Lj5d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 1

    new-instance v0, Lcom/transsion/athena/data/Track;

    invoke-direct {v0}, Lcom/transsion/athena/data/Track;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/athena/data/Track;->setEventName(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Lcom/transsion/athena/data/Track;->setTid(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/transsion/athena/data/Track;->setTrackErTs(J)V

    invoke-virtual {v0, p2}, Lcom/transsion/athena/data/Track;->setTrackData(Lcom/transsion/athena/data/TrackData;)V

    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    const/16 p2, 0x1388

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    const/16 p2, 0x12e

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    iget v0, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/athena/enatha/enatha;->H(ZJ)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    const-string v0, "first_init"

    const-string v1, "_eparam"

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/athena/enatha/enatha;->d:Z

    const/4 v3, 0x0

    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x12a

    const/16 v6, 0x12b

    if-eq v4, v5, :cond_10

    if-eq v4, v6, :cond_f

    const/16 v5, 0x12e

    const-wide/16 v7, 0x0

    if-eq v4, v5, :cond_7

    const/16 v1, 0x12f

    if-eq v4, v1, :cond_6

    const/16 v1, 0x134

    if-eq v4, v1, :cond_5

    const/16 v1, 0x190

    if-eq v4, v1, :cond_4

    const/16 v1, 0x258

    if-eq v4, v1, :cond_10

    const/16 v0, 0x1f6

    if-eq v4, v0, :cond_2

    const/16 v0, 0x1f7

    if-eq v4, v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {}, La4d;->f()La4d;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, La4d;->e(J)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, La4d;->f()La4d;

    move-result-object p1

    invoke-virtual {p1}, La4d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, La4d;->f()La4d;

    move-result-object v0

    invoke-virtual {v0}, La4d;->g()J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-lez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    :goto_0
    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    int-to-long v0, p1

    invoke-virtual {p0, v3, v0, v1}, Lcom/transsion/athena/enatha/enatha;->H(ZJ)V

    goto/16 :goto_9

    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/transsion/athena/enatha/enatha;->G(Z)V

    goto/16 :goto_9

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/athena/enatha/enatha;->o(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :cond_5
    :try_start_1
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p1

    invoke-virtual {p1}, Le5d;->v()V

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/aethna;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    :try_start_2
    const-string v0, "handleCleanupData"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/enatha/enatha;->C(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_6
    sget-object p1, Lc4d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object p1

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->q()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "Athena init, SDK Version is [%s]"

    :try_start_3
    const-string v0, "3.1.1.2"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->R()V

    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->P()V

    goto/16 :goto_9

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/data/Track;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "page_enter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->s()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->s()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/app/Activity;)I

    move-result v4

    const-string v5, "fromsite"

    invoke-virtual {v0, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_5
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc4d;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_8
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object v4

    sget-object v5, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-le v6, v2, :cond_9

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    move v9, v3

    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    check-cast v11, Lorg/json/JSONObject;

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v9, v2

    goto :goto_4

    :cond_b
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "net"

    :try_start_7
    iget-object v5, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v5}, Lo3d;->d(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "event"

    :try_start_8
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lcom/transsion/athena/data/Track;->setJsonData(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v6}, Lcom/transsion/athena/data/Track;->setOriginJsonData(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/transsion/athena/data/TrackData;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/athena/data/Track;->setTrackFlag(I)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_6

    :goto_5
    const-string v1, "Record track exception : %s"

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/athena/enatha/enatha;->n:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v9, 0x36ee80

    cmp-long v4, v4, v9

    if-lez v4, :cond_c

    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->n:J

    iget-object v0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v0}, Lo3d;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    :cond_c
    iget v0, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    iget-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->o:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->R:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->R()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/a;->a(J)I

    move-result v0

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v1

    invoke-virtual {v1, v0}, Le5d;->n(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->J(Lcom/transsion/athena/data/Track;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    :cond_d
    const-string v0, "ev_athena"

    :try_start_a
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->P()V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->t(Lcom/transsion/athena/data/Track;)V

    :goto_7
    iget-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->o:Z

    if-nez p1, :cond_14

    sget-boolean p1, Lcom/transsion/athena/config/data/model/ehanat;->R:Z

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->O()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    const/16 p1, 0x14

    int-to-long v4, p1

    rem-long v9, v0, v4

    cmp-long p1, v9, v7

    if-nez p1, :cond_14

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3

    cmp-long p1, v0, v4

    if-gtz p1, :cond_14

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/taaneh/a;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->N()V

    goto :goto_9

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->Q()V

    goto :goto_9

    :cond_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_11

    invoke-virtual {p0}, Lcom/transsion/athena/enatha/enatha;->P()V

    :cond_11
    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    sget-object v1, Lcom/transsion/athena/taaneh/a;->a:Ljava/lang/String;

    invoke-static {p1}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object p1

    invoke-virtual {p1, v0}, Le4d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-boolean p1, Lcom/transsion/athena/config/data/model/ehanat;->K:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-eqz p1, :cond_12

    const-string p1, "First init delay %d s upload!"

    :try_start_b
    sget v1, Lcom/transsion/ga/AthenaAnalytics;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    sget v1, Lcom/transsion/ga/AthenaAnalytics;->p:I

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-virtual {p1, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p1}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object p1

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Le4d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    iget-object p1, p0, Lj5d;->c:Landroid/os/Handler;

    invoke-static {p1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_9

    :goto_8
    invoke-static {}, Lcom/transsion/athena/taaneh/a;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Worker handle message exception : %s"

    invoke-static {v1, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    const-string v0, "handleMessage"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/enatha/enatha;->C(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_9
    iput-boolean v3, p0, Lcom/transsion/athena/enatha/enatha;->d:Z

    return v3
.end method

.method public final l(Lcom/transsion/athena/data/TrackDataWrapper;)Lcom/transsion/athena/data/Track;
    .locals 10

    const/4 v0, 0x1

    const-string v1, "_eparam"

    new-instance v2, Lcom/transsion/athena/data/Track;

    invoke-direct {v2}, Lcom/transsion/athena/data/Track;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackDataWrapper;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/athena/data/Track;->setEventName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackDataWrapper;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/athena/data/Track;->setTid(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/athena/data/Track;->setTrackErTs(J)V

    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackDataWrapper;->c()Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-le v5, v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v6, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "net"

    :try_start_1
    iget-object p0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p0}, Lo3d;->d(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "event"

    :try_start_2
    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/transsion/athena/data/Track;->setJsonData(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v0}, Lcom/transsion/athena/data/Track;->setOriginJsonData(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackData;->d()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/transsion/athena/data/Track;->setTrackFlag(I)V

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p0

    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le5d;->c(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/transsion/athena/data/Track;->setTid(J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Convert to Track exception : %s"

    invoke-static {p1, p0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-object v2
.end method

.method public final p(IZ)V
    .locals 6

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le5d;->n(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->m()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "handleTidChange appconf : %s"

    invoke-static {v2, v1}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/config/data/model/athena;Z)V

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/athena/enatha/enatha$c;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/transsion/athena/enatha/enatha$c;-><init>(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;)V

    invoke-static {v2, v3, v4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/athena/enatha/enatha;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/transsion/athena/enatha/enatha;->B(Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Lcom/transsion/athena/enatha/enatha$e;

    invoke-direct {v2, p0}, Lcom/transsion/athena/enatha/enatha$e;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    invoke-static {v1, v2}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/athena/enatha/enatha$a;

    invoke-direct {v4, p0}, Lcom/transsion/athena/enatha/enatha$a;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    invoke-static {v2, v3, v4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V

    :cond_2
    if-eqz p2, :cond_8

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "handleTidChange tid config is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s"

    invoke-static {p1, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    :try_start_0
    iget-object p2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p2

    iget-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    new-instance v2, Lybd;

    invoke-direct {v2}, Lybd;-><init>()V

    invoke-virtual {p2, v0, v1, v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;ZLcom/transsion/athena/data/anateh/enatha;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Handle tid change exception : %s"

    invoke-static {v1, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "handleTidChange"

    invoke-virtual {p0, v0, p2}, Lcom/transsion/athena/enatha/enatha;->C(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->H()Lcom/transsion/ga/AthenaAnalytics$a;

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result p0

    if-ne p0, p1, :cond_8

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p0

    const-string p2, "page_view"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Le5d;->a(ILjava/lang/String;F)I

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    :goto_3
    invoke-static {p0}, Lcom/transsion/athena/config/data/model/ehanat;->e(Z)V

    :cond_8
    return-void
.end method

.method public final q(Landroid/location/Location;)V
    .locals 11

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const/4 v1, 0x1

    const-string v2, "lat"

    const-string v3, "lng"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v7, v8}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    invoke-virtual {p1, v2, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    :try_start_0
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p1

    invoke-virtual {p1}, Le5d;->l()I

    move-result p1

    invoke-static {v4, v5, v7, v8, p1}, Lx3d;->a(DDI)Lx3d;

    move-result-object p1

    invoke-virtual {p1}, Lx3d;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "geono"

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc4d;->d(Ljava/lang/String;)V

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    :goto_1
    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lcom/transsion/athena/taaneh/a;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/athena/taaneh/athena;->r(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld5d;

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "cellid"

    :try_start_2
    invoke-virtual {v3}, Ld5d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "level"

    :try_start_3
    iget v3, v3, Ld5d;->e:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s"

    invoke-static {v4, v3}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const-string v3, "cellidlist"

    if-lez p0, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    goto :goto_3

    :cond_2
    const-string p0, ""

    invoke-virtual {v0, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_3
    move v1, p1

    :goto_3
    if-eqz v1, :cond_4

    const/16 p0, 0x270f

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p1

    const-string v1, "location"

    invoke-virtual {p1, v1, v0, p0}, Lcom/transsion/ga/AthenaAnalytics;->c0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :cond_4
    return-void
.end method

.method public final s(Lcom/tencent/mmkv/MMKV;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x64

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    aget-object v5, v0, v4

    const-class v6, Lcom/transsion/athena/data/TrackDataWrapper;

    invoke-virtual {p1, v5, v6}, Lcom/tencent/mmkv/MMKV;->j(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/transsion/athena/data/TrackDataWrapper;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v2, :cond_2

    invoke-virtual {p0, v5}, Lcom/transsion/athena/enatha/enatha;->l(Lcom/transsion/athena/data/TrackDataWrapper;)Lcom/transsion/athena/data/Track;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    aput-object v5, v3, v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/athena/enatha/enatha;->D(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Lcom/tencent/mmkv/MMKV;->removeValuesForKeys([Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->s(Lcom/tencent/mmkv/MMKV;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    :goto_2
    return-void

    :goto_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final t(Lcom/transsion/athena/data/Track;)V
    .locals 8

    const-string v0, "net"

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/a;->a(J)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "tid"

    const-string v4, "ts"

    const-string v5, "event"

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "page_enter"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "eparam"

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "_eparam"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first_page_enter_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v6, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v6}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Le4d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "save [%d] fpe to sp : %s"

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "saveFpeForAppId exception : %s"

    invoke-static {v1, v0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Athena SDK Enable : [false]"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s"

    invoke-static {p1, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v2, "appid"

    :try_start_4
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/transsion/athena/taaneh/a;->a(J)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v2, "params"

    :try_start_5
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v2, "track event:%s"

    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "handleSaveData exception:%s"

    invoke-static {v2, v1}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xaf000

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "track [%d]-[%s], save2DB failed due to eparam out of limit [%d]"

    invoke-static {p1, p0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->M(Lcom/transsion/athena/data/Track;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v0

    const-wide/16 v6, 0x270f

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le5d;->m(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le5d;->c(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/athena/data/Track;->setTid(J)V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->isCacheEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v2

    :cond_6
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->j()I

    move-result v1

    if-lez v1, :cond_c

    if-eqz v4, :cond_c

    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const-string v3, "save event to memory:%s"

    :try_start_8
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "print saveTrack2Mem exception:%s"

    invoke-static {v4, v3}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v3, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    :cond_7
    iget-object v3, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v1, v2

    const-wide/16 v4, 0x0

    if-lt v3, v1, :cond_8

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->D(Ljava/util/List;)V

    iput-wide v4, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowTrack(J)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setLastTTime(J)V

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_9

    iput-wide v1, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    goto :goto_3

    :cond_9
    sub-long/2addr v1, v6

    const-wide/32 v6, 0x927c0

    cmp-long p1, v1, v6

    if-ltz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/athena/enatha/enatha;->D(Ljava/util/List;)V

    iput-wide v4, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "save [%d]-[%s] to DB failed due to limit in one-life-cycle"

    invoke-static {p1, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/transsion/athena/enatha/enatha;->u(Lcom/transsion/athena/data/Track;Lcom/transsion/athena/config/data/model/TidConfigBean;)V

    return-void
.end method

.method public final u(Lcom/transsion/athena/data/Track;Lcom/transsion/athena/config/data/model/TidConfigBean;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v0

    const-wide/16 v2, 0x270f

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/athena/data/TrackData;->b()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Le5d;->b(JF)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/athena/data/TrackData;->b()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Le5d;->a(ILjava/lang/String;F)I

    move-result v0

    :goto_0
    if-nez v0, :cond_8

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowTrack(J)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "save [%d]-[%s] to DB failed due to limit in one-life-cycle"

    invoke-static {v2, v1}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, La4d;->f()La4d;

    move-result-object v1

    invoke-virtual {v1, p1}, La4d;->c(Lcom/transsion/athena/data/Track;)V

    iget-object v1, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/Track;)I

    move-result v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "tid"

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "event"

    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "ts"

    :try_start_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "db_count"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "save event to DB:%s"

    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "saveTrack2DB exception:%s"

    invoke-static {v3, v2}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const-string v2, "DB_UPDATE_ERROR"

    invoke-static {v2}, Lc4d;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "save [%d]-[%s] to DB failed due to DB_OUT_OF_MEMORY_ERROR"

    invoke-static {v3, v2}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lj5d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v2

    new-instance v3, Lwbd;

    invoke-direct {v3}, Lwbd;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Lcom/transsion/athena/data/anateh/aethna;->a(ILcom/transsion/athena/data/anateh/enatha;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Clean up DB due to DB_OUT_OF_MEMORY_ERROR, Count [%d]"

    invoke-static {v3, v2}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ev_athena"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    if-lez v1, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setLastTTime(J)V

    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/transsion/athena/config/data/model/aatnhe;->a(I)V

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "device"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/a;->a(J)I

    move-result p1

    const/16 p2, 0x270f

    if-ne p2, p1, :cond_7

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p1

    invoke-virtual {p1}, Le5d;->w()V

    :cond_7
    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/athena/enatha/enatha;->H(ZJ)V

    goto :goto_4

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "recordTrackFailed reason : %d"

    invoke-static {p1, p0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
