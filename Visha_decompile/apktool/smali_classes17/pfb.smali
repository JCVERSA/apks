.class public final Lpfb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpfb;

.field public static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpfb;

    invoke-direct {v0}, Lpfb;-><init>()V

    sput-object v0, Lpfb;->a:Lpfb;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lpfb;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc74;)V
    .locals 0

    invoke-static {p0}, Lpfb;->f(Lc74;)V

    return-void
.end method

.method public static final b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lpfb;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static final c()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lpfb;->d()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final d()Ljava/lang/Thread;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "getMainLooper().thread"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final f(Lc74;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(Lc74;)Z
    .locals 1

    const-string p0, "runnable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpfb;->b:Landroid/os/Handler;

    new-instance v0, Lofb;

    invoke-direct {v0, p1}, Lofb;-><init>(Lc74;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
