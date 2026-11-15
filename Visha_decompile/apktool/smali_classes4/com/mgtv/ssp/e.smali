.class public Lcom/mgtv/ssp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 1
    sput p0, Lcom/mgtv/ssp/e;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 2
    sget v0, Lcom/mgtv/ssp/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/app/Application;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "393CoJ7g"

    invoke-static {p0, v2, v0, v1}, Lmgtv/qt/a;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lm3d;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/mgtv/ssp/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sput-boolean v1, Lcom/mgtv/ssp/e;->a:Z

    :try_start_0
    const-string v0, "startPlay"

    invoke-static {p0, v0}, Lmgtv/qt/a;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/mgtv/ssp/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/mgtv/ssp/e;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mgtv/ssp/e;->a:Z

    :try_start_0
    const-string v0, "endPlay"

    invoke-static {p0, v0}, Lmgtv/qt/a;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
