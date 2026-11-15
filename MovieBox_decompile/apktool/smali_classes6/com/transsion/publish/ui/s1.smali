.class public final synthetic Lcom/transsion/publish/ui/s1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/VideoPreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/VideoPreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/publish/ui/s1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/s1;->a:Lcom/transsion/publish/ui/VideoPreviewActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/publish/ui/VideoPreviewActivity;->b0(Lcom/transsion/publish/ui/VideoPreviewActivity;Landroid/media/MediaPlayer;II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
