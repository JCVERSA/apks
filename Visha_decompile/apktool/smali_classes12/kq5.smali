.class public final synthetic Lkq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/logger/Logger;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger;Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq5;->b:Lorg/proninyaroslav/libretorrent/core/logger/Logger;

    iput-object p2, p0, Lkq5;->c:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lkq5;->b:Lorg/proninyaroslav/libretorrent/core/logger/Logger;

    iget-object p0, p0, Lkq5;->c:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->a(Lorg/proninyaroslav/libretorrent/core/logger/Logger;Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V

    return-void
.end method
