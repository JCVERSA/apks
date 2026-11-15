.class public Lcom/hunantv/media/player/d/a$b;
.super Lcom/hunantv/media/player/d/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(ZI)V
    .locals 8

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hunantv/media/player/d/a$a;-><init>(IIIIIII)V

    return-void
.end method
