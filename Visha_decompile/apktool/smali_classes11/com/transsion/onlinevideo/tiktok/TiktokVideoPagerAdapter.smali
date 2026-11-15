.class public final Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"

# interfaces
.implements Ldja$a;
.implements Laja;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;,
        Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u009e\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u009f\u0001\u00a0\u0001B+\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001d\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J\r\u0010\u001d\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001d\u0010\u0017J\r\u0010\u001e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001e\u0010\u0017J\r\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001f\u0010\u0017J\u0017\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010 \u001a\u00020\u0012\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010)\u001a\u00020(2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010,\u001a\u00020\u00182\u0006\u0010+\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010.\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012\u00a2\u0006\u0004\u0008.\u0010/J\u001d\u00103\u001a\u00020\u000f2\u000e\u00102\u001a\n\u0012\u0004\u0012\u000201\u0018\u000100\u00a2\u0006\u0004\u00083\u00104J\u001d\u00105\u001a\u00020\u000f2\u000e\u00102\u001a\n\u0012\u0004\u0012\u000201\u0018\u000100\u00a2\u0006\u0004\u00085\u00104J\u0013\u00106\u001a\u0008\u0012\u0004\u0012\u00020100\u00a2\u0006\u0004\u00086\u00107J\u0017\u00108\u001a\u0004\u0018\u0001012\u0006\u0010 \u001a\u00020\u0012\u00a2\u0006\u0004\u00088\u00109J\u001d\u0010=\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u0012\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010?\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0015J\u000f\u0010@\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u001d\u0010C\u001a\u00020\u000f2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006H\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u001f\u0010G\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010F\u001a\u00020EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ%\u0010J\u001a\u00020\u000f2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u0012002\u0006\u0010F\u001a\u00020EH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0019\u0010M\u001a\u0004\u0018\u00010L2\u0006\u0010 \u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\u001f\u0010P\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u00122\u0006\u0010O\u001a\u00020LH\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\u001f\u0010R\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010F\u001a\u00020EH\u0016\u00a2\u0006\u0004\u0008R\u0010HJ\u0017\u0010S\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008S\u0010\u0015J\r\u0010T\u001a\u00020\u000f\u00a2\u0006\u0004\u0008T\u0010\u0017J\u0011\u0010U\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u0019\u0010X\u001a\u0004\u0018\u00010W2\u0006\u0010 \u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008X\u0010YJ\u0017\u0010[\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008[\u0010\u0015J\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\\\u0010\u0015J\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008]\u0010\u0015J\u0017\u0010^\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008^\u0010\u0015J\u0017\u0010_\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008_\u0010\u0015J\u0017\u0010a\u001a\u00020(2\u0006\u0010`\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008a\u0010*J\u000f\u0010b\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008b\u0010\u0017J\u001d\u0010d\u001a\u00020\u000f2\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006H\u0002\u00a2\u0006\u0004\u0008d\u0010DJ\u000f\u0010e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008e\u0010\u0017J\u001f\u0010g\u001a\u00020\u000f2\u000e\u0008\u0002\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006H\u0002\u00a2\u0006\u0004\u0008g\u0010DJ\u001f\u0010h\u001a\u00020\u000f2\u000e\u0008\u0002\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006H\u0002\u00a2\u0006\u0004\u0008h\u0010DJ\u000f\u0010i\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008i\u0010\u0017J\u0011\u0010k\u001a\u0004\u0018\u00010jH\u0002\u00a2\u0006\u0004\u0008k\u0010lJ\u000f\u0010m\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008m\u0010\u0017J/\u0010o\u001a\u00020\u000f2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00062\u0010\u0008\u0002\u0010n\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\'\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020q2\u000e\u0010n\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008s\u0010tJ\u0017\u0010u\u001a\u00020\u00182\u0006\u0010r\u001a\u00020qH\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u0011\u0010w\u001a\u0004\u0018\u00010qH\u0002\u00a2\u0006\u0004\u0008w\u0010xR\u001c\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010yR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010zR\u0014\u0010|\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010{R&\u0010\u0081\u0001\u001a\u0012\u0012\u0004\u0012\u0002010}j\u0008\u0012\u0004\u0012\u000201`~8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u0019\u0010\u0084\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0019\u0010\u0086\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0083\u0001R\u0019\u0010\u0088\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0083\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008d\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010dR\u0019\u0010\u008f\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u0083\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0083\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R$\u0010\u0099\u0001\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00060\u0096\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009a\u0001\u0010dR\u0013\u0010\u009d\u0001\u001a\u00020\u00128F\u00a2\u0006\u0007\u001a\u0005\u0008\u009c\u0001\u0010\'\u00a8\u0006\u00a1\u0001"
    }
    d2 = {
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "Ldja$a;",
        "Laja;",
        "Landroidx/fragment/app/Fragment;",
        "host",
        "Lkotlin/Function0;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPagerProvider",
        "Ldja;",
        "feedAdController",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Lc74;Ldja;)V",
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;",
        "listener",
        "Lzfb;",
        "setOnPagePlayListener",
        "(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;)V",
        "",
        "position",
        "r0",
        "(I)V",
        "t0",
        "()V",
        "",
        "force",
        "s0",
        "(IZ)V",
        "g0",
        "u0",
        "C0",
        "v0",
        "globalPosition",
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;",
        "c0",
        "(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;",
        "createFragment",
        "(I)Landroidx/fragment/app/Fragment;",
        "getItemCount",
        "()I",
        "",
        "getItemId",
        "(I)J",
        "itemId",
        "containsItem",
        "(J)Z",
        "f0",
        "(I)I",
        "",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;",
        "dataList",
        "N0",
        "(Ljava/util/List;)V",
        "J",
        "O0",
        "()Ljava/util/List;",
        "d0",
        "(I)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;",
        "Landroid/content/Context;",
        "context",
        "videoGlobalPosition",
        "w0",
        "(Landroid/content/Context;I)V",
        "q",
        "M",
        "()Z",
        "action",
        "a",
        "(Lc74;)V",
        "Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;",
        "reason",
        "f",
        "(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V",
        "removedPositions",
        "e",
        "(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V",
        "Lrka;",
        "m",
        "(I)Lrka;",
        "prefetched",
        "o",
        "(ILrka;)Z",
        "n",
        "p",
        "U",
        "B0",
        "()Ljava/lang/Integer;",
        "Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;",
        "a0",
        "(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;",
        "videoGlobalPos",
        "R0",
        "V",
        "S0",
        "X",
        "U0",
        "videoIndex",
        "W0",
        "k0",
        "mutation",
        "Z",
        "x0",
        "onHostNotified",
        "h0",
        "O",
        "P0",
        "Lyia;",
        "A0",
        "()Lyia;",
        "I0",
        "after",
        "E0",
        "(Lc74;Lc74;)V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recycler",
        "K0",
        "(Landroidx/recyclerview/widget/RecyclerView;Lc74;)V",
        "N",
        "(Landroidx/recyclerview/widget/RecyclerView;)Z",
        "b0",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "Lc74;",
        "Ldja;",
        "Landroidx/fragment/app/Fragment;",
        "hostFragment",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "r",
        "Ljava/util/ArrayList;",
        "videoDataList",
        "s",
        "I",
        "currentPlayPosition",
        "t",
        "cachePosition",
        "u",
        "cacheAdPosition",
        "v",
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;",
        "pagePlayListener",
        "w",
        "isMutatingAdSlots",
        "x",
        "pendingSelectPosition",
        "y",
        "pendingVideoSelectPosition",
        "Ljava/lang/Runnable;",
        "z",
        "Ljava/lang/Runnable;",
        "pendingSelectVideoRunnable",
        "Lhg;",
        "A",
        "Lhg;",
        "pendingAdMutations",
        "B",
        "skipNudgeOnNextAdSync",
        "e0",
        "videoCount",
        "C",
        "b",
        "c",
        "onlinevideo_release"
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
.field public static final C:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;


# instance fields
.field public final A:Lhg;

.field public B:Z

.field public final o:Lc74;

.field public final p:Ldja;

.field public final q:Landroidx/fragment/app/Fragment;

.field public final r:Ljava/util/ArrayList;

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;

.field public w:Z

.field public x:I

.field public y:I

.field public z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->C:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lc74;Ldja;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPagerProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedAdController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 5
    iput-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->o:Lc74;

    .line 6
    iput-object p3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    .line 7
    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    .line 10
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    .line 11
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    .line 12
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->x:I

    .line 13
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->y:I

    .line 14
    new-instance p1, Lhg;

    invoke-direct {p1}, Lhg;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->A:Lhg;

    .line 15
    invoke-virtual {p3, p0}, Ldja;->I(Ldja$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lc74;Ldja;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget-object p2, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$a;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$a;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    new-instance p3, Ldja;

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-direct {p3, p5, p4, p5}, Ldja;-><init>(Lbja;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;Lc74;Ldja;)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->J0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->L0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->V0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    return-void
.end method

.method public static synthetic D(Lc74;Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->R(Lc74;Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V

    return-void
.end method

.method public static final D0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->a(Lc74;)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->D0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->y0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->E0(Lc74;Lc74;)V

    return-void
.end method

.method public static synthetic G(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->S(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    return-void
.end method

.method public static final G0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->E0(Lc74;Lc74;)V

    return-void
.end method

.method public static synthetic H(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->T0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    return-void
.end method

.method public static final H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->E0(Lc74;Lc74;)V

    return-void
.end method

.method public static synthetic I(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->l0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final I0()V
    .locals 3

    new-instance v0, Lwma;

    invoke-direct {v0, p0}, Lwma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;ILjava/lang/Object;)V

    return-void
.end method

.method public static final J0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final K(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)Lzfb;
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lyma;

    invoke-direct {v1, p0, p1}, Lyma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-lez p1, :cond_2

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->k0()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final L(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->J(Ljava/util/List;)V

    return-void
.end method

.method public static final L0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->N(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Loma;

    invoke-direct {v0, p0, p1, p2}, Loma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final M0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->K0(Landroidx/recyclerview/widget/RecyclerView;Lc74;)V

    return-void
.end method

.method public static synthetic P(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lpma;

    invoke-direct {p1}, Lpma;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->O(Lc74;)V

    return-void
.end method

.method public static final Q()Lzfb;
    .locals 1

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method

.method public static final Q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lwn8;->k(III)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {p0, p2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s0(IZ)V

    return-void
.end method

.method public static final R(Lc74;Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V
    .locals 1

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w:Z

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->P0()V

    iget p0, p1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->x:I

    const/4 v0, -0x1

    iput v0, p1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->x:I

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    iget v0, p1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s0(IZ)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->x0()V

    return-void
.end method

.method public static final S(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->S0(I)V

    return-void
.end method

.method public static final T(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;
    .locals 1

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->U0(I)V

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final T0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, p1}, Ldja;->u(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->X(I)V

    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->a0(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    move-result-object v0

    const-string v2, "TiktokVideoPagerAdapter"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->P()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->h0(I)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->U()V

    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryDispatchCachedAdSelect ok (local prefetched): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v3, p1}, Ldja;->y(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, p1}, Ldja;->u(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->X(I)V

    :cond_4
    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    return-void

    :cond_5
    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->h0(I)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->U()V

    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryDispatchCachedAdSelect ok: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final V0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->v:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->I2(I)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->onSelectInViewPage()V

    :cond_2
    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    return-void
.end method

.method public static final W(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, p1}, Ldja;->u(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->X(I)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->a0(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "TiktokVideoPagerAdapter"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->P()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->h0(I)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->U()V

    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSelectAdPage ok (local prefetched): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v3, p1}, Ldja;->y(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, p1}, Ldja;->u(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->X(I)V

    :cond_4
    return-void

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->h0(I)V

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->U()V

    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSelectAdPage ok: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSelectAdPage deferred: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static final Y(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->z:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->y:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object v1

    const-string v2, "TiktokVideoPagerAdapter"

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->I2(I)V

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->onSelectInViewPage()V

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSelectVideoPage ok: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSelectVideoPage deferred: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->L(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->o0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->T(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->K(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->Y(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->j0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final j0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)Lzfb;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->O(Lc74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->Q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/viewpager2/widget/ViewPager2;I)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->z0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public static final l0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)Lzfb;
    .locals 3

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B:Z

    if-gt p1, v0, :cond_1

    if-ltz v0, :cond_1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    :cond_1
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    if-lt v0, p1, :cond_2

    if-ltz v0, :cond_2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    :cond_2
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    if-lt v0, p1, :cond_3

    if-ltz v0, :cond_3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    :cond_3
    new-instance v0, Lima;

    invoke-direct {v0, p1, p0}, Lima;-><init>(ILcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->h0(Lc74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final m0(ILcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdSlotInserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " itemCount="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokVideoPagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdSlotRemoved skip invalid pos="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoPagerAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->P(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;ILjava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    :cond_1
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    goto :goto_0

    :cond_2
    if-ge p1, v0, :cond_3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    :cond_3
    :goto_0
    new-instance v0, Lnma;

    invoke-direct {v0, p0, p1, p2}, Lnma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->h0(Lc74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final o0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->A0()Lyia;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lyia;->f(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdSlotRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " itemCount="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokVideoPagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final p0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B:Z

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Li81;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-ne v3, v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    iput v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    new-instance v0, Ltma;

    invoke-direct {v0, p0, p1, p2}, Ltma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->h0(Lc74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->A0()Lyia;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lyia;->e(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdSlotsBatchRemoved count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " itemCount="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokVideoPagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(ILcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->m0(ILcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->M0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->G0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->H0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->W(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    return-void
.end method

.method public static final y0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->M()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljma;

    invoke-direct {v1, p0, p1, p2}, Ljma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p0, p1, p2}, Ldja;->n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public static synthetic z()Lzfb;
    .locals 1

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->Q()Lzfb;

    move-result-object v0

    return-object v0
.end method

.method public static final z0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method


# virtual methods
.method public final A0()Lyia;
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    instance-of v0, p0, Lyia;

    if-eqz v0, :cond_0

    check-cast p0, Lyia;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final B0()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->o:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p0

    if-ge v0, p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final C0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->v:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;

    const-string v1, "TiktokVideoPagerAdapter"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "resumeCurrentPage skipped: playback not allowed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B0()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v2, v0}, Ldja;->u(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->V(I)V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->x1()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->y1()Z

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeCurrentPage via resumePlaybackOnVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", initialized="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->k2()V

    return-void

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s0(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final E0(Lc74;Lc74;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->b0()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->N(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->K0(Landroidx/recyclerview/widget/RecyclerView;Lc74;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lzma;

    invoke-direct {v1, p0, p1, p2}, Lzma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lana;

    invoke-direct {v1, p0, p1, p2}, Lana;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final J(Ljava/util/List;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lvma;

    invoke-direct {v0, p0, p1}, Lvma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final K0(Landroidx/recyclerview/widget/RecyclerView;Lc74;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lgma;

    invoke-direct {v0, p0, p1, p2}, Lgma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/recyclerview/widget/RecyclerView;Lc74;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->b0()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->N(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0
.end method

.method public final N(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final N0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p1}, Ldja;->B()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->I0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->k0()V

    return-void
.end method

.method public final O(Lc74;)V
    .locals 1

    new-instance v0, Lqma;

    invoke-direct {v0, p1, p0}, Lqma;-><init>(Lc74;Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final O0()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final P0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->o:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    if-ge v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    sub-int/2addr v1, v3

    invoke-static {v2, v4, v1}, Lwn8;->k(III)I

    move-result v2

    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-eq v1, v2, :cond_3

    iput-boolean v4, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B:Z

    invoke-virtual {v0, v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {p0, v2, v3}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s0(IZ)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B:Z

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncViewPagerAfterAdMutation: insert ahead, skip nudge target="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TiktokVideoPagerAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    add-int/lit8 v1, v2, -0x1

    invoke-static {v1, v4}, Lwn8;->d(II)I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-virtual {v0, v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_5
    new-instance v1, Lrma;

    invoke-direct {v1, p0, v0, v2}, Lrma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Landroidx/viewpager2/widget/ViewPager2;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final R0(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->f0(I)I

    move-result p1

    if-gez p1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p0

    invoke-virtual {v1, v0, p1, v2, p0}, Ldja;->A(Landroid/content/Context;III)V

    return-void
.end method

.method public final S0(I)V
    .locals 2

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Luma;

    invoke-direct {v1, p0, p1}, Luma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final U()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->x:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->A:Lhg;

    invoke-virtual {v0}, Lhg;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->v:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p0}, Ldja;->l()V

    return-void
.end method

.method public final U0(I)V
    .locals 2

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lxma;

    invoke-direct {v1, p0, p1}, Lxma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final V(I)V
    .locals 1

    new-instance v0, Lema;

    invoke-direct {v0, p0, p1}, Lema;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final W0(I)J
    .locals 1

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    goto :goto_1

    :cond_2
    :goto_0
    int-to-long p0, p1

    :goto_1
    return-wide p0

    :cond_3
    :goto_2
    int-to-long p0, p1

    return-wide p0
.end method

.method public final X(I)V
    .locals 2

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->y:I

    if-ne v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchSelectVideoPage coalesced: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokVideoPagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->y:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->z:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v1, Lbma;

    invoke-direct {v1, p0, p1}, Lbma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->z:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final Z(Lc74;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->A:Lhg;

    invoke-virtual {v0, p1}, Lhg;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->x0()V

    return-void
.end method

.method public a(Lc74;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->M()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ldma;

    invoke-direct {v1, p0, p1}, Ldma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->F0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;ILjava/lang/Object;)V

    return-void
.end method

.method public final a0(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    const-string v4, "position"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_3
    if-ne v3, p1, :cond_2

    return-object v0

    :cond_4
    return-object v1
.end method

.method public final b0()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->o:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    :cond_1
    return-object v0
.end method

.method public final c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v1, p1}, Ldja;->u(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    const-string v4, "position"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_4
    if-ne v3, p1, :cond_3

    return-object v1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public containsItem(J)Z
    .locals 5

    const-wide/32 v0, -0xf4240

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->C:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;

    invoke-static {v0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;->b(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;J)I

    move-result p1

    invoke-virtual {p0, p1}, Ldja;->s(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->W0(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, p1}, Ldja;->u(I)Z

    move-result v0

    const-string v1, "TiktokVideoPagerAdapter"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragment AD position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->B:Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment$a;->a(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->d0(Laja;)V

    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lama;

    invoke-direct {v2, p0, p1}, Lama;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->f0(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFragment VIDEO position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->m0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$a;

    invoke-virtual {v1, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$a;->a(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object p1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->x2(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V

    :cond_3
    new-instance v0, Llma;

    invoke-direct {v0, p0}, Llma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->A2(Le74;)V

    return-object p1
.end method

.method public final d0(I)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->f0(I)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 1

    const-string v0, "removedPositions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lsma;

    invoke-direct {v0, p0, p1, p2}, Lsma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Ljava/util/List;Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->Z(Lc74;)V

    return-void
.end method

.method public final e0()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public f(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lhma;

    invoke-direct {v0, p0, p1, p2}, Lhma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->Z(Lc74;)V

    return-void
.end method

.method public final f0(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, p1}, Ldja;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p0, p1}, Ldja;->k(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final g0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B0()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v1, v0}, Ldja;->u(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->B1()V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ldja;->j(I)I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 1

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v0, p1}, Ldja;->u(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p0, p1}, Ldja;->x(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->C:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;->a(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$b;I)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    int-to-long p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->f0(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->W0(I)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_3
    :goto_1
    int-to-long p0, p1

    return-wide p0
.end method

.method public final h0(Lc74;)V
    .locals 2

    new-instance v0, Lkma;

    invoke-direct {v0, p0}, Lkma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V

    new-instance v1, Lmma;

    invoke-direct {v1, p0, p1}, Lmma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->E0(Lc74;Lc74;)V

    return-void
.end method

.method public final k0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p0

    invoke-virtual {v1, v0, v2, p0}, Ldja;->z(Landroid/content/Context;II)V

    return-void
.end method

.method public m(I)Lrka;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p0, p1}, Ldja;->m(I)Lrka;

    move-result-object p0

    return-object p0
.end method

.method public n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfma;

    invoke-direct {v0, p0, p1, p2}, Lfma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public o(ILrka;)Z
    .locals 1

    const-string v0, "prefetched"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p0, p1, p2}, Ldja;->o(ILrka;)Z

    move-result p0

    return p0
.end method

.method public p(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p0, p1}, Ldja;->p(I)V

    return-void
.end method

.method public q(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcma;

    invoke-direct {v0, p0, p1}, Lcma;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;I)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->Z(Lc74;)V

    return-void
.end method

.method public final r0(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s0(IZ)V

    return-void
.end method

.method public final s0(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokVideoPagerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->x:I

    return-void

    :cond_0
    if-ltz p1, :cond_e

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->v:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;->c()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "onPageSelected skipped: playback not allowed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v2, p1}, Ldja;->u(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->y:I

    if-ne v2, p1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPageSelected force deduped: dispatch pending "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->x1()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->y1()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPageSelected force same page, resume scroll: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->h2()V

    return-void

    :cond_4
    iget v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ne p1, v2, :cond_7

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p2, p1}, Ldja;->u(I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->a0(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->Q()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->V(I)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object p2

    iget v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    if-gez v2, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->y1()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->x1()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPageSelected deduped: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ltz p2, :cond_9

    if-eq p2, p1, :cond_9

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v1, p2}, Ldja;->u(I)Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->a0(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->V()V

    goto :goto_0

    :cond_8
    iget p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->onUnSelectInViewPage()V

    :cond_9
    :goto_0
    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t:I

    iput p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->u:I

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {p2, p1}, Ldja;->u(I)Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;->a(I)V

    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->V(I)V

    return-void

    :cond_b
    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;->a(I)V

    :cond_c
    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;->b(I)V

    :cond_d
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->X(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->R0(I)V

    :cond_e
    :goto_1
    return-void
.end method

.method public final setOnPagePlayListener(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->v:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter$c;

    return-void
.end method

.method public final t0()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->o:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v1, v0}, Ldja;->u(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->a0(I)Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;

    move-result-object v1

    const-string v2, "TiktokVideoPagerAdapter"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->S()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewPagerScrollIdle: ad removal pending, skip "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewPagerScrollIdle: ad already selected and bound, skip "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewPagerScrollIdle: ad selected but not bound, retry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s0(IZ)V

    :cond_4
    return-void
.end method

.method public final u0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->B0()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v1, v0}, Ldja;->u(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->L1()V

    :cond_1
    return-void
.end method

.method public final v0()V
    .locals 2

    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    invoke-virtual {v1, v0}, Ldja;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->s:I

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->c0(I)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->P1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w0(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->f0(I)I

    move-result p2

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->p:Ldja;

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->getItemCount()I

    move-result p0

    invoke-virtual {v0, p1, p2, v1, p0}, Ldja;->A(Landroid/content/Context;III)V

    return-void
.end method

.method public final x0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->A:Lhg;

    invoke-virtual {v0}, Lhg;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w:Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->A:Lhg;

    invoke-virtual {p0}, Lhg;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
