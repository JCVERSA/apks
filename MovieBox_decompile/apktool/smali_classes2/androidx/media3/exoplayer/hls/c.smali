.class public final Landroidx/media3/exoplayer/hls/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/hls/f;


# instance fields
.field private final a:Landroidx/media3/datasource/a$a;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/c;->a:Landroidx/media3/datasource/a$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/media3/datasource/a;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/c;->a:Landroidx/media3/datasource/a$a;

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/media3/datasource/a$a;->createDataSource()Landroidx/media3/datasource/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
