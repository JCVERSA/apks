.class Lcom/hunantv/media/player/h$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$j;


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

    iput-object p1, p0, Lcom/hunantv/media/player/h$9;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V
    .locals 0

    const p1, 0x20050

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/h$9;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->Q(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/h$9;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->Q(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    move-result-object p0

    const-string p1, "event_type"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "event_arg1"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;->onInfo(II)V

    :cond_1
    :goto_0
    return-void
.end method
