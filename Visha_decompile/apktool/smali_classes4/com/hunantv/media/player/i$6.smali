.class Lcom/hunantv/media/player/i$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnDrmListener(Lcom/hunantv/media/player/d$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$d;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$d;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$6;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$6;->a:Lcom/hunantv/media/player/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/i$6;->a:Lcom/hunantv/media/player/d$d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d$d;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/i$6;->a:Lcom/hunantv/media/player/d$d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d$d;->a([B)V

    return-void
.end method
