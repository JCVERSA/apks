.class Lcom/hunantv/media/player/h$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmSession$OnProvisionErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/h$8;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/h$8;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h$8;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$8$2;->a:Lcom/hunantv/media/player/h$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/hunantv/media/drm/IDrmSession;ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hunantv/media/drm/IDrmSession;->getErrorWhat()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x61da2

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/player/h$8$2;->a:Lcom/hunantv/media/player/h$8;

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->d(II)V

    return-void
.end method
