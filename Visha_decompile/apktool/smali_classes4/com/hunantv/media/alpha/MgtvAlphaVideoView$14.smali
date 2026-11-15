.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvAlphaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$14;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$14;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mgtvcore onStart"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$14;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$2600(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$14;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$2700(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)V

    :cond_0
    return-void
.end method
