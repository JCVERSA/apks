.class Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;->getMediaSource(Ljava/lang/String;ZZZLjava/io/File;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

.field final synthetic val$rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;Landroidx/media3/datasource/RawResourceDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager$1;->this$0:Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager$1;->val$rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager$1;->val$rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;

    return-object p0
.end method
