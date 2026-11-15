.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback$a;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback$a;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method
