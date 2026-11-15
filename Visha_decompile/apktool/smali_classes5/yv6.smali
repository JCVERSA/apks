.class public final synthetic Lyv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/service/MusicService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/service/MusicService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyv6;->b:Lcom/transsion/audio/service/MusicService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lyv6;->b:Lcom/transsion/audio/service/MusicService;

    invoke-static {p0, p1}, Lcom/transsion/audio/service/MusicService;->g(Lcom/transsion/audio/service/MusicService;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
