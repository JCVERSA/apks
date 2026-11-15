.class public final synthetic Lrv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/player/MusicPlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lrv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p0}, Lcom/transsion/audio/player/MusicPlayManager;->l(Lcom/transsion/audio/player/MusicPlayManager;)V

    return-void
.end method
