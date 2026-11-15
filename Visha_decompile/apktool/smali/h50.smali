.class public final synthetic Lh50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh50;->b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iput-object p2, p0, Lh50;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lh50;->b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iget-object p0, p0, Lh50;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->c(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    return-void
.end method
