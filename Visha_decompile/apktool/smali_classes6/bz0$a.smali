.class public final Lbz0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbz0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbz0;)Lcom/lzy/okgo/model/Progress;
    .locals 3

    const-string v0, "cloudDowningItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    invoke-virtual {p1}, Lbz0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbz0$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-static {}, Lr13;->e()Lr13;

    move-result-object p0

    invoke-virtual {p0}, Lr13;->d()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    iget-wide v1, p1, Lbz0;->d:J

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {p1}, Lbz0;->f()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    const/4 p0, 0x1

    iput p0, v0, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    invoke-virtual {p1}, Lbz0;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->cloudFileId:Ljava/lang/String;

    invoke-virtual {p1}, Lbz0;->g()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    iget-object p0, p1, Lbz0;->h:Ljava/lang/String;

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "cloudFileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
