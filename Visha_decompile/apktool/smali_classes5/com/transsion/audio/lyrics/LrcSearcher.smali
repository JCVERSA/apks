.class public Lcom/transsion/audio/lyrics/LrcSearcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/lyrics/LrcSearcher$h;,
        Lcom/transsion/audio/lyrics/LrcSearcher$i;,
        Lcom/transsion/audio/lyrics/LrcSearcher$g;
    }
.end annotation


# instance fields
.field public a:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public b:Ljava/lang/String;

.field public c:Lou5;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->e:Z

    iput-boolean v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->f:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/lyrics/LrcSearcher;Lcom/transsion/audio/lyrics/LrcSearcher$i;ZLcom/transsion/retrofit/reponse/BaseResponse;)Lld7;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/lyrics/LrcSearcher;->v(Lcom/transsion/audio/lyrics/LrcSearcher$i;ZLcom/transsion/retrofit/reponse/BaseResponse;)Lld7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/audio/lyrics/LrcSearcher$g;Lcom/transsion/audio/lyrics/LrcSearcher$g;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/lyrics/LrcSearcher;->w(Lcom/transsion/audio/lyrics/LrcSearcher$g;Lcom/transsion/audio/lyrics/LrcSearcher$g;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/audio/lyrics/LrcSearcher;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/audio/lyrics/LrcSearcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->f:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/audio/lyrics/LrcSearcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->e:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/audio/lyrics/LrcSearcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->d:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/audio/lyrics/LrcSearcher;)Lou5;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->c:Lou5;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/audio/lyrics/LrcSearcher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->f:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/audio/lyrics/LrcSearcher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->e:Z

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/audio/lyrics/LrcSearcher;[B)Ljava/io/BufferedReader;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/lyrics/LrcSearcher;->n([B)Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/lyrics/LrcSearcher;->z(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static m()Z
    .locals 3

    sget-boolean v0, Lpp3;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/transsion/playercommon/core/MainApp;->u:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc07;->b(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc07;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static synthetic w(Lcom/transsion/audio/lyrics/LrcSearcher$g;Lcom/transsion/audio/lyrics/LrcSearcher$g;)I
    .locals 5

    iget-wide v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$g;->e:J

    iget-wide v2, p1, Lcom/transsion/audio/lyrics/LrcSearcher$g;->e:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr v0, v2

    :goto_0
    long-to-int p0, v0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$g;->d:J

    iget-wide p0, p1, Lcom/transsion/audio/lyrics/LrcSearcher$g;->d:J

    sub-long/2addr v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public B(Ljava/lang/String;)Lmc7;
    .locals 1

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher$e;

    invoke-direct {v0, p0, p1}, Lcom/transsion/audio/lyrics/LrcSearcher$e;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/lang/String;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public C(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    invoke-virtual {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->o()Lmc7;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/transsion/audio/lyrics/LrcSearcher$h;-><init>(Lmc7;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    invoke-virtual {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->p()Lmc7;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/transsion/audio/lyrics/LrcSearcher$h;-><init>(Lmc7;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    invoke-virtual {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->q()Lmc7;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5}, Lcom/transsion/audio/lyrics/LrcSearcher$h;-><init>(Lmc7;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/audio/lyrics/LrcSearcher;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v4, p1}, Lcom/transsion/audio/lyrics/LrcSearcher;->t(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/audio/lyrics/LrcSearcher$i;)Lmc7;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {v2, v1, v4}, Lcom/transsion/audio/lyrics/LrcSearcher$h;-><init>(Lmc7;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v0, p1, v3}, Lcom/transsion/audio/lyrics/LrcSearcher;->D(Ljava/util/List;Lcom/transsion/audio/lyrics/LrcSearcher$i;I)V

    return-void
.end method

.method public D(Ljava/util/List;Lcom/transsion/audio/lyrics/LrcSearcher$i;I)V
    .locals 2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    iget-object v0, v0, Lcom/transsion/audio/lyrics/LrcSearcher$h;->a:Lmc7;

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/lyrics/LrcSearcher$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/transsion/audio/lyrics/LrcSearcher$a;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/util/List;ILcom/transsion/audio/lyrics/LrcSearcher$i;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public E(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->d:Z

    return-void
.end method

.method public final n([B)Ljava/io/BufferedReader;
    .locals 2

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method

.method public o()Lmc7;
    .locals 1

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher$5;

    invoke-direct {v0, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$5;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public p()Lmc7;
    .locals 1

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher$b;

    invoke-direct {v0, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$b;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public q()Lmc7;
    .locals 1

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher$d;

    invoke-direct {v0, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$d;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public r(Ljava/lang/String;Z)Lmc7;
    .locals 1

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/audio/lyrics/LrcSearcher$f;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/lang/String;Z)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public s()Lmc7;
    .locals 1

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher$7;

    invoke-direct {v0, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$7;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/audio/lyrics/LrcSearcher$i;)Lmc7;
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0, p1, p2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getRemoteLyrics(Ljava/lang/String;Ljava/lang/String;)Lmc7;

    move-result-object p1

    new-instance p2, Lsu5;

    invoke-direct {p2, p0, p4, p3}, Lsu5;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;Lcom/transsion/audio/lyrics/LrcSearcher$i;Z)V

    invoke-virtual {p1, p2}, Lmc7;->w(Lt74;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public u()V
    .locals 1

    new-instance v0, Lou5;

    invoke-direct {v0}, Lou5;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->c:Lou5;

    return-void
.end method

.method public final synthetic v(Lcom/transsion/audio/lyrics/LrcSearcher$i;ZLcom/transsion/retrofit/reponse/BaseResponse;)Lld7;
    .locals 1

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/audio/lyrics/LrcSearcher$c;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher;Lcom/transsion/audio/lyrics/LrcSearcher$i;ZLcom/transsion/retrofit/reponse/BaseResponse;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/lyrics/LrcSearcher$i;)V
    .locals 3

    sget-boolean v0, Lpp3;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/transsion/audio/lyrics/LrcSearcher;->t(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/audio/lyrics/LrcSearcher$i;)Lmc7;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {v1, p1, p2}, Lcom/transsion/audio/lyrics/LrcSearcher$h;-><init>(Lmc7;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p3, v2}, Lcom/transsion/audio/lyrics/LrcSearcher;->D(Ljava/util/List;Lcom/transsion/audio/lyrics/LrcSearcher$i;I)V

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 15

    const-string v0, "_id"

    const-string v1, "_size"

    const-string v2, "title"

    const-string v3, "date_modified"

    const-string v4, "_data"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v4, v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v11

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "_size DESC"

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/transsion/audio/lyrics/LrcSearcher$g;

    invoke-direct {v7}, Lcom/transsion/audio/lyrics/LrcSearcher$g;-><init>()V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/transsion/audio/lyrics/LrcSearcher$g;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/transsion/audio/lyrics/LrcSearcher$g;->b:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/transsion/audio/lyrics/LrcSearcher$g;->c:Ljava/lang/String;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/transsion/audio/lyrics/LrcSearcher$g;->d:J

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/transsion/audio/lyrics/LrcSearcher$g;->e:J

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/transsion/audio/lyrics/LrcSearcher$g;->a()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, p0

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_3

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-object p0, v6

    goto :goto_3

    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catch_1
    :goto_3
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_4
    new-instance p0, Ltu5;

    invoke-direct {p0}, Ltu5;-><init>()V

    invoke-interface {v5, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/lyrics/LrcSearcher$g;

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$g;->a:Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v6
.end method

.method public final z(Ljava/lang/String;)[B
    .locals 5

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object p0

    :catch_1
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catch_3
    move-exception p0

    move-object p1, v0

    :goto_0
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    nop

    :catch_4
    :cond_2
    return-object v0

    :goto_1
    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    return-object v0

    :cond_3
    :goto_2
    throw p0
.end method
