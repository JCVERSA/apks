.class Lcom/hunantv/media/player/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$k;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$k;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$1;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$1;->a:Lcom/hunantv/media/player/d$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/i$1;->a:Lcom/hunantv/media/player/d$k;

    iget-object p0, p0, Lcom/hunantv/media/player/i$1;->b:Lcom/hunantv/media/player/i;

    invoke-interface {p1, p0}, Lcom/hunantv/media/player/d$k;->a(Lcom/hunantv/media/player/d;)V

    return-void
.end method
