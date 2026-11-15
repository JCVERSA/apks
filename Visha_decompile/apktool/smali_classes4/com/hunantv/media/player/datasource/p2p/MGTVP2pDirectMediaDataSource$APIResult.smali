.class Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APIResult"
.end annotation


# instance fields
.field public costMs:J

.field public ret:J

.field final synthetic this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;


# direct methods
.method private constructor <init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    iput-wide v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->costMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;-><init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->ret:J

    iput-wide v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$APIResult;->costMs:J

    return-void
.end method
