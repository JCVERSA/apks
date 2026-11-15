.class public final Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Lzfb;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "l",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lcom/transsion/playercommon/share/model/ShareContent;",
        "m",
        "Lcom/transsion/playercommon/share/model/ShareContent;",
        "shareContent",
        "n",
        "a",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final n:Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog$a;


# instance fields
.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Lcom/transsion/playercommon/share/model/ShareContent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;->n:Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;->v(Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)Lzfb;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;->m:Lcom/transsion/playercommon/share/model/ShareContent;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/playercommon/share/ShareManager;->a:Lcom/transsion/playercommon/share/ShareManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;->getOption()Lcom/transsion/playercommon/share/model/ShareOption;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/transsion/playercommon/share/ShareManager;->e(Landroid/content/Context;Lcom/transsion/playercommon/share/model/ShareContent;Lcom/transsion/playercommon/share/model/ShareOption;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p0, "inflater"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/transsion/playercommon/R$layout;->fragment_share:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/playercommon/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "arg_share_content"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/share/model/ShareContent;

    iput-object p1, p0, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;->m:Lcom/transsion/playercommon/share/model/ShareContent;

    :cond_0
    sget-object p1, Lcom/transsion/playercommon/share/ShareManager;->a:Lcom/transsion/playercommon/share/ShareManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/share/ShareManager;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;

    new-instance v0, Lfg9;

    invoke-direct {v0, p0}, Lfg9;-><init>(Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;)V

    invoke-direct {p2, p1, v0}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;-><init>(Ljava/util/List;Le74;)V

    iget-object p1, p0, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const-string v1, "recyclerView"

    if-nez p1, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p0, p0, Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_2

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
