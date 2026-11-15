.class public Lcom/transsion/mediasession/a$a;
.super Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediasession/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/mediasession/a;


# direct methods
.method public constructor <init>(Lcom/transsion/mediasession/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediasession/a$a;->a:Lcom/transsion/mediasession/a;

    invoke-direct {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method

.method public b(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    return-void
.end method
