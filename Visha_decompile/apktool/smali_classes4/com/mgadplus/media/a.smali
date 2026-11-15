.class public final Lcom/mgadplus/media/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/media/a$a;
    }
.end annotation


# static fields
.field public static c:Lcom/mgadplus/media/a;


# instance fields
.field public a:Lcom/hunantv/media/widget/MgtvVideoView;

.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/mgadplus/media/a;
    .locals 2

    sget-object v0, Lcom/mgadplus/media/a;->c:Lcom/mgadplus/media/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgadplus/media/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgadplus/media/a;->c:Lcom/mgadplus/media/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgadplus/media/a;

    invoke-direct {v1}, Lcom/mgadplus/media/a;-><init>()V

    sput-object v1, Lcom/mgadplus/media/a;->c:Lcom/mgadplus/media/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mgadplus/media/a;->c:Lcom/mgadplus/media/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mgadplus/media/a$a;)Lcom/hunantv/media/widget/MgtvVideoView;
    .locals 3

    iget-object p1, p0, Lcom/mgadplus/media/a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    if-nez p1, :cond_0

    new-instance p1, Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v2, v1}, Lcom/hunantv/media/widget/MgtvVideoView;-><init>(Landroid/content/Context;IZZ)V

    iput-object p1, p0, Lcom/mgadplus/media/a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgadplus/media/a;->b:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/mgadplus/media/a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/mgadplus/media/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/media/a$a;

    if-eq p2, p1, :cond_3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/mgadplus/media/a$a;->d()V

    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgadplus/media/a;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgadplus/media/a;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/mgadplus/media/a;->a:Lcom/hunantv/media/widget/MgtvVideoView;

    return-object p0
.end method
