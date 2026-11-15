.class Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->onResult(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1$1;->this$1:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1$1;->this$1:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->this$0:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
