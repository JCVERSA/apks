.class public Lydb;
.super Lvec;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lydb;->b:Ljava/util/List;

    const-class v1, Llw5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method

.method public static bridge synthetic h(Lydb;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lydb;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lydb;->i(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lydb;->b:Ljava/util/List;

    return-object p0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lge;->e()Z

    move-result v1

    const-string v2, "https://api.vishavideo.com/visha/api/feedback"

    if-eqz v1, :cond_2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    const-string v3, "environment_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "https://test-visha.transsion-os.com/visha/api/feedback"

    :cond_1
    invoke-static {v2}, Lvdb;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lvdb;->l(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lydb$a;

    invoke-direct {v1, p0, p1}, Lydb$a;-><init>(Lydb;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/transsion/log/upload/net/RequestManager;->a(Lcs4;)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;J)J
    .locals 6

    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr p0, v0

    long-to-double v0, p2

    long-to-double v2, p0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    long-to-float p0, p0

    const p1, 0x3ecccccd    # 0.4f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    goto :goto_0

    :cond_0
    move-wide p0, v1

    :goto_0
    cmp-long v0, p0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p2, p0

    :goto_1
    return-wide p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTotalFileSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UBTTask"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method public final k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Lwdb$a;

    invoke-direct {v1}, Lwdb$a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwdb$a;->c(Ljava/lang/String;)Lwdb$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "v_ubt_v1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwdb$a;->i(Ljava/lang/String;)Lwdb$a;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lwdb$a;->g([B)Lwdb$a;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lwdb$a;->f([B)Lwdb$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lwdb$a;->b(Ljava/lang/String;)Lwdb$a;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p0, p3, p4, p5}, Lydb;->j(Ljava/lang/String;J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lwdb$a;->j(J)Lwdb$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwdb$a;->e(Landroid/content/Context;)Lwdb$a;

    move-result-object p0

    invoke-virtual {p0, p6}, Lwdb$a;->d(Ljava/lang/Long;)Lwdb$a;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lwdb$a;->h(Ljava/lang/Boolean;)Lwdb$a;

    move-result-object p0

    invoke-virtual {p0}, Lwdb$a;->a()Lwdb;

    move-result-object p0

    invoke-static {p0}, Lvdb;->k(Lwdb;)V

    :cond_4
    :goto_1
    return-void
.end method
