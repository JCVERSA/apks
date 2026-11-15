.class Lcom/hunantv/media/player/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnSmoothSwitchSourceListener(Lcom/hunantv/media/player/d$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$n;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$n;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$3;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$3;->a:Lcom/hunantv/media/player/d$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothSwitchSourceComplete(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i$3;->a:Lcom/hunantv/media/player/d$n;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceComplete(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    return-void
.end method

.method public onSmoothSwitchSourceFailed(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i$3;->a:Lcom/hunantv/media/player/d$n;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceFailed(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    return-void
.end method

.method public onSmoothSwitchSourceInfo(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i$3;->a:Lcom/hunantv/media/player/d$n;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d$n;->onSmoothSwitchSourceInfo(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    return-void
.end method
