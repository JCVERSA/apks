.class public final synthetic Lqv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/player/MusicPlayManager;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    iput-object p2, p0, Lqv6;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p3, p0, Lqv6;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lqv6;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lqv6;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->i(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
