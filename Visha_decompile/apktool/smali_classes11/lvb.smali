.class public final synthetic Llvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llvb;->b:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object p2, p0, Llvb;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llvb;->b:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iget-object p0, p0, Llvb;->c:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->a(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;Ljava/util/List;)V

    return-void
.end method
