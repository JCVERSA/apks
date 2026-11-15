.class public final Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOO0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOO0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oO:Lcom/cloud/tmc/miniapp/dialog/OooO0o;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "Cancel"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->getEnable()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOO0;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/dialog/OooOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/dialog/OooOO0O;

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-interface {p2, p3, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOO0O;->OooO00o(ILcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method
