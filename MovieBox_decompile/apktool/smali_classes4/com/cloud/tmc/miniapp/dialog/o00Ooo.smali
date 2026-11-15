.class public final Lcom/cloud/tmc/miniapp/dialog/o00Ooo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o00Ooo;",
        ">;",
        "Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field public OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo000o;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;


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
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo$OooO00o;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/o00Ooo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0O0:Lkotlin/Lazy;

    .line 19
    .line 20
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->layout_image_album_dialog:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_BOTTOM()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/o00O0O;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO00o()Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo000o;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    invoke-interface {v0, v1, p1, v2}, Lcom/cloud/tmc/miniapp/dialog/oo000o;->onSelected(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;ILcom/cloud/tmc/miniapp/dialog/o00Oo0;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    return-void
.end method


# virtual methods
.method public final OooO00o()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public createDialog(Landroid/content/Context;I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 22
    .line 23
    div-int/lit8 p2, p2, 0x2

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P0(I)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    .line 22
    .line 23
    iget-boolean v0, p2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p2, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    .line 31
    .line 32
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    .line 40
    .line 41
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/k;

    .line 47
    .line 48
    invoke-direct {p1, p0, p3}, Lcom/cloud/tmc/miniapp/dialog/k;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;I)V

    .line 49
    .line 50
    .line 51
    const-wide/16 p2, 0x12c

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->postDelayed(Ljava/lang/Runnable;J)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
