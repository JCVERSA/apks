.class Lcom/mgtv/a/c/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/i;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/i;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/i$1;->a:Lcom/mgtv/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(II)V
    .locals 0

    const-string p1, "VideoPlayerCoverCore"

    const-string p2, "onCompletion"

    invoke-static {p1, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/a/c/i$1;->a:Lcom/mgtv/a/c/i;

    invoke-virtual {p1}, Lcom/mgtv/a/c/a;->f()V

    iget-object p0, p0, Lcom/mgtv/a/c/i$1;->a:Lcom/mgtv/a/c/i;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->g()V

    :cond_0
    return-void
.end method
