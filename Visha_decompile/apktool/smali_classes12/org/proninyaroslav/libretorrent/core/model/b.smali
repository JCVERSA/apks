.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Llb1;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Llb1;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/b;->b:Llb1;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/b;->b:Llb1;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/b;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->a(Llb1;Ljava/util/ArrayList;)V

    return-void
.end method
