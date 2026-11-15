.class public Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/logger/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSetChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;-><init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;->b:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    return-void
.end method
