.class public final synthetic Lhp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoStartedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    return-void
.end method


# virtual methods
.method public final OnVideoStarted()V
    .locals 0

    iget-object p0, p0, Lhp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->m(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V

    return-void
.end method
