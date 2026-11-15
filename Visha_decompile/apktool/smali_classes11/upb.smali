.class public final synthetic Lupb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/VideoDataListModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/VideoDataListModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lupb;->b:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lupb;->b:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->a(Lcom/transsion/playercommon/videomodel/VideoDataListModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
