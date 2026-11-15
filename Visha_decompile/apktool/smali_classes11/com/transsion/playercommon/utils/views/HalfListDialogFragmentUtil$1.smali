.class Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$1;->b:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$1;->b:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->b(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;)Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$1;->b:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->b(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;)Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;->onDismiss()V

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x431

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
