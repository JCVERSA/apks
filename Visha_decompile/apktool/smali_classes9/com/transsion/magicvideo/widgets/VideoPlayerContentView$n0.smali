.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->v7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->c(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    const-string v0, "VideoPlayerContentView"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->f2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->L2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->s1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->f2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->M2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    :cond_0
    return-void
.end method

.method public onConnect(I)V
    .locals 1

    new-instance v0, Lg2c;

    invoke-direct {v0, p0, p1}, Lg2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 1

    new-instance v0, Lh2c;

    invoke-direct {v0, p0}, Lh2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
