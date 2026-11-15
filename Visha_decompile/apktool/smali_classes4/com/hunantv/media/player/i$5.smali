.class Lcom/hunantv/media/player/i$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnGetFrameImageListener(Lcom/hunantv/media/player/d$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$f;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$f;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$5;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$5;->a:Lcom/hunantv/media/player/d$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/i$5;->a:Lcom/hunantv/media/player/d$f;

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/d$f;->a(Lcom/hunantv/media/player/d;II)V

    return-void
.end method

.method public a(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/i$5;->a:Lcom/hunantv/media/player/d$f;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d$f;->a(Lcom/hunantv/media/player/d;IILjava/lang/String;)V

    return-void
.end method
