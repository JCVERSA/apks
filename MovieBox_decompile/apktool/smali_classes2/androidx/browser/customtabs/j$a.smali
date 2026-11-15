.class Landroidx/browser/customtabs/j$a;
.super Lc/c$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/j;->c(Landroidx/browser/customtabs/l;)Lc/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Landroidx/browser/customtabs/l;

.field final synthetic o:Landroidx/browser/customtabs/j;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/j;Landroidx/browser/customtabs/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/j$a;->o:Landroidx/browser/customtabs/j;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/j$a;->b:Landroidx/browser/customtabs/l;

    .line 4
    .line 5
    invoke-direct {p0}, Lc/c$a;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/browser/customtabs/j$a;->a:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic Y0(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/j$a;->d1(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z0(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/j$a;->c1(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a1(Landroidx/browser/customtabs/l;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/j$a;->b1(Landroidx/browser/customtabs/l;ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic b1(Landroidx/browser/customtabs/l;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/l;->onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic c1(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/l;->onSessionEnded(ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic d1(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/l;->onVerticalScrollEvent(ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/j$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/j$a;->b:Landroidx/browser/customtabs/l;

    .line 4
    .line 5
    new-instance v2, Landroidx/browser/customtabs/h;

    .line 6
    .line 7
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/h;-><init>(Landroidx/browser/customtabs/l;ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/j$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/j$a;->b:Landroidx/browser/customtabs/l;

    .line 4
    .line 5
    new-instance v2, Landroidx/browser/customtabs/g;

    .line 6
    .line 7
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/g;-><init>(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/j$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/j$a;->b:Landroidx/browser/customtabs/l;

    .line 4
    .line 5
    new-instance v2, Landroidx/browser/customtabs/i;

    .line 6
    .line 7
    invoke-direct {v2, v1, p1, p2}, Landroidx/browser/customtabs/i;-><init>(Landroidx/browser/customtabs/l;ZLandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
