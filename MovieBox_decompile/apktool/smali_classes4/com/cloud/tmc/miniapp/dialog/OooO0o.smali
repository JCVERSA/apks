.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0o;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO0O0;

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO00o:Lkotlin/Lazy;

    .line 16
    .line 17
    const-string p1, "text"

    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0O0:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method
