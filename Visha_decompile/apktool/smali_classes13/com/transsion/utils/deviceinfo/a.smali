.class public final Lcom/transsion/utils/deviceinfo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/utils/deviceinfo/a$a;,
        Lcom/transsion/utils/deviceinfo/a$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/utils/deviceinfo/a$a;

.field public static volatile e:Lcom/transsion/utils/deviceinfo/a;

.field public static f:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/utils/deviceinfo/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/utils/deviceinfo/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    const-string v0, ""

    sput-object v0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/utils/deviceinfo/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/utils/deviceinfo/a;Lcom/transsion/utils/deviceinfo/a$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/utils/deviceinfo/a;->h(Lcom/transsion/utils/deviceinfo/a;Lcom/transsion/utils/deviceinfo/a$b;)V

    return-void
.end method

.method public static final synthetic b()Lcom/transsion/utils/deviceinfo/a;
    .locals 1

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->e:Lcom/transsion/utils/deviceinfo/a;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/utils/deviceinfo/a;)V
    .locals 0

    sput-object p0, Lcom/transsion/utils/deviceinfo/a;->e:Lcom/transsion/utils/deviceinfo/a;

    return-void
.end method

.method public static final h(Lcom/transsion/utils/deviceinfo/a;Lcom/transsion/utils/deviceinfo/a$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/utils/deviceinfo/a;->i(Lcom/transsion/utils/deviceinfo/a$b;)V

    return-void
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final k()Lcom/transsion/utils/deviceinfo/a;
    .locals 1

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v0

    return-object v0
.end method

.method public static final l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/utils/deviceinfo/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/utils/deviceinfo/a;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/utils/deviceinfo/a;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/utils/deviceinfo/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/utils/deviceinfo/a;->a:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/utils/deviceinfo/a;->a:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final g(Lcom/transsion/utils/deviceinfo/a$b;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Laz8;->a()Laz8;

    move-result-object v0

    const-string v1, "visha_gaid"

    invoke-virtual {v0, v1}, Laz8;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/utils/deviceinfo/a$b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lea2;

    invoke-direct {v1, p0, p1}, Lea2;-><init>(Lcom/transsion/utils/deviceinfo/a;Lcom/transsion/utils/deviceinfo/a$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public final i(Lcom/transsion/utils/deviceinfo/a$b;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/deviceinfo/GoogleADIDClient;->a(Landroid/content/Context;)Lcom/transsion/utils/deviceinfo/GoogleADIDClient$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/utils/deviceinfo/GoogleADIDClient$a;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    const-string v0, "DeviceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advertisingId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Laz8;->a()Laz8;

    move-result-object p0

    const-string v0, "visha_gaid"

    sget-object v1, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laz8;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/utils/deviceinfo/a;->f:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/utils/deviceinfo/a$b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p1}, Lcom/transsion/utils/deviceinfo/a$b;->a()V

    :goto_0
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/utils/deviceinfo/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/utils/deviceinfo/a;->b:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/utils/deviceinfo/a;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method
