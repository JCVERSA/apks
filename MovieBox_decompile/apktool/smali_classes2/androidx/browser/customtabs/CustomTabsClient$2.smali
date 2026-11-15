.class Landroidx/browser/customtabs/CustomTabsClient$2;
.super Lc/a$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient;->b(Landroidx/browser/customtabs/c;)Lc/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic b:Landroidx/browser/customtabs/c;

.field final synthetic o:Landroidx/browser/customtabs/CustomTabsClient;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->o:Landroidx/browser/customtabs/CustomTabsClient;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lc/a$a;-><init>()V

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
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->a:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public B0(IILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$2$6;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsClient$2$6;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;IILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public K0(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$2$1;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$2$1;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public L(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$2$2;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$2$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public O0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$2$4;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$2$4;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public R0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$2$3;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$2$3;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public T0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v7, Landroidx/browser/customtabs/CustomTabsClient$2$5;

    .line 9
    .line 10
    move-object v1, v7

    .line 11
    move-object v2, p0

    .line 12
    move v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move v5, p3

    .line 15
    move-object v6, p4

    .line 16
    invoke-direct/range {v1 .. v6}, Landroidx/browser/customtabs/CustomTabsClient$2$5;-><init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public s(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->b:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/c;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
