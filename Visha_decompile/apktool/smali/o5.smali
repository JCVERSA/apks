.class public final synthetic Lo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/activity/result/ActivityResultCallback;

.field public final synthetic e:Landroidx/activity/result/contract/ActivityResultContract;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5;->b:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Lo5;->c:Ljava/lang/String;

    iput-object p3, p0, Lo5;->d:Landroidx/activity/result/ActivityResultCallback;

    iput-object p4, p0, Lo5;->e:Landroidx/activity/result/contract/ActivityResultContract;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    iget-object v0, p0, Lo5;->b:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, p0, Lo5;->c:Ljava/lang/String;

    iget-object v2, p0, Lo5;->d:Landroidx/activity/result/ActivityResultCallback;

    iget-object v3, p0, Lo5;->e:Landroidx/activity/result/contract/ActivityResultContract;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/activity/result/ActivityResultRegistry;->a(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
