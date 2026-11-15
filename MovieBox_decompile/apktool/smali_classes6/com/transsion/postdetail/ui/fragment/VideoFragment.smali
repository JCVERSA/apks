.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Lim/f;
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lwn/o;",
        ">;",
        "Lim/f;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00de\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u009f\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002\u00a0\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u000f\u0010\r\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0006J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0006J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0006J\u000f\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0006J\u0017\u0010!\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0006J\u0017\u0010,\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0006J\u0017\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0019\u00106\u001a\u00020\u00072\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u00089\u0010:J!\u0010<\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00162\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u0008<\u0010=J!\u0010>\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00162\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u0008>\u0010=J\u000f\u0010?\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0006J\u000f\u0010@\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0006J\u000f\u0010A\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0006J\u0017\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008E\u0010\u0006J\u000f\u0010F\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008F\u0010\u0006J\u000f\u0010G\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0006J\u0017\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u000204H\u0016\u00a2\u0006\u0004\u0008I\u00107J\u000f\u0010J\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008J\u0010\u0006J\u0017\u0010M\u001a\u00020\u00072\u0006\u0010L\u001a\u00020KH\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010O\u001a\u00020\u00072\u0006\u0010L\u001a\u00020KH\u0016\u00a2\u0006\u0004\u0008O\u0010NJ1\u0010U\u001a\u00020\u00072\u0006\u0010P\u001a\u00020\u001f2\u0010\u0010R\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010#0Q2\u0006\u0010T\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008U\u0010VR\u0016\u0010W\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0016\u0010Y\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010XR\u0016\u0010Z\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010\\\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R$\u0010^\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010X\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR\u0016\u0010c\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010XR\u0016\u0010d\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010[R\u0016\u0010e\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010]R\u0016\u0010f\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010XR\u0018\u0010g\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010XR\u001b\u0010m\u001a\u00020h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\u001d\u0010r\u001a\u0004\u0018\u00010n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010j\u001a\u0004\u0008p\u0010qR\u0018\u0010t\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0018\u0010w\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0018\u0010z\u001a\u0004\u0018\u00010y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0018\u0010}\u001a\u0004\u0018\u00010|8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010~R\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0082\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010]R\u0018\u0010\u0083\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010]R\u0018\u0010\u0084\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010]R\u0018\u0010\u0085\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010]R/\u0010\u0088\u0001\u001a\u0018\u0012\u0004\u0012\u00020*\u0018\u00010\u0086\u0001j\u000b\u0012\u0004\u0012\u00020*\u0018\u0001`\u0087\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u0018\u0010\u008a\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008a\u0001\u0010]R\u0018\u0010\u008b\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010]R\u0018\u0010\u008c\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010[R\u0018\u0010\u008d\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008d\u0001\u0010[R\u0018\u0010\u008e\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008e\u0001\u0010]R\u0018\u0010\u008f\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008f\u0001\u0010[R#\u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u00020#0\u0090\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001R*\u0010\u0096\u0001\u001a\u00030\u0095\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001\"\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u001c\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001\u00a8\u0006\u00a1\u0001"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/VideoFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lwn/o;",
        "Lim/f;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initPlayer",
        "initAdapter",
        "initViewModel",
        "initBack",
        "initAudioListener",
        "observeRemoveVideo",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
        "subjectBean",
        "updateData",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V",
        "showNotNetError",
        "showEmpty",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "getEmptyView",
        "(Landroid/content/Context;)Landroid/view/View;",
        "getNotNetErrorView",
        "hideProgress",
        "showProgress",
        "loadMore",
        "loadData",
        "doLoadData",
        "",
        "it",
        "scrollToPosition",
        "(I)V",
        "",
        "itemType",
        "",
        "checkItemType",
        "(Ljava/lang/String;)Z",
        "localLogPause",
        "initAd",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "item",
        "setPTParams",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "initNonAd",
        "showSettingDialog",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lwn/o;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initData",
        "lazyLoadData",
        "onResume",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "logPause",
        "logResume",
        "onDestroy",
        "outState",
        "onSaveInstanceState",
        "onMemberStateChange",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "mPostId",
        "Ljava/lang/String;",
        "mItemType",
        "mTabId",
        "I",
        "fromComment",
        "Z",
        "tran_ops",
        "getTran_ops",
        "()Ljava/lang/String;",
        "setTran_ops",
        "(Ljava/lang/String;)V",
        "mNextPage",
        "mPerPage",
        "videoLoadMore",
        "commentId",
        "pageFrom",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "mVideoViewModel$delegate",
        "Lkotlin/Lazy;",
        "getMVideoViewModel",
        "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "mVideoViewModel",
        "Lep/a;",
        "mAudioApi$delegate",
        "getMAudioApi",
        "()Lep/a;",
        "mAudioApi",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "mPagerLayoutManager",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "Lcom/transsion/postdetail/control/VideoPagerChangeControl;",
        "mPagerChangeControl",
        "Lcom/transsion/postdetail/control/VideoPagerChangeControl;",
        "Lcom/transsion/postdetail/ui/adapter/d;",
        "mAdapter",
        "Lcom/transsion/postdetail/ui/adapter/d;",
        "Lcom/transsion/player/orplayer/f;",
        "mOrPlayer",
        "Lcom/transsion/player/orplayer/f;",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "mOrPlayerView",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "isLoadingData",
        "isFirstLoadMore",
        "attachToMain",
        "needBackToRoom",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "downloadedShortsList",
        "Ljava/util/ArrayList;",
        "prioritizeDownloaded",
        "isFromDownloaded",
        "currentDownloadedIndex",
        "startDownloadedIndex",
        "hasShownOnlineToast",
        "savedCurrentIndex",
        "",
        "list",
        "Ljava/util/List;",
        "getList",
        "()Ljava/util/List;",
        "",
        "resumeTimeStamp",
        "J",
        "getResumeTimeStamp",
        "()J",
        "setResumeTimeStamp",
        "(J)V",
        "Lcom/transsion/ad/bidding/nativead/BiddingListManager;",
        "v3ListManager",
        "Lcom/transsion/ad/bidding/nativead/BiddingListManager;",
        "Companion",
        "a",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final CURRENT_INDEX:Ljava/lang/String; = "CURRENT_INDEX"

.field public static final Companion:Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;

.field public static final PAGE_NAME:Ljava/lang/String; = "postdetail_video"


# instance fields
.field private attachToMain:Z

.field private commentId:Ljava/lang/String;

.field private currentDownloadedIndex:I

.field private downloadedShortsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
            ">;"
        }
    .end annotation
.end field

.field private fromComment:Z

.field private hasShownOnlineToast:Z

.field private isFirstLoadMore:Z

.field private isFromDownloaded:Z

.field private isLoadingData:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

.field private final mAudioApi$delegate:Lkotlin/Lazy;

.field private mItemType:Ljava/lang/String;

.field private mNextPage:Ljava/lang/String;

.field private mOrPlayer:Lcom/transsion/player/orplayer/f;

.field private mOrPlayerView:Lcom/transsion/player/ui/ORPlayerView;

.field private mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

.field private mPagerLayoutManager:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private mPerPage:I

.field private mPostId:Ljava/lang/String;

.field private mTabId:I

.field private final mVideoViewModel$delegate:Lkotlin/Lazy;

.field private needBackToRoom:Z

.field private pageFrom:Ljava/lang/String;

.field private prioritizeDownloaded:Z

.field private resumeTimeStamp:J

.field private savedCurrentIndex:I

.field private startDownloadedIndex:I

.field private tran_ops:Ljava/lang/String;

.field private v3ListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

.field private videoLoadMore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mItemType:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mNextPage:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    iput v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPerPage:I

    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->commentId:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$special$$inlined$viewModels$default$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/VideoFragment$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/VideoFragment$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    invoke-direct {v3, v0, p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mVideoViewModel$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/c6;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/c6;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAudioApi$delegate:Lkotlin/Lazy;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isFirstLoadMore:Z

    .line 59
    .line 60
    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->currentDownloadedIndex:I

    .line 62
    .line 63
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->savedCurrentIndex:I

    .line 64
    .line 65
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->list:Ljava/util/List;

    .line 76
    .line 77
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initViewModel$lambda$10(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getDownloadedShortsList$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->hasShownOnlineToast:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/postdetail/ui/adapter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMOrPlayer$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/player/orplayer/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayer:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMPagerChangeControl$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/postdetail/control/VideoPagerChangeControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMVideoViewModel(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getNeedBackToRoom$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->needBackToRoom:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getStartDownloadedIndex$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->startDownloadedIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isFromDownloaded$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isFromDownloaded:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$loadData(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$loadMore(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->hasShownOnlineToast:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->observeRemoveVideo$lambda$13$lambda$12(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initAdapter$lambda$7$lambda$6(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkItemType(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->list:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public static synthetic d0(Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getNotNetErrorView$lambda$23$lambda$21(Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final doLoadData()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isLoadingData:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->prioritizeDownloaded:Z

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->currentDownloadedIndex:I

    .line 24
    .line 25
    add-int/2addr v2, v0

    .line 26
    iput v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->currentDownloadedIndex:I

    .line 27
    .line 28
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ge v2, v3, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->currentDownloadedIndex:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "get(...)"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 56
    .line 57
    new-instance v3, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 58
    .line 59
    new-array v0, v0, [Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-direct {v3, v0, v1, v1, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Group;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v3}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->prioritizeDownloaded:Z

    .line 76
    .line 77
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isLoadingData:Z

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 84
    .line 85
    iget v6, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mTabId:I

    .line 86
    .line 87
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mNextPage:Ljava/lang/String;

    .line 88
    .line 89
    iget v8, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPerPage:I

    .line 90
    .line 91
    iget-boolean v9, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->videoLoadMore:Z

    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->attachToMain:Z

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_5

    .line 104
    .line 105
    :cond_4
    move v10, v0

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    move v10, v1

    .line 108
    :goto_1
    invoke-virtual/range {v4 .. v10}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->u(Ljava/lang/String;ILjava/lang/String;IZI)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initViewModel$lambda$8(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->observeRemoveVideo$lambda$13(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getNotNetErrorView$lambda$23$lambda$22()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getEmptyView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Lcom/tn/lib/view/DefaultView;

    .line 2
    .line 3
    sget-object v1, Lcom/tn/lib/view/DefaultView$ModelStyle;->MODEL_STYLE_NIGHT:Lcom/tn/lib/view/DefaultView$ModelStyle;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;Lcom/tn/lib/view/DefaultView$ModelStyle;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setDefaultImageViewVisibility(I)V

    .line 24
    .line 25
    .line 26
    sget v2, Lcom/tn/lib/widget/R$mipmap;->ic_no_content:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/DefaultView;->setDefaultImage(I)V

    .line 29
    .line 30
    .line 31
    sget v2, Lcom/tn/lib/widget/R$string;->no_content:I

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "getString(...)"

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/DefaultView;->setDescText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Lcom/tn/lib/view/DefaultView$DefaultViewStyle;->STYLE_IMAGE_DESC_BTN:Lcom/tn/lib/view/DefaultView$DefaultViewStyle;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/DefaultView;->setStyle(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setBtnVisibility(I)V

    .line 51
    .line 52
    .line 53
    sget v2, Lcom/transsion/baseui/R$string;->retry_text:I

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/tn/lib/view/DefaultView;->setBtnText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/transsion/postdetail/ui/fragment/d6;

    .line 66
    .line 67
    invoke-direct {p1, p0, v0}, Lcom/transsion/postdetail/ui/fragment/d6;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/tn/lib/view/DefaultView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/tn/lib/view/DefaultView;->setBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method private static final getEmptyView$lambda$20$lambda$19(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x8

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final getMAudioApi()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAudioApi$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mVideoViewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getNotNetErrorView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Luf/c;->e(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsion/postdetail/ui/fragment/r5;

    .line 10
    .line 11
    invoke-direct {p1, v0, p0}, Lcom/transsion/postdetail/ui/fragment/r5;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;->retry(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/transsion/postdetail/ui/fragment/s5;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/transsion/postdetail/ui/fragment/s5;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;->goToSetting(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "postdetail_video"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/tn/lib/view/o;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final getNotNetErrorView$lambda$23$lambda$21(Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->showProgress()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadData()V

    .line 8
    .line 9
    .line 10
    const-string p0, "postdetail_video"

    .line 11
    .line 12
    invoke-static {p0}, Lcom/tn/lib/view/o;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final getNotNetErrorView$lambda$23$lambda$22()Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "postdetail_video"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tn/lib/view/o;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initBack$lambda$11(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final hideProgress()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/o;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lwn/o;->c:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getEmptyView$lambda$20$lambda$19(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initAd()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->v3ListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lwn/o;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->F(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->v3ListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->A(Lkotlinx/coroutines/n0;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->v3ListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-string v1, "VideoForYouListScene"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->G(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->v3ListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/u5;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/u5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->z(Lkotlin/jvm/functions/Function2;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method private static final initAd$lambda$28(Lcom/transsion/postdetail/ui/fragment/VideoFragment;ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lkotlin/Unit;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "current"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    new-instance v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    const/16 v39, 0x1

    .line 18
    .line 19
    const/16 v40, 0x0

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v13, 0x0

    .line 30
    const/4 v14, 0x0

    .line 31
    const/4 v15, 0x0

    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    const/16 v18, 0x0

    .line 37
    .line 38
    const/16 v19, 0x0

    .line 39
    .line 40
    const/16 v20, 0x0

    .line 41
    .line 42
    const/16 v21, 0x0

    .line 43
    .line 44
    const/16 v22, 0x0

    .line 45
    .line 46
    const/16 v23, 0x0

    .line 47
    .line 48
    const/16 v24, 0x0

    .line 49
    .line 50
    const/16 v25, 0x0

    .line 51
    .line 52
    const/16 v26, 0x0

    .line 53
    .line 54
    const/16 v27, 0x0

    .line 55
    .line 56
    const/16 v28, 0x0

    .line 57
    .line 58
    const/16 v29, 0x0

    .line 59
    .line 60
    const/16 v30, 0x0

    .line 61
    .line 62
    const/16 v31, 0x0

    .line 63
    .line 64
    const/16 v32, 0x0

    .line 65
    .line 66
    const/16 v33, 0x0

    .line 67
    .line 68
    const/16 v34, 0x0

    .line 69
    .line 70
    const/16 v35, 0x0

    .line 71
    .line 72
    const/16 v36, 0x0

    .line 73
    .line 74
    const/16 v37, 0x0

    .line 75
    .line 76
    const/16 v38, -0x1

    .line 77
    .line 78
    invoke-direct/range {v4 .. v40}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setNonAdDelegate(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 85
    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const/4 v2, 0x0

    .line 100
    :goto_0
    if-gt v1, v2, :cond_1

    .line 101
    .line 102
    iget-object v0, v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object v0
.end method

.method private final initAdapter()V
    .locals 11

    .line 1
    new-instance v10, Lcom/transsion/postdetail/ui/adapter/d;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->videoLoadMore:Z

    .line 9
    .line 10
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mItemType:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v6, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->attachToMain:Z

    .line 15
    .line 16
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->commentId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->pageFrom:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    :cond_0
    move-object v8, v0

    .line 25
    iget-boolean v9, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isFromDownloaded:Z

    .line 26
    .line 27
    move-object v0, v10

    .line 28
    move-object v2, p0

    .line 29
    invoke-direct/range {v0 .. v9}, Lcom/transsion/postdetail/ui/adapter/d;-><init>(Ljava/util/List;Landroidx/fragment/app/Fragment;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v10}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->videoLoadMore:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lt6/f;->z(Z)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->videoLoadMore:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v10}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/transsion/postdetail/ui/view/ImmVideoLoadMoreView;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoLoadMoreView;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lt6/f;->C(Ls6/a;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Lt6/f;->z(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Lt6/f;->y(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-virtual {v0, v1}, Lt6/f;->E(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/t5;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/t5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lt6/f;->D(Lr6/f;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iput-object v10, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 93
    .line 94
    return-void
.end method

.method private static final initAdapter$lambda$7$lambda$6(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 5

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->prioritizeDownloaded:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v1, v2

    .line 26
    :goto_1
    const-wide/16 v3, 0x1f4

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lwn/o;

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/y5;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/y5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isFirstLoadMore:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isFirstLoadMore:Z

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadMore()V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lwn/o;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/x5;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/x5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_3
    return-void
.end method

.method private static final initAdapter$lambda$7$lambda$6$lambda$4(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final initAdapter$lambda$7$lambda$6$lambda$5(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isLoadingData:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final initAudioListener()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMAudioApi()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lep/a;->pause()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final initBack()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/o;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lwn/o;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lwn/o;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v0, v0, Lwn/o;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lwn/o;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, v0, Lwn/o;->f:Lcom/tn/lib/widget/TnTextView;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lwn/o;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, v0, Lwn/o;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/q5;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/q5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_1
    return-void
.end method

.method private static final initBack$lambda$11(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Landroid/view/View;)V
    .locals 7

    .line 1
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->needBackToRoom:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lep/k;->a:Lep/k;

    .line 6
    .line 7
    const/16 v5, 0xf

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v0 .. v6}, Lep/k;->i(Lep/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final initNonAd()V
    .locals 0

    .line 1
    return-void
.end method

.method private final initPlayer()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/player/orplayer/f$a;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "requireContext(...)"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/transsion/player/orplayer/f$a;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lhn/d;

    .line 18
    .line 19
    move-object v4, v2

    .line 20
    const v23, 0x1efff

    .line 21
    .line 22
    .line 23
    const/16 v24, 0x0

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    const-wide/16 v13, 0x0

    .line 34
    .line 35
    const/4 v15, 0x0

    .line 36
    const/16 v16, 0x0

    .line 37
    .line 38
    const/16 v17, 0x0

    .line 39
    .line 40
    const/16 v18, 0x1

    .line 41
    .line 42
    const/16 v19, 0x0

    .line 43
    .line 44
    const/16 v20, 0x0

    .line 45
    .line 46
    const/16 v21, 0x0

    .line 47
    .line 48
    const/16 v22, 0x0

    .line 49
    .line 50
    invoke-direct/range {v4 .. v24}, Lhn/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/transsion/player/orplayer/f$a;->b(Lhn/d;)Lcom/transsion/player/orplayer/f$a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/transsion/player/orplayer/f$a;->a()Lcom/transsion/player/orplayer/f;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayer:Lcom/transsion/player/orplayer/f;

    .line 62
    .line 63
    new-instance v1, Lcom/transsion/player/ui/ORPlayerView;

    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "requireActivity(...)"

    .line 70
    .line 71
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v3, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    .line 75
    .line 76
    invoke-direct {v1, v2, v3}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayerView:Lcom/transsion/player/ui/ORPlayerView;

    .line 80
    .line 81
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayer:Lcom/transsion/player/orplayer/f;

    .line 82
    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v2, v1}, Lcom/transsion/player/orplayer/f;->setTextureView(Landroid/view/TextureView;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayer:Lcom/transsion/player/orplayer/f;

    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-void
.end method

.method private final initViewModel()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->v()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/z5;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/z5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->t()Landroidx/lifecycle/b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/a6;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/a6;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->attachToMain:Z

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->i()Landroidx/lifecycle/b0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/b6;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/b6;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;

    .line 63
    .line 64
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method private static final initViewModel$lambda$10(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "get cache "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v2, "postdetail_video"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 52
    .line 53
    check-cast p1, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, p1, v1, v1, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Group;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->showProgress()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadData()V

    .line 71
    .line 72
    .line 73
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p0
.end method

.method private static final initViewModel$lambda$8(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isLoadingData:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-nez p1, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 24
    .line 25
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->showEmpty()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->showNotNetError()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Lt6/f;->r()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ne p1, v0, :cond_4

    .line 54
    .line 55
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 56
    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lqi/b;->k(Z)V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method private static final initViewModel$lambda$9(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lgx/b;->a:Lgx/b$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lgx/b$a;->a()Lgx/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lgx/b;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget v0, Lcom/transsion/postdetail/R$string;->delete_post_failed:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1, p0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p0
.end method

.method public static synthetic j0()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAudioApi_delegate$lambda$0()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initAdapter$lambda$7$lambda$6$lambda$4(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initAd$lambda$28(Lcom/transsion/postdetail/ui/fragment/VideoFragment;ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final loadData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->doLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final loadMore()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final localLogPause()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lqi/b;->h()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    :goto_0
    sub-long/2addr v0, v2

    .line 19
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v3, "post_duration"

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->scrollToPosition$lambda$26(Lcom/transsion/postdetail/ui/fragment/VideoFragment;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final mAudioApi_delegate$lambda$0()Lep/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/a;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initViewModel$lambda$9(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initAdapter$lambda$7$lambda$6$lambda$5(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final observeRemoveVideo()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->C()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/v5;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/v5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final observeRemoveVideo$lambda$13(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->n()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lwn/o;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/w5;

    .line 41
    .line 42
    invoke-direct {v1, p0, p1}, Lcom/transsion/postdetail/ui/fragment/w5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :catchall_0
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private static final observeRemoveVideo$lambda$13$lambda$12(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/o;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v2, v3

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, p1

    .line 36
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v0, v1

    .line 49
    :goto_1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 63
    .line 64
    :cond_2
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f(IZLandroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method private final scrollToPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-gt v0, p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lwn/o;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lwn/o;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/p5;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1}, Lcom/transsion/postdetail/ui/fragment/p5;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method private static final scrollToPosition$lambda$26(Lcom/transsion/postdetail/ui/fragment/VideoFragment;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerLayoutManager:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->T()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ne v5, p1, :cond_1

    .line 30
    .line 31
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "initView\uff0c scrollToPosition \uff1a"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const/4 v10, 0x4

    .line 55
    const/4 v11, 0x0

    .line 56
    const-string v7, "ImmVideoPlayer"

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    invoke-static/range {v6 .. v11}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 63
    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    invoke-virtual {p0, p1, v2, v4}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f(IZLandroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "initView2\uff0c scrollToPosition \uff1a"

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const/4 v8, 0x4

    .line 97
    const/4 v9, 0x0

    .line 98
    const-string v5, "ImmVideoPlayer"

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    invoke-static/range {v4 .. v9}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 105
    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0, p1, v2, v1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f(IZLandroid/view/View;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    return-void
.end method

.method private final setPTParams(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lqi/b;->n(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    :cond_2
    const-string v1, ""

    .line 49
    .line 50
    :cond_3
    const-string v2, "post_media_type"

    .line 51
    .line 52
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    move-object v2, v1

    .line 80
    :goto_0
    const-string v3, "subject_id"

    .line 81
    .line 82
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v1, "has_resource"

    .line 112
    .line 113
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_8
    return-void
.end method

.method private final showEmpty()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->hideProgress()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    xor-int/2addr v0, v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "requireContext(...)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getEmptyView(Landroid/content/Context;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private final showNotNetError()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->hideProgress()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    xor-int/2addr v0, v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lwn/o;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lwn/o;->f:Lcom/tn/lib/widget/TnTextView;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "requireContext(...)"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getNotNetErrorView(Landroid/content/Context;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method private final showProgress()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwn/o;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lwn/o;->c:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final showSettingDialog()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/ninegridview/R$string;->system_settings:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "\""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget v3, Lcom/transsion/baseui/R$string;->base_app_name:I

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lcom/transsion/ninegridview/R$string;->permission_deny_down_tip:I

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    aput-object v1, v4, v5

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    aput-object v0, v4, v1

    .line 73
    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "getString(...)"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 84
    .line 85
    invoke-direct {v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    sget v3, Lcom/transsion/ninegridview/R$string;->cancel:I

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget v3, Lcom/transsion/ninegridview/R$string;->system_settings:I

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "settings"

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method private final updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->hideProgress()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const-string v0, "1"

    .line 17
    .line 18
    :cond_1
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mNextPage:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_11

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_6

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move-object v5, v2

    .line 56
    :goto_1
    if-eqz v5, :cond_5

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move-object v4, v2

    .line 70
    :goto_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 84
    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_3

    .line 92
    :cond_7
    move-object v3, v2

    .line 93
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    if-eqz v3, :cond_c

    .line 99
    .line 100
    move-object v5, v3

    .line 101
    check-cast v5, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    xor-int/2addr v5, v1

    .line 108
    if-ne v5, v1, :cond_c

    .line 109
    .line 110
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 115
    .line 116
    if-eqz v5, :cond_8

    .line 117
    .line 118
    invoke-direct {p0, v5}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->setPTParams(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 119
    .line 120
    .line 121
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_d

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 136
    .line 137
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_b

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    if-eqz v6, :cond_a

    .line 148
    .line 149
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    sget-object v7, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 154
    .line 155
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-nez v6, :cond_9

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-ne v6, v7, :cond_a

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_a
    :goto_5
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v9, "find same item title..."

    .line 185
    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v6, " id  "

    .line 193
    .line 194
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    const/4 v12, 0x4

    .line 205
    const/4 v13, 0x0

    .line 206
    const-string v9, "ImmVideoList"

    .line 207
    .line 208
    const/4 v11, 0x0

    .line 209
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_b
    :goto_6
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_c
    check-cast v0, Ljava/util/Collection;

    .line 218
    .line 219
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    .line 221
    .line 222
    :cond_d
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 223
    .line 224
    if-eqz v0, :cond_e

    .line 225
    .line 226
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 227
    .line 228
    .line 229
    :cond_e
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 230
    .line 231
    if-eqz v0, :cond_f

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->k()V

    .line 234
    .line 235
    .line 236
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->attachToMain:Z

    .line 237
    .line 238
    if-eqz v0, :cond_11

    .line 239
    .line 240
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 247
    .line 248
    if-eqz v3, :cond_10

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    goto :goto_7

    .line 255
    :cond_10
    move-object v3, v2

    .line 256
    :goto_7
    invoke-virtual {v0, v3}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->r(Ljava/util/List;)V

    .line 257
    .line 258
    .line 259
    :cond_11
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 260
    .line 261
    if-eqz v0, :cond_12

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v0, :cond_12

    .line 268
    .line 269
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-ne v0, v1, :cond_12

    .line 274
    .line 275
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 276
    .line 277
    if-eqz v0, :cond_12

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-eqz v0, :cond_12

    .line 284
    .line 285
    invoke-virtual {v0}, Lt6/f;->s()V

    .line 286
    .line 287
    .line 288
    :cond_12
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    const/4 v0, 0x0

    .line 293
    if-eqz p1, :cond_13

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    goto :goto_8

    .line 306
    :cond_13
    move p1, v0

    .line 307
    :goto_8
    if-eqz p1, :cond_14

    .line 308
    .line 309
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 310
    .line 311
    if-eqz p1, :cond_14

    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-eqz p1, :cond_14

    .line 318
    .line 319
    invoke-static {p1, v0, v1, v2}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_14
    iget p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->savedCurrentIndex:I

    .line 323
    .line 324
    if-ltz p1, :cond_15

    .line 325
    .line 326
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->scrollToPosition(I)V

    .line 327
    .line 328
    .line 329
    const/4 p1, -0x1

    .line 330
    iput p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->savedCurrentIndex:I

    .line 331
    .line 332
    :cond_15
    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResumeTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->resumeTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTran_ops()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->tran_ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lwn/o;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lwn/o;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lwn/o;->c(Landroid/view/LayoutInflater;)Lwn/o;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$c;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->setNetListener(Lyg/m;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initViewModel()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->B()Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string p2, "1"

    .line 40
    .line 41
    :cond_1
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mNextPage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    :cond_2
    sget-object p1, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->g()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->attachToMain:Z

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->p()V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->showProgress()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadData()V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    iget-boolean p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isFromDownloaded:Z

    .line 87
    .line 88
    if-eqz p2, :cond_9

    .line 89
    .line 90
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 91
    .line 92
    if-eqz p2, :cond_9

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    iget p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->startDownloadedIndex:I

    .line 107
    .line 108
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    :goto_0
    if-ge p2, v0, :cond_7

    .line 118
    .line 119
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "get(...)"

    .line 129
    .line 130
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 p2, p2, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 140
    .line 141
    if-eqz p2, :cond_8

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->prioritizeDownloaded:Z

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_9
    :goto_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 155
    .line 156
    if-eqz p2, :cond_a

    .line 157
    .line 158
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->setPTParams(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 159
    .line 160
    .line 161
    :cond_a
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 162
    .line 163
    if-eqz p2, :cond_b

    .line 164
    .line 165
    check-cast p1, Ljava/util/Collection;

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 168
    .line 169
    .line 170
    :cond_b
    :goto_2
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-string v1, "view"

    .line 2
    .line 3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string v1, "CURRENT_INDEX"

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, -0x1

    .line 16
    :goto_0
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->savedCurrentIndex:I

    .line 17
    .line 18
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "initView\uff0c savedCurrentIndex \uff1a"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v2, "ImmVideoPlayer"

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initAd()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initNonAd()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initAdapter()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initPlayer()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initBack()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initAudioListener()V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->observeRemoveVideo()V

    .line 68
    .line 69
    .line 70
    new-instance v6, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v8, "requireActivity(...)"

    .line 77
    .line 78
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v6, v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput-object v6, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerLayoutManager:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 85
    .line 86
    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->fromComment:Z

    .line 87
    .line 88
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayer:Lcom/transsion/player/orplayer/f;

    .line 91
    .line 92
    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayerView:Lcom/transsion/player/ui/ORPlayerView;

    .line 93
    .line 94
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->pageFrom:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v9, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;

    .line 97
    .line 98
    move-object v0, v9

    .line 99
    move-object v1, p0

    .line 100
    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;ZLcom/transsion/postdetail/ui/adapter/d;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object v9, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerLayoutManager:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    invoke-virtual {v0, v9}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->X(Lgr/a;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lwn/o;

    .line 117
    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerLayoutManager:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lwn/o;

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lwn/o;

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    iget-object v0, v0, Lwn/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;

    .line 159
    .line 160
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->k(Landroidx/fragment/app/FragmentActivity;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    const-string v1, "page_from"

    .line 195
    .line 196
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->pageFrom:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Ljava/lang/String;

    .line 203
    .line 204
    :cond_5
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public logPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logPause()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->resumeTimeStamp:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->resumeTimeStamp:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "postdetail_video"

    .line 30
    .line 31
    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public logResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->resumeTimeStamp:J

    .line 9
    .line 10
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "postdetail_video"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, ""

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v1, "id"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    :cond_0
    move-object p1, v0

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const-string v1, "comment_id"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    :cond_2
    move-object p1, v0

    .line 38
    :cond_3
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->commentId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    const-string v1, "item_type"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    move-object v0, p1

    .line 56
    :cond_5
    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mItemType:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    const-string v1, "tab_id"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    goto :goto_1

    .line 72
    :cond_6
    move p1, v0

    .line 73
    :goto_1
    iput p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mTabId:I

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v1, 0x1

    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    const-string v2, "video_load_more"

    .line 83
    .line 84
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->videoLoadMore:Z

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_8

    .line 95
    .line 96
    const-string v1, "from_comment"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    goto :goto_2

    .line 103
    :cond_8
    move p1, v0

    .line 104
    :goto_2
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->fromComment:Z

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/4 v1, 0x0

    .line 111
    if-eqz p1, :cond_9

    .line 112
    .line 113
    const-string v2, "rec_ops"

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_3

    .line 120
    :cond_9
    move-object p1, v1

    .line 121
    :goto_3
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->tran_ops:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v2, "attach_to_main"

    .line 128
    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    goto :goto_4

    .line 136
    :cond_a
    move p1, v0

    .line 137
    :goto_4
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->attachToMain:Z

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    const-string v3, "page_from"

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    goto :goto_5

    .line 152
    :cond_b
    move-object p1, v1

    .line 153
    :goto_5
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->pageFrom:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_c

    .line 160
    .line 161
    const-string v3, "need_back_to_room"

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    goto :goto_6

    .line 168
    :cond_c
    move p1, v0

    .line 169
    :goto_6
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->needBackToRoom:Z

    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    const-string v3, "downloaded_shorts_list"

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    goto :goto_7

    .line 184
    :cond_d
    move-object p1, v1

    .line 185
    :goto_7
    instance-of v3, p1, Ljava/util/ArrayList;

    .line 186
    .line 187
    if-eqz v3, :cond_e

    .line 188
    .line 189
    check-cast p1, Ljava/util/ArrayList;

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_e
    move-object p1, v1

    .line 193
    :goto_8
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_f

    .line 200
    .line 201
    const-string v3, "prioritize_downloaded"

    .line 202
    .line 203
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    goto :goto_9

    .line 208
    :cond_f
    move p1, v0

    .line 209
    :goto_9
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->prioritizeDownloaded:Z

    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_10

    .line 216
    .line 217
    const-string v3, "is_from_downloaded"

    .line 218
    .line 219
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    goto :goto_a

    .line 224
    :cond_10
    move p1, v0

    .line 225
    :goto_a
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->isFromDownloaded:Z

    .line 226
    .line 227
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->prioritizeDownloaded:Z

    .line 228
    .line 229
    if-eqz p1, :cond_15

    .line 230
    .line 231
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 232
    .line 233
    if-eqz p1, :cond_15

    .line 234
    .line 235
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_11

    .line 240
    .line 241
    goto :goto_d

    .line 242
    :cond_11
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->downloadedShortsList:Ljava/util/ArrayList;

    .line 243
    .line 244
    const/4 v3, -0x1

    .line 245
    if-eqz p1, :cond_13

    .line 246
    .line 247
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    move v4, v0

    .line 252
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_13

    .line 257
    .line 258
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 263
    .line 264
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    iget-object v6, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_12

    .line 275
    .line 276
    move v3, v4

    .line 277
    goto :goto_c

    .line 278
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_13
    :goto_c
    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->currentDownloadedIndex:I

    .line 282
    .line 283
    if-gez v3, :cond_14

    .line 284
    .line 285
    move v3, v0

    .line 286
    :cond_14
    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->startDownloadedIndex:I

    .line 287
    .line 288
    :cond_15
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    if-eqz p1, :cond_16

    .line 293
    .line 294
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    if-eqz p1, :cond_16

    .line 299
    .line 300
    const-string v3, "base_post_id"

    .line 301
    .line 302
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Ljava/lang/String;

    .line 309
    .line 310
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-eqz p1, :cond_17

    .line 315
    .line 316
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    if-eqz p1, :cond_17

    .line 321
    .line 322
    const-string v3, "post_id"

    .line 323
    .line 324
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPostId:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Ljava/lang/String;

    .line 331
    .line 332
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    if-eqz p1, :cond_19

    .line 337
    .line 338
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    if-eqz p1, :cond_19

    .line 343
    .line 344
    iget-boolean v3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->attachToMain:Z

    .line 345
    .line 346
    if-eqz v3, :cond_18

    .line 347
    .line 348
    const-string v3, "0"

    .line 349
    .line 350
    goto :goto_e

    .line 351
    :cond_18
    const-string v3, "1"

    .line 352
    .line 353
    :goto_e
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Ljava/lang/String;

    .line 358
    .line 359
    :cond_19
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->getMVideoViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    if-eqz p1, :cond_1b

    .line 364
    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    if-eqz v2, :cond_1a

    .line 370
    .line 371
    const-string v1, "yy_preload_id"

    .line 372
    .line 373
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    :cond_1a
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->pageFrom:Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {p1, v1, v2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->F(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_1b
    const-class p1, Lim/b;

    .line 387
    .line 388
    new-array v0, v0, [Ljava/lang/Object;

    .line 389
    .line 390
    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    check-cast p1, Lim/b;

    .line 395
    .line 396
    if-eqz p1, :cond_1c

    .line 397
    .line 398
    invoke-interface {p1, p0}, Lim/b;->D(Lim/f;)V

    .line 399
    .line 400
    .line 401
    :cond_1c
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/VideoFragment$onDestroy$1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {v4, p0, v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$onDestroy$1;-><init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->v3ListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->o()V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    const-class v1, Lim/b;

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lim/b;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v0, p0}, Lim/b;->v(Lim/f;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayer:Lcom/transsion/player/orplayer/f;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->logPause()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mOrPlayer:Lcom/transsion/player/orplayer/f;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->logResume()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->l(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    const/16 v5, 0x9

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v2, p0

    .line 46
    move v3, p1

    .line 47
    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMemberStateChange()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "co_mem"

    .line 6
    .line 7
    const-string v2, "VideoFragment --> onMemberStateChange() --> refresh list"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->loadData()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->localLogPause()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-static {v0, p0, v0, v1, v0}, Lcom/transsion/baseui/activity/k;->l(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-ne p1, p2, :cond_3

    .line 21
    .line 22
    array-length p1, p3

    .line 23
    const/4 p2, 0x1

    .line 24
    if-le p1, p2, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    aget v0, p3, p1

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    aget p2, p3, p2

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    sget-object p2, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 36
    .line 37
    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/d;

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_0
    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->c(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    .line 72
    .line 73
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 77
    .line 78
    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->showSettingDialog()V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "visible="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v2, p0, v0, v1, v2}, Lcom/transsion/baseui/activity/k;->p(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 2

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/ninegridview/helper/b;->a:Lcom/transsion/ninegridview/helper/b;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x65

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/transsion/ninegridview/helper/b;->a(Landroid/app/Activity;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->mPagerChangeControl:Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string v1, "CURRENT_INDEX"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setResumeTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->resumeTimeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTran_ops(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->tran_ops:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
