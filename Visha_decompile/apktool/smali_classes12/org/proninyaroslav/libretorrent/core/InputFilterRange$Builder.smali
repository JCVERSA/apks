.class public Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/InputFilterRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/proninyaroslav/libretorrent/core/InputFilterRange;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "max < min"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->a:Ljava/lang/Integer;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->b:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/proninyaroslav/libretorrent/core/InputFilterRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ly05;)V

    return-object v0
.end method

.method public b(I)Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(I)Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/InputFilterRange$Builder;->a:Ljava/lang/Integer;

    return-object p0
.end method
