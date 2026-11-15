.class Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field final synthetic b:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->b:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->c(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->b:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 23
    .line 24
    const-string v1, "timeout"

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 33
    .line 34
    const/16 v1, 0x7f

    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "MBridgeBaseView"

    .line 42
    .line 43
    const-string v1, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
