.class public final synthetic Lgc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgc1;->b:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    iput p2, p0, Lgc1;->c:I

    iput-object p3, p0, Lgc1;->d:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgc1;->b:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    iget v1, p0, Lgc1;->c:I

    iget-object p0, p0, Lgc1;->d:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    invoke-static {v0, v1, p0}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->c(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    return-void
.end method
