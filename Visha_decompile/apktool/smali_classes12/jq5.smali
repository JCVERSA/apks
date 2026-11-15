.class public final synthetic Ljq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/logger/Logger;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljq5;->b:Lorg/proninyaroslav/libretorrent/core/logger/Logger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ljq5;->b:Lorg/proninyaroslav/libretorrent/core/logger/Logger;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->b(Lorg/proninyaroslav/libretorrent/core/logger/Logger;)V

    return-void
.end method
