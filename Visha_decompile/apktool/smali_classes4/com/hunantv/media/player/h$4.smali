.class Lcom/hunantv/media/player/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;)V
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

    iput-object p1, p0, Lcom/hunantv/media/player/h$4;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;II)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/h$4;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->E(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/h$4;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->E(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;->onRecordVideoInfo(II)V

    :cond_0
    return-void
.end method

.method public b(Lcom/hunantv/media/player/d;II)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/h$4;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->E(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/h$4;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->E(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;->onRecordVideoErr(II)V

    :cond_0
    return-void
.end method
