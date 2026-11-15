.class public final synthetic Lcp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoPausedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    return-void
.end method


# virtual methods
.method public final OnVideoPaused()V
    .locals 0

    iget-object p0, p0, Lcp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->g(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    return-void
.end method
