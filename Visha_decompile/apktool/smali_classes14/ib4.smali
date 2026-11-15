.class public final synthetic Lib4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

.field public final synthetic d:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iput-object p2, p0, Lib4;->c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

    iput-object p3, p0, Lib4;->d:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lib4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget-object v1, p0, Lib4;->c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

    iget-object p0, p0, Lib4;->d:Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;

    invoke-static {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->f(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V

    return-void
.end method
