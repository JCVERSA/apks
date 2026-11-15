.class public final synthetic Lnv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/player/MusicPlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnv6;->a:Lcom/transsion/audio/player/MusicPlayManager;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iget-object p0, p0, Lnv6;->a:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->m(Lcom/transsion/audio/player/MusicPlayManager;F)V

    return-void
.end method
