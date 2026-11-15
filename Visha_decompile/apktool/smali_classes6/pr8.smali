.class public final Lpr8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpr8;

.field public static b:Lnr8;

.field public static c:Lor8;

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpr8;

    invoke-direct {v0}, Lpr8;-><init>()V

    sput-object v0, Lpr8;->a:Lpr8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-boolean p0, Lpr8;->d:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "please call HostChangerManager.init() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lor8;
    .locals 0

    invoke-virtual {p0}, Lpr8;->a()V

    sget-object p0, Lpr8;->c:Lor8;

    if-nez p0, :cond_0

    const-string p0, "regionHostInterceptor"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final c(Landroid/content/Context;Llr8;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lpr8;->d:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnr8;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lnr8;-><init>(Landroid/content/Context;Llr8;)V

    sput-object p0, Lpr8;->b:Lnr8;

    new-instance p0, Lor8;

    sget-object p1, Lpr8;->b:Lnr8;

    if-nez p1, :cond_1

    const-string p1, "regionHostHelper"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0, p1}, Lor8;-><init>(Lnr8;)V

    sput-object p0, Lpr8;->c:Lor8;

    const/4 p0, 0x1

    sput-boolean p0, Lpr8;->d:Z

    return-void
.end method
