.class public Lbg;
.super Lvec;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    iput-boolean p1, p0, Lbg;->b:Z

    iput-boolean p2, p0, Lbg;->c:Z

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

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lbg;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    iget-boolean v0, p0, Lbg;->b:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lbg;->c:Z

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->openLog()V

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->openDebug()V

    :cond_1
    instance-of p0, p1, Landroid/app/Application;

    if-eqz p0, :cond_2

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/android/arouter/launcher/ARouter;->init(Landroid/app/Application;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
