.class public final synthetic Lxz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/NetworkTypeObserver;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxz6;->b:Landroidx/media3/common/util/NetworkTypeObserver;

    iput-object p2, p0, Lxz6;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxz6;->b:Landroidx/media3/common/util/NetworkTypeObserver;

    iget-object p0, p0, Lxz6;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroidx/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V

    return-void
.end method
