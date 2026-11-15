.class public final synthetic Lob4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iput-object p2, p0, Lob4;->c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

    iput p3, p0, Lob4;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lob4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget-object v1, p0, Lob4;->c:Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;

    iget p0, p0, Lob4;->d:I

    invoke-static {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->j(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V

    return-void
.end method
