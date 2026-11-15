.class Lcom/hunantv/media/player/i$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnInfoStringListener(Lcom/hunantv/media/player/d$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$h;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$13;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$13;->a:Lcom/hunantv/media/player/d$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;ILjava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i$13;->a:Lcom/hunantv/media/player/d$h;

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/d$h;->a(Lcom/hunantv/media/player/d;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
