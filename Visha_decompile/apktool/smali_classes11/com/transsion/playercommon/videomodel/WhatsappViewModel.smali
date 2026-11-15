.class public Lcom/transsion/playercommon/videomodel/WhatsappViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;,
        Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;
    }
.end annotation


# static fields
.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;

.field public static final n:[Ljava/lang/String;

.field public static final o:I


# instance fields
.field public a:Landroidx/lifecycle/MutableLiveData;

.field public b:Landroidx/lifecycle/MutableLiveData;

.field public c:Landroidx/lifecycle/MutableLiveData;

.field public d:Landroidx/lifecycle/MutableLiveData;

.field public e:Landroidx/lifecycle/MutableLiveData;

.field public f:Landroidx/lifecycle/MutableLiveData;

.field public g:Landroidx/lifecycle/MutableLiveData;

.field public h:Landroidx/lifecycle/MutableLiveData;

.field public volatile i:I

.field public volatile j:I

.field public volatile k:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v22, ".pcx"

    const-string v23, ".tga"

    const-string v0, ".mp4"

    const-string v1, ".avi"

    const-string v2, ".wmv"

    const-string v3, ".mpeg"

    const-string v4, ".m4v"

    const-string v5, ".mov"

    const-string v6, ".asf"

    const-string v7, ".flv"

    const-string v8, ".f4v"

    const-string v9, ".rmvb"

    const-string v10, ".rm"

    const-string v11, ".3gp"

    const-string v12, ".vob"

    const-string v13, ".jpg"

    const-string v14, ".jpg"

    const-string v15, ".png"

    const-string v16, ".bmp"

    const-string v17, ".apng"

    const-string v18, ".gif"

    const-string v19, ".webp"

    const-string v20, ".svg"

    const-string v21, ".psd"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->l:[Ljava/lang/String;

    const-string v12, ".3gp"

    const-string v13, ".vob"

    const-string v1, ".mp4"

    const-string v2, ".avi"

    const-string v3, ".wmv"

    const-string v4, ".mpeg"

    const-string v5, ".m4v"

    const-string v6, ".mov"

    const-string v7, ".asf"

    const-string v8, ".flv"

    const-string v9, ".f4v"

    const-string v10, ".rmvb"

    const-string v11, ".rm"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->m:[Ljava/lang/String;

    const-string v9, ".pcx"

    const-string v10, ".tga"

    const-string v1, ".jpg"

    const-string v2, ".png"

    const-string v3, ".bmp"

    const-string v4, ".apng"

    const-string v5, ".gif"

    const-string v6, ".webp"

    const-string v7, ".svg"

    const-string v8, ".psd"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->n:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    iput v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    iput v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    return-void
.end method

.method public static C(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic G(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    return-void
.end method

.method public static synthetic H(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    return-void
.end method

.method public static synthetic I(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    return-void
.end method

.method public static synthetic K(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic L(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic M(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->q(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Z

    move-result p0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getSavePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getSavePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->q(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Z

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getSavePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getSavePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->K(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->Q(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->G(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->M(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lwlc;

    invoke-direct {v1, p0, p1}, Lwlc;-><init>(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lnlc;

    invoke-direct {p1, p2}, Lnlc;-><init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;)V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic e(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->L(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$a;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;ZLcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->J(ZLcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->O(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;IILcom/transsion/playercommon/whatsapp/WhatsappFile;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->N(IILcom/transsion/playercommon/whatsapp/WhatsappFile;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->H(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;Ljava/util/List;Landroid/content/Context;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->P(Ljava/util/List;Landroid/content/Context;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->I(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->C(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x800

    :try_start_2
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    const-string p1, "field to copy file"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_WhatsappViewModel"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static p(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->s(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-string v0, "duration"

    long-to-int p1, p1

    const-string p2, "dl_wa_content_dl_duration"

    invoke-static {p2, v0, p1}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    return p0
.end method

.method public static q(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getDocumentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lyx2;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setSavePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getDocumentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lyx2;->k:Ljava/io/File;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setSavePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getDocumentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->p(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-string v0, "duration"

    long-to-int p1, p1

    const-string p2, "dl_wa_content_dl_duration"

    invoke-static {p2, v0, p1}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    return p0
.end method

.method public static s(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->o(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x800

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    if-eqz p0, :cond_1

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fileCopyUseDocumentFile exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_WhatsappViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public B(II)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    iget v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    invoke-direct {p2, p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;-><init>(II)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    iget v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    invoke-direct {p2, p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;-><init>(II)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    iget v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    invoke-direct {p2, p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;-><init>(II)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public D(ZI)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->y(Ljava/util/List;Z)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->l(ZII)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->y(Ljava/util/List;Z)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->l(ZII)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->y(Ljava/util/List;Z)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->l(ZII)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    iget-boolean p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    :goto_0
    return p0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic J(ZLcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;
    .locals 11

    const/4 p3, 0x0

    iput p3, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    iput p3, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    iput p3, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    if-eqz p1, :cond_0

    sget-object v0, Likc;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Likc;->a:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    sget-object v1, Likc;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Likc;->b:Ljava/lang/String;

    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    invoke-static {v0, v1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {v1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->S()V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WhatsApp] waPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "visha_WhatsappViewModel"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v2, v3, :cond_e

    invoke-static {p2}, Likc;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v1, "[WhatsApp] inner SDK_INT"

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->S()V

    const-string p0, "[WhatsApp] list == null"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v10, "whatsapp"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_6

    const-string v10, "Media"

    goto :goto_3

    :cond_6
    const-string v10, ".Statuses"

    :goto_3
    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WhatsApp] matchUri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v2

    :cond_7
    if-nez v8, :cond_8

    const-string p1, "[WhatsApp] matchUri = null"

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->S()V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    invoke-virtual {v8}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    invoke-static {p2, p1}, Lav3;->A(Landroidx/documentfile/provider/DocumentFile;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    move v2, p3

    :goto_5
    sget-object v3, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->l:[Ljava/lang/String;

    array-length v7, v3

    if-ge v2, v7, :cond_9

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget v3, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->o:I

    if-lt v2, v3, :cond_b

    new-instance v2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-direct {v2, v0, v1, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;-><init>(ILjava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/File;

    sget-object v3, Lyx2;->k:Ljava/io/File;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v2, v9}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setSavePath(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    goto :goto_6

    :cond_b
    new-instance v2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-direct {v2, v9, v1, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;-><init>(ILjava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/File;

    sget-object v3, Lyx2;->k:Ljava/io/File;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v2, v9}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setSavePath(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    :goto_6
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_e
    const-string p2, "[WhatsApp] Common"

    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p1, v8}, Lav3;->B(Ljava/io/File;ZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move v2, p3

    :goto_8
    sget-object v3, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->l:[Ljava/lang/String;

    array-length v7, v3

    if-ge v2, v7, :cond_f

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget v3, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->o:I

    if-lt v2, v3, :cond_11

    new-instance v2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/File;

    sget-object v3, Lyx2;->k:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {v2, v9}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setSavePath(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    goto :goto_9

    :cond_11
    new-instance v2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3, v1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/File;

    sget-object v3, Lyx2;->k:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {v2, v9}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setSavePath(Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    iget p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    :goto_9
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_14
    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    invoke-direct {p1, p3, p3, p3}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;-><init>(IZI)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_15

    move v9, p3

    :cond_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_16

    move p0, p3

    goto :goto_a

    :cond_16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_17

    goto :goto_b

    :cond_17
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p3

    :goto_b
    invoke-static {v9, p0, p3}, Ls16;->d(III)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic N(IILcom/transsion/playercommon/whatsapp/WhatsappFile;Ljava/lang/Boolean;)V
    .locals 1

    const-string p4, "dl_wa_content_dl_finish"

    invoke-static {p4}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    if-nez p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isVideo()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    iget p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    goto :goto_3

    :cond_2
    iget-object p4, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    iget p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    :goto_3
    sget p0, Lcom/transsion/playercommon/R$string;->wahtsapp_save_finish:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public final synthetic P(Ljava/util/List;Landroid/content/Context;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;
    .locals 9

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {v6}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isVideo()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    iget v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    iget v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    :goto_1
    iget-boolean v7, v6, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    if-eqz v7, :cond_3

    invoke-static {p2, v6}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->q(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Z

    invoke-virtual {v6}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getSavePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getSavePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v7, "dl_wa_content_dl_finish"

    invoke-static {v7}, Lp06;->d0(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    iget-object v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_2
    iput-boolean v1, v6, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string p0, "num"

    invoke-static {v4, v5}, Ls16;->b(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dl_wa_content_mul_cl"

    invoke-static {p2, p0, p1}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic Q(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget p0, Lcom/transsion/playercommon/R$string;->wahtsapp_save_finish:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public R()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public T(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public U(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;I)V
    .locals 1

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->Z(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->V(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public V(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public W(Landroidx/lifecycle/LifecycleOwner;ILandroidx/lifecycle/Observer;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public X(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public Y(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public Z(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public a0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    iput p1, v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b0(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public c0(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;II)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lulc;

    invoke-direct {v1, p1, p2}, Lulc;-><init>(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lvlc;

    invoke-direct {v0, p0, p3, p4, p2}, Lvlc;-><init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;IILcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public e0(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p3

    new-instance v0, Lplc;

    invoke-direct {v0, p0, p2, p1}, Lplc;-><init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lqlc;

    invoke-direct {p2, p0}, Lqlc;-><init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public f0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public l(ZII)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move p3, v0

    :cond_1
    iput p3, p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    iput-boolean p1, p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    move p3, v0

    :cond_4
    iput p3, p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    iput-boolean p1, p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    move p3, v0

    :cond_7
    iput p3, p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    iput-boolean p1, p2, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public n(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lrlc;

    invoke-direct {p1}, Lrlc;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lslc;

    invoke-direct {p1}, Lslc;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Ltlc;

    invoke-direct {p1}, Ltlc;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public v(Lcom/transsion/playercommon/activities/BaseActivity;Z)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lmlc;

    invoke-direct {v1, p0, p2, p1}, Lmlc;-><init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;ZLcom/transsion/playercommon/activities/BaseActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lolc;

    invoke-direct {p1}, Lolc;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public w()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public x()Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    return-object p0
.end method

.method public final y(Ljava/util/List;Z)I
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {v0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSaved()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p0, p0, 0x1

    iput-boolean p2, v0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    goto :goto_0

    :cond_2
    return p0
.end method

.method public z()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
