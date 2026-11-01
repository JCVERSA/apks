.class public final synthetic Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/RewardedAdSyncController;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lapp/fast/ssh/RewardedAdSyncController$Ui;


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/RewardedAdSyncController;Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;->f$0:Lapp/fast/ssh/RewardedAdSyncController;

    iput-object p2, p0, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;->f$2:Lapp/fast/ssh/RewardedAdSyncController$Ui;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;->f$0:Lapp/fast/ssh/RewardedAdSyncController;

    iget-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lapp/fast/ssh/RewardedAdSyncController$$ExternalSyntheticLambda0;->f$2:Lapp/fast/ssh/RewardedAdSyncController$Ui;

    invoke-virtual {v0, v1, v2}, Lapp/fast/ssh/RewardedAdSyncController;->lambda$prefetch$1$app-fast-ssh-RewardedAdSyncController(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    return-void
.end method
