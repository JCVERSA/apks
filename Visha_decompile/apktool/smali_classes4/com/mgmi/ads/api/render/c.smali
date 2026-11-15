.class public Lcom/mgmi/ads/api/render/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/render/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mgmi/ads/api/render/c$a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/render/a;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgmi/ads/api/render/c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mgmi/ads/api/render/c$a;-><init>(Landroid/os/Looper;Lcom/mgmi/ads/api/render/a;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/render/c;->a:Lcom/mgmi/ads/api/render/c$a;

    iput-object p2, p0, Lcom/mgmi/ads/api/render/c;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/mgmi/c/a/a;

    new-instance v1, Lcom/mgmi/ads/api/render/c$1;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/render/c$1;-><init>(Lcom/mgmi/ads/api/render/c;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/mgmi/c/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/c/a/b;)V

    .line 3
    invoke-static {}, Li4d;->a()Li4d;

    move-result-object p0

    invoke-virtual {p0, v0}, Li4d;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/render/c;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mgmi/ads/api/render/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/ads/api/render/c;->a:Lcom/mgmi/ads/api/render/c$a;

    if-eqz p0, :cond_0

    const v0, 0xb304

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/ads/api/render/c;->a:Lcom/mgmi/ads/api/render/c$a;

    if-eqz p0, :cond_0

    const v0, 0xb305

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
