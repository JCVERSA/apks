.class public final synthetic Lpxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lpxb;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lpxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object p0, p0, Lpxb;->c:Landroid/content/Intent;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Y0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
