.class public final synthetic Lmp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->l(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Ljava/lang/String;)V

    return-void
.end method
