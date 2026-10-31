.class public Lo/xi7;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xi7$a;
    }
.end annotation


# static fields
.field public static final a:Lo/xi7$a;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/xi7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/xi7$a;-><init>(Lo/wi7;)V

    sput-object v0, Lo/xi7;->a:Lo/xi7$a;

    const-string v0, ""

    sput-object v0, Lo/xi7;->c:Ljava/lang/String;

    const v0, 0x5c77e0

    sput v0, Lo/xi7;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lo/xi7;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/o76;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lo/xi7;->c:Ljava/lang/String;

    :cond_0
    sget-object p0, Lo/xi7;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    sget-object v0, Lo/xi7;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object v0, Lo/xi7;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lo/xi7;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->T(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p0}, Lo/xl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lo/cj0;->m(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {v0}, Lo/cj0;->m(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lo/xi7;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    sput-object v1, Lo/xi7;->b:Ljava/lang/String;

    :goto_2
    sget-object p0, Lo/xi7;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lo/xi7;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "unknown"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "be135353437d704f3a37e2b413d040a5ddff4f19"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    :cond_0
    const v0, 0x7f1101c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
