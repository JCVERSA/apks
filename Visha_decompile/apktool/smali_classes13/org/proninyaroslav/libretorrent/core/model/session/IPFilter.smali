.class interface abstract Lorg/proninyaroslav/libretorrent/core/model/session/IPFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addRange(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;
        }
    .end annotation
.end method
