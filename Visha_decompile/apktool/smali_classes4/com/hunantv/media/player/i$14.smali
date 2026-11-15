.class Lcom/hunantv/media/player/i$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnBufferingTimeoutListener(Lcom/hunantv/media/player/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$a;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$14;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$14;->a:Lcom/hunantv/media/player/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;II)Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i$14;->a:Lcom/hunantv/media/player/d$a;

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/d$a;->a(Lcom/hunantv/media/player/d;II)Z

    move-result p0

    return p0
.end method
