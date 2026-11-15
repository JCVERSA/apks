.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/media/MediaMetadataCompat;

.field public final synthetic b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$a;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    iput-object p2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$a;->a:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$a;->a:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;->b(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method
