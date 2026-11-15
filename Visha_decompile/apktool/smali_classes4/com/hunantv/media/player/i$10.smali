.class Lcom/hunantv/media/player/i$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/i;->setOnVideoSizeChangedListener(Lcom/hunantv/media/player/d$s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/d$s;

.field final synthetic b:Lcom/hunantv/media/player/i;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$s;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/i$10;->b:Lcom/hunantv/media/player/i;

    iput-object p2, p0, Lcom/hunantv/media/player/i$10;->a:Lcom/hunantv/media/player/d$s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/hunantv/media/player/i$10;->a:Lcom/hunantv/media/player/d$s;

    iget-object v1, p0, Lcom/hunantv/media/player/i$10;->b:Lcom/hunantv/media/player/i;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/hunantv/media/player/d$s;->a(Lcom/hunantv/media/player/d;IIII)V

    return-void
.end method
