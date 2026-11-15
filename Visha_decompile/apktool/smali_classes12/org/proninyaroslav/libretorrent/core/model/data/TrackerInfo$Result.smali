.class Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;->c:Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;->a:I

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo$Result;->b:Ljava/lang/String;

    return-void
.end method
