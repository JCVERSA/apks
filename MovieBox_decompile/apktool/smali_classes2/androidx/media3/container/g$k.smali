.class public final Landroidx/media3/container/g$k;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public final a:Landroidx/media3/container/g$b;

.field public final b:Lcom/google/common/collect/ImmutableList;

.field public final c:Landroidx/media3/container/g$d;

.field public final d:Landroidx/media3/container/g$f;

.field public final e:Landroidx/media3/container/g$j;


# direct methods
.method public constructor <init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/container/g$k;->a:Landroidx/media3/container/g$b;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    iput-object p1, p0, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 18
    .line 19
    iput-object p3, p0, Landroidx/media3/container/g$k;->c:Landroidx/media3/container/g$d;

    .line 20
    .line 21
    iput-object p4, p0, Landroidx/media3/container/g$k;->d:Landroidx/media3/container/g$f;

    .line 22
    .line 23
    iput-object p5, p0, Landroidx/media3/container/g$k;->e:Landroidx/media3/container/g$j;

    .line 24
    .line 25
    return-void
.end method
