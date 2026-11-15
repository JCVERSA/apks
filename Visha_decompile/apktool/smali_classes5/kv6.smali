.class public final synthetic Lkv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/player/MusicPlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lkv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->h(Lcom/transsion/audio/player/MusicPlayManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
