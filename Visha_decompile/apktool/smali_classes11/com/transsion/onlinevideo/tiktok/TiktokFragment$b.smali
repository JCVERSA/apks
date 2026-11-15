.class public final Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->h(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->f(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->g(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->e(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    return-void
.end method

.method public static final e(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->e0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Z

    move-result v1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->m0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper;->f(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Z)V

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->d0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->e0()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->h0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    :cond_2
    return-void
.end method

.method public static final f(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->m0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    return-void
.end method

.method public static final g(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->m0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    return-void
.end method

.method public static final h(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->o0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->m0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 1

    invoke-super {p0, p1}, Lvz6;->onConnect(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    new-instance v0, Lwja;

    invoke-direct {v0, p0, p1}, Lwja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    new-instance v0, Lxja;

    invoke-direct {v0, p0}, Lxja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMobile()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    new-instance v0, Lzja;

    invoke-direct {v0, p0}, Lzja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWifi()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$b;->a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    new-instance v0, Lyja;

    invoke-direct {v0, p0}, Lyja;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
