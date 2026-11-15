.class Landroidx/media3/datasource/cronet/CronetDataSource$a;
.super Lorg/chromium/net/UrlRequest$StatusListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/datasource/cronet/CronetDataSource;->A(Lorg/chromium/net/UrlRequest;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Landroidx/media3/common/util/l;


# direct methods
.method constructor <init>([ILandroidx/media3/common/util/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->a:[I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->b:Landroidx/media3/common/util/l;

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$StatusListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->b:Landroidx/media3/common/util/l;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
