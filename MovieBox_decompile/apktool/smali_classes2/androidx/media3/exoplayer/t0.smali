.class public final synthetic Landroidx/media3/exoplayer/t0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/t0;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/t0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->c(Landroid/content/Context;)Landroidx/media3/exoplayer/source/r$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
