.class public final synthetic Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/HomeFragment;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/HomeFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda0;->f$0:Lapp/fast/ssh/HomeFragment;

    iput-wide p2, p0, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda0;->f$0:Lapp/fast/ssh/HomeFragment;

    iget-wide v1, p0, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2, p1}, Lapp/fast/ssh/HomeFragment;->lambda$showLoading$7$app-fast-ssh-HomeFragment(JLandroid/content/DialogInterface;)V

    return-void
.end method
