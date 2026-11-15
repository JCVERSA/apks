.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:I = 0x12c


# instance fields
.field private final durationMillis:I

.field private isCrossFadeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    .line 2
    .line 3
    iget v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method
