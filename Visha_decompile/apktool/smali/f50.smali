.class public final synthetic Lf50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

.field public final synthetic c:Lo74;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Lo74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf50;->b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iput-object p2, p0, Lf50;->c:Lo74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf50;->b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iget-object p0, p0, Lf50;->c:Lo74;

    invoke-static {v0, p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a(Landroidx/media3/common/util/BackgroundThreadStateHandler;Lo74;)V

    return-void
.end method
