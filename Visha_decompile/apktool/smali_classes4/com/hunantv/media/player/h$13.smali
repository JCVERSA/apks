.class Lcom/hunantv/media/player/h$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$o;


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

    iput-object p1, p0, Lcom/hunantv/media/player/h$13;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/h$13;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->ai(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceFlowHandledListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/h$13;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->ai(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceFlowHandledListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceFlowHandledListener;->onSourceFlowInfoEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
