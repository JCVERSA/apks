.class public Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/logger/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewFilter"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;->b:Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;

    return-void
.end method
