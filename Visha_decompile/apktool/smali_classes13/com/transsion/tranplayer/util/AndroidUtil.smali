.class public Lcom/transsion/tranplayer/util/AndroidUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidUtil"

.field public static final isJellyBeanMR2OrLater:Z

.field public static final isKitKatOrLater:Z

.field public static final isLolliPopOrLater:Z

.field public static final isMarshMallowOrLater:Z

.field public static final isNougatOrLater:Z

.field public static final isOOrLater:Z

.field private static lastCheckTime:J

.field private static sUserIsMonkey:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/tranplayer/util/AndroidUtil;->isOOrLater:Z

    sput-boolean v0, Lcom/transsion/tranplayer/util/AndroidUtil;->isNougatOrLater:Z

    sput-boolean v0, Lcom/transsion/tranplayer/util/AndroidUtil;->isMarshMallowOrLater:Z

    sput-boolean v0, Lcom/transsion/tranplayer/util/AndroidUtil;->isLolliPopOrLater:Z

    sput-boolean v0, Lcom/transsion/tranplayer/util/AndroidUtil;->isKitKatOrLater:Z

    sput-boolean v0, Lcom/transsion/tranplayer/util/AndroidUtil;->isJellyBeanMR2OrLater:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/tranplayer/util/AndroidUtil;->lastCheckTime:J

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/tranplayer/util/AndroidUtil;->sUserIsMonkey:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FileToUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static LocationToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "location has no scheme"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static PathToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static UriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isRunningByMonkey()Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/transsion/tranplayer/util/AndroidUtil;->sUserIsMonkey:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/tranplayer/util/AndroidUtil;->lastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/tranplayer/util/AndroidUtil;->lastCheckTime:J

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/util/AndroidUtil;->sUserIsMonkey:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/transsion/tranplayer/util/AndroidUtil;->sUserIsMonkey:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/util/AndroidUtil;->sUserIsMonkey:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/transsion/tranplayer/util/AndroidUtil;->sUserIsMonkey:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
