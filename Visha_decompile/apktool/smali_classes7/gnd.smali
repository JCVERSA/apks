.class public Lgnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfkd$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lt2d;


# direct methods
.method public constructor <init>(Lt2d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgnd;->a:Ljava/lang/Object;

    iput-object p1, p0, Lgnd;->b:Lt2d;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lgnd;->b:Lt2d;

    iget-object p0, p0, Lgnd;->a:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lt2d;->a(Ljava/lang/Object;Ljava/io/File;J)Z

    move-result p0

    return p0
.end method
