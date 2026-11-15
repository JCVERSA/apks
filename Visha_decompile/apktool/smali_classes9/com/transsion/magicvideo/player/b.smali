.class public final synthetic Lcom/transsion/magicvideo/player/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/PlayerStates;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/player/b;->b:Lcom/transsion/dbdata/beans/PlayerStates;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/b;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/b;->b:Lcom/transsion/dbdata/beans/PlayerStates;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/b;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->b(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method
