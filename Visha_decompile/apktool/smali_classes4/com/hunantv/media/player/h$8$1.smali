.class Lcom/hunantv/media/player/h$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmSession$OnProvisionSuccessListener;


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

    iput-object p1, p0, Lcom/hunantv/media/player/h$8$1;->a:Lcom/hunantv/media/player/h$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/hunantv/media/drm/IDrmSession;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/h$8$1;->a:Lcom/hunantv/media/player/h$8;

    iget-object p0, p0, Lcom/hunantv/media/player/h$8;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->E()V

    return-void
.end method
