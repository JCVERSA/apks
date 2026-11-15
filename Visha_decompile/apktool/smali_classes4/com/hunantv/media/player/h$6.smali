.class Lcom/hunantv/media/player/h$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$6;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothSwitchSourceComplete(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/h$6;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->I(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/h$6;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->I(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$n;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceComplete(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSmoothSwitchSourceFailed(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/h$6;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->I(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/h$6;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->I(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$n;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceFailed(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSmoothSwitchSourceInfo(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/h$6;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->I(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/h$6;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->I(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$n;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceInfo(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
