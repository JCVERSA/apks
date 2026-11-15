.class Lcom/mgtv/a/c/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnPauseListener;


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

    iput-object p1, p0, Lcom/mgtv/a/c/i$4;->a:Lcom/mgtv/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/c/i$4;->a:Lcom/mgtv/a/c/i;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->f()V

    :cond_0
    return-void
.end method
