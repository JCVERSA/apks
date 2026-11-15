.class public final synthetic Landroidx/media3/common/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/a;->b:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/a;->b:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    invoke-static {p0}, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->a(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V

    return-void
.end method
