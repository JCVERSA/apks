.class Lcom/hunantv/media/player/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/a/d;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a/d$1;->a:Lcom/hunantv/media/player/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateIPs(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/a/d$1;->a:Lcom/hunantv/media/player/a/d;

    invoke-static {v0}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d;)Lcom/hunantv/media/player/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/a/d$1;->a:Lcom/hunantv/media/player/a/d;

    invoke-static {p0}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d;)Lcom/hunantv/media/player/a/d$b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/a/d$b;->updateIPs(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
