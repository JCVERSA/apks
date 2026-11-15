.class public final synthetic Leb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iput-object p2, p0, Leb4;->c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget-object p0, p0, Leb4;->c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

    invoke-static {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->b(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V

    return-void
.end method
