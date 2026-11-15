.class public final synthetic Lkvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkvb;->a:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkvb;->a:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->b(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;Ljava/util/List;)V

    return-void
.end method
