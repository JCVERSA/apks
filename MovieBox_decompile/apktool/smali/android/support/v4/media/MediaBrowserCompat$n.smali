.class public abstract Landroid/support/v4/media/MediaBrowserCompat$n;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$n$b;,
        Landroid/support/v4/media/MediaBrowserCompat$n$a;
    }
.end annotation


# instance fields
.field final a:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

.field final b:Landroid/os/IBinder;

.field c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->b:Landroid/os/IBinder;

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1a

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$n$b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$n$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->a:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$n$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$n$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->a:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 31
    .line 32
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method e(Landroid/support/v4/media/MediaBrowserCompat$m;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->c:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method
