.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;,
        Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;,
        Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;,
        Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;,
        Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;,
        Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/List;

.field public final e:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;

.field public final f:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

.field public final g:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;

.field public h:Landroid/support/v4/media/MediaBrowserCompat;

.field public i:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d:Ljava/util/List;

    new-instance v0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V

    iput-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->e:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;

    new-instance v0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V

    iput-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->f:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    new-instance v0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V

    iput-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->g:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->c:Landroid/content/Context;

    new-instance p1, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

    iput-object p2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->h:Landroid/support/v4/media/MediaBrowserCompat;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->g:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->i:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->f:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->i:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->q()V

    return-void
.end method

.method public static bridge synthetic i(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->m(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->r(Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->s(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "MediaBrowserAdapter"

    const-string v2, "isMetadataReadable: ignore invalid metadata"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static r(Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MediaBrowserAdapter"

    const-string v1, "safeGetMetadata failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeGetMetadataString failed, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBrowserAdapter"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public l(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public n()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->h:Landroid/support/v4/media/MediaBrowserCompat;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->c:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->e:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->h:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart: Creating MediaBrowser, and connecting ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->h:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaBrowserAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public o(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p1, v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;->a(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->p(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

    invoke-virtual {v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->b()V

    new-instance v0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$a;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->o(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;)V

    const-string p0, "MediaBrowserAdapter"

    const-string v0, "resetState: "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
