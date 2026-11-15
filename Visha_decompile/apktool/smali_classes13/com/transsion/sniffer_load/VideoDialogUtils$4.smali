.class Lcom/transsion/sniffer_load/VideoDialogUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$mediaItems:Ljava/util/List;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$onAddlistFinish:Lcom/transsion/sniffer_load/b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/sniffer_load/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/VideoDialogUtils$4;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/sniffer_load/VideoDialogUtils$4;->val$mediaItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/VideoDialogUtils$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltpb;->f(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v2}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    iget-object v3, p0, Lcom/transsion/sniffer_load/VideoDialogUtils$4;->val$name:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    iput v0, v2, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/VideoDialogUtils$4;->val$mediaItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/transsion/sniffer_load/b;->d(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;Lcom/transsion/sniffer_load/b$a;)V

    return-void
.end method
