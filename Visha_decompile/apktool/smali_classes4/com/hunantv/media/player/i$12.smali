.class Lcom/hunantv/media/player/i$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnInfoListener(Lcom/hunantv/media/player/d$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$g;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$g;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$12;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$12;->a:Lcom/hunantv/media/player/d$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;II)Z
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/i$12;->a:Lcom/hunantv/media/player/d$g;

    iget-object p0, p0, Lcom/hunantv/media/player/i$12;->b:Lcom/hunantv/media/player/i;

    invoke-interface {p1, p0, p2, p3}, Lcom/hunantv/media/player/d$g;->a(Lcom/hunantv/media/player/d;II)Z

    move-result p0

    return p0
.end method
