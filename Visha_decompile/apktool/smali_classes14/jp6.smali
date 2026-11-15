.class public final synthetic Ljp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/authbase/c;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V
    .locals 0

    iget-object p0, p0, Ljp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->j(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Lcom/mgtv/ssp/MgSspLoginStatusReceiver;)V

    return-void
.end method
