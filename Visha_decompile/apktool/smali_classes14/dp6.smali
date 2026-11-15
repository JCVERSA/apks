.class public final synthetic Ldp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/MgSspInitCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

.field public final synthetic b:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    iput-object p2, p0, Ldp6;->b:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ldp6;->a:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    iget-object p0, p0, Ldp6;->b:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->d(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;ILjava/lang/String;)V

    return-void
.end method
