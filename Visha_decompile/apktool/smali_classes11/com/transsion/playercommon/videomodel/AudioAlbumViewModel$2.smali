.class Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

.field final synthetic val$id:I


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$2;->this$0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iput p2, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$2;->val$id:I

    invoke-virtual {v0, v1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$2;->this$0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
