.class public abstract Ly2/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/x$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly2/i;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic a(Landroidx/media3/common/v$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/w;->c(Landroidx/media3/common/x$a;Landroidx/media3/common/v$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/w;->a(Landroidx/media3/common/x$a;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Landroidx/media3/common/r;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/w;->b(Landroidx/media3/common/x$a;)Landroidx/media3/common/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
