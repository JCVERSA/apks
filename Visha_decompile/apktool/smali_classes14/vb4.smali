.class public final synthetic Lvb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iput p2, p0, Lvb4;->c:I

    iput-object p3, p0, Lvb4;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget v1, p0, Lvb4;->c:I

    iget-object p0, p0, Lvb4;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->l(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;ILjava/lang/String;)V

    return-void
.end method
