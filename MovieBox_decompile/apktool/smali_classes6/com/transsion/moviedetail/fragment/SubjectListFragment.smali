.class public Lcom/transsion/moviedetail/fragment/SubjectListFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"

# interfaces
.implements Lwv/b;
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Llm/g;",
        ">;",
        "Lwv/b;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u00bc\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002\u00bd\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0019\u0010\r\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0006J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J#\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0006J\u000f\u0010$\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0006J\u0019\u0010%\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008%\u0010\"J!\u0010\'\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010&\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u001f\u0010+\u001a\u00020\u00072\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0019\u0010.\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00101\u001a\u00020\u00072\u0008\u00100\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0004\u00081\u0010/J\u0019\u00103\u001a\u00020\u00072\u0008\u00102\u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u00083\u0010\"J\u000f\u00104\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00084\u0010\u0006J\u000f\u00105\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00085\u0010\u0006J\u000f\u00106\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00086\u0010\u0006J\u000f\u00107\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00087\u0010\u0006J\u000f\u00108\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00088\u0010\u0006J\u000f\u00109\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00089\u0010\u0006J\u000f\u0010:\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008:\u0010\u0006J\u000f\u0010;\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008=\u0010<J\u001b\u0010@\u001a\u0004\u0018\u00010\u001f2\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010C\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u0019\u0010G\u001a\u00020\u00072\u0008\u0010F\u001a\u0004\u0018\u00010EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010K\u001a\u00020\u00022\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008M\u0010<J\u000f\u0010N\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u000f\u0010P\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008P\u0010\u0006J\u001f\u0010U\u001a\u00020\u00072\u0006\u0010R\u001a\u00020Q2\u0006\u0010T\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008U\u0010VJ\u000f\u0010W\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008W\u0010\u0006J\u000f\u0010X\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008X\u0010\u0006J\u000f\u0010Y\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008Y\u0010\u0006J\r\u0010Z\u001a\u00020\u0007\u00a2\u0006\u0004\u0008Z\u0010\u0006J\u0017\u0010]\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0017\u0010_\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020[H\u0016\u00a2\u0006\u0004\u0008_\u0010^J1\u0010f\u001a\u00020\u00072\u0006\u0010a\u001a\u00020`2\u0010\u0010c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00190b2\u0006\u0010e\u001a\u00020dH\u0016\u00a2\u0006\u0004\u0008f\u0010gJ\u000f\u0010h\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008h\u0010\u0006J\u000f\u0010i\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008i\u0010\u0006J\u000f\u0010j\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008j\u0010\u0006J\u0011\u0010l\u001a\u0004\u0018\u00010kH\u0016\u00a2\u0006\u0004\u0008l\u0010mJ\u0017\u0010o\u001a\u00020k2\u0006\u0010n\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020k2\u0006\u0010n\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008q\u0010pJ\u0017\u0010s\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008s\u0010tJ\u000f\u0010v\u001a\u00020uH\u0016\u00a2\u0006\u0004\u0008v\u0010wJ\u0017\u0010y\u001a\u00020\u00072\u0006\u0010x\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008y\u0010tR\u0018\u0010{\u001a\u0004\u0018\u00010z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0018\u0010~\u001a\u0004\u0018\u00010}8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\u001c\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R#\u0010\u008f\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u008e\u0001\u0018\u00010\u008d\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R#\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0091\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R#\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0097\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0098\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R#\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009c\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u009d\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u001c\u0010\u00a2\u0001\u001a\u0005\u0018\u00010\u00a1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u001b\u0010\u00a4\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R#\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00a6\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a7\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u001c\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00ab\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u001c\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00ae\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u001b\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R2\u0010\u00ba\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u00190\u00b5\u0001j\t\u0012\u0004\u0012\u00020\u0019`\u00b6\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b7\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u0019\u0010\u00bb\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u00b2\u0001\u00a8\u0006\u00be\u0001"
    }
    d2 = {
        "Lcom/transsion/moviedetail/fragment/SubjectListFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Llm/g;",
        "Lwv/b;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initExposureHelper",
        "initLaunch",
        "initLiveData",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
        "postSubjectBean",
        "updateSubjectList",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V",
        "initScrollListener",
        "initPlayer",
        "checkToShowEmptyView",
        "Lcom/transsion/moviedetailapi/bean/LikeBean;",
        "likeBean",
        "updateLikeStatus",
        "(Lcom/transsion/moviedetailapi/bean/LikeBean;)V",
        "lazyLoadData",
        "loadMore",
        "initClickListener",
        "",
        "postId",
        "",
        "hasLike",
        "like",
        "(Ljava/lang/String;Ljava/lang/Boolean;)V",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "postItem",
        "onDownLoadClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "requestPermission",
        "showSettingDialog",
        "share",
        "fromComment",
        "openDetail",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "data",
        "updateDeletePost",
        "(Lcom/tn/lib/net/bean/BaseDto;)V",
        "id",
        "removePost",
        "(Ljava/lang/String;)V",
        "url",
        "toWeb",
        "item",
        "showAudioFloating",
        "observeDelete",
        "observeLike",
        "observeComment",
        "initAd",
        "insertLast",
        "initListVideoPreload",
        "localLogPause",
        "pageName",
        "()Ljava/lang/String;",
        "subpageName",
        "Lcom/transsion/moviedetailapi/bean/RoomBean;",
        "bean",
        "getRecommendRoomsBean",
        "(Lcom/transsion/moviedetailapi/bean/RoomBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "",
        "getPostExposurePercent",
        "()F",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Llm/g;",
        "getPageStateLayoutTitle",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "initViewData",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "refresh",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onPause",
        "onDestroy",
        "Landroid/view/View;",
        "getLoadingView",
        "()Landroid/view/View;",
        "isShowTitleLayout",
        "getLocalNoNetworkView",
        "(Z)Landroid/view/View;",
        "getEmptyView",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "fullscreen",
        "onScreenChange",
        "Lbj/b;",
        "mExposureHelper",
        "Lbj/b;",
        "Lcom/transsion/ad/bidding/nativead/BiddingListManager;",
        "middleListManager",
        "Lcom/transsion/ad/bidding/nativead/BiddingListManager;",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "nativeManager",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "mHotViewModel",
        "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
        "Lcom/transsion/moviedetail/adapter/j;",
        "mAdapter",
        "Lcom/transsion/moviedetail/adapter/j;",
        "mPostSubjectBean",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
        "mPostSubjectItem",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "postDetailLauncher",
        "Landroidx/activity/result/b;",
        "Lqx/a;",
        "mLoginApi$delegate",
        "Lkotlin/Lazy;",
        "getMLoginApi",
        "()Lqx/a;",
        "mLoginApi",
        "Lep/a;",
        "mAudioApi$delegate",
        "getMAudioApi",
        "()Lep/a;",
        "mAudioApi",
        "Lep/b;",
        "mFloatApi$delegate",
        "getMFloatApi",
        "()Lep/b;",
        "mFloatApi",
        "Lep/e;",
        "mRoomView",
        "Lep/e;",
        "mEmptyLayout",
        "Landroid/view/View;",
        "Lep/f;",
        "mRoomApi$delegate",
        "getMRoomApi",
        "()Lep/f;",
        "mRoomApi",
        "Lcom/transsion/ninegridview/a;",
        "mGifPlayerManager",
        "Lcom/transsion/ninegridview/a;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "mSubject",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "firstLoad",
        "Z",
        "curPageName",
        "Ljava/lang/String;",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "mExposureList$delegate",
        "getMExposureList",
        "()Ljava/util/HashSet;",
        "mExposureList",
        "isFirst",
        "Companion",
        "a",
        "MovieDetail_psRelease"
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
.field public static final Companion:Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;

.field public static final KEY_POST_EXPOSURE_PERCENT:Ljava/lang/String; = "sa_post_exposure_percent"

.field public static final TAG:Ljava/lang/String; = "MoveListFragment"


# instance fields
.field private curPageName:Ljava/lang/String;

.field private firstLoad:Z

.field private isFirst:Z

.field private mAdapter:Lcom/transsion/moviedetail/adapter/j;

.field private final mAudioApi$delegate:Lkotlin/Lazy;

.field private mEmptyLayout:Landroid/view/View;

.field private mExposureHelper:Lbj/b;

.field private final mExposureList$delegate:Lkotlin/Lazy;

.field private final mFloatApi$delegate:Lkotlin/Lazy;

.field private mGifPlayerManager:Lcom/transsion/ninegridview/a;

.field private mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

.field private final mLoginApi$delegate:Lkotlin/Lazy;

.field private mPostSubjectBean:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

.field private mPostSubjectItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private final mRoomApi$delegate:Lkotlin/Lazy;

.field private mRoomView:Lep/e;

.field private mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

.field private middleListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

.field private nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private postDetailLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->Companion:Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/moviedetail/fragment/d2;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/moviedetail/fragment/d2;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/moviedetail/fragment/e2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/moviedetail/fragment/e2;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAudioApi$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/moviedetail/fragment/f2;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/moviedetail/fragment/f2;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mFloatApi$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/moviedetail/fragment/g2;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/transsion/moviedetail/fragment/g2;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomApi$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/transsion/moviedetail/fragment/h2;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/transsion/moviedetail/fragment/h2;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mExposureList$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->isFirst:Z

    .line 61
    .line 62
    return-void
.end method

.method public static synthetic A0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->loadMore$lambda$42(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->observeLike$lambda$55(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLiveData$lambda$22$lambda$16$lambda$15(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getLocalNoNetworkView$lambda$64$lambda$63(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E0()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAudioApi_delegate$lambda$1()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/moviedetail/adapter/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMExposureList(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Ljava/util/HashSet;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getMExposureList()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMHotViewModel$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMiddleListManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingListManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->middleListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$pageName(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->pageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$removePost(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->removePost(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setNativeManager$p(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$subpageName(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->subpageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final checkToShowEmptyView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Llm/g;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Llm/g;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    new-instance v2, Ltf/i;

    .line 45
    .line 46
    const/high16 v3, 0x41800000    # 16.0f

    .line 47
    .line 48
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-direct {v2, v3, v1}, Ltf/i;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz v0, :cond_b

    .line 68
    .line 69
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 70
    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getMRoomApi()Lep/f;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    sget-object v4, Lcom/transsion/room/api/RoomsViewType;->TYPE_SUBJECT_DETAIL:Lcom/transsion/room/api/RoomsViewType;

    .line 80
    .line 81
    invoke-interface {v3, v0, v4}, Lep/f;->c(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Lep/e;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-object v0, v2

    .line 87
    :goto_1
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 90
    .line 91
    instance-of v3, v0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 92
    .line 93
    if-eqz v3, :cond_8

    .line 94
    .line 95
    const-string v3, "null cannot be cast to non-null type com.transsion.moviedetail.viewmodel.HotViewModel"

    .line 96
    .line 97
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    check-cast v0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->d0()Landroidx/lifecycle/b0;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/transsion/moviedetailapi/bean/RoomBean;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getRecommendRoomsBean(Lcom/transsion/moviedetailapi/bean/RoomBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRoomList()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 127
    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->pageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iget-object v5, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 135
    .line 136
    if-eqz v5, :cond_3

    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    if-eqz v5, :cond_3

    .line 143
    .line 144
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->getValue()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-nez v5, :cond_4

    .line 149
    .line 150
    :cond_3
    sget-object v5, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->COMMENTS:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->getValue()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :cond_4
    invoke-interface {v3, v4, v5}, Lep/e;->setReportName(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 160
    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    invoke-interface {v3, v0}, Lep/e;->setList(Ljava/util/List;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    move-object v0, v2

    .line 170
    :goto_2
    if-eqz v0, :cond_7

    .line 171
    .line 172
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 173
    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    invoke-interface {v0}, Lep/e;->getView()Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 186
    .line 187
    :cond_7
    if-eqz v2, :cond_8

    .line 188
    .line 189
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 190
    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    invoke-interface {v0}, Lep/e;->getView()Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_8

    .line 198
    .line 199
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    :cond_8
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {p0, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getEmptyView(Z)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    :cond_9
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 214
    .line 215
    if-eqz v0, :cond_a

    .line 216
    .line 217
    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z1(Z)V

    .line 219
    .line 220
    .line 221
    :cond_a
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 222
    .line 223
    :cond_b
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 228
    .line 229
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    :cond_c
    :goto_4
    return-void
.end method

.method private static final getLocalNoNetworkView$lambda$64$lambda$63(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->retryLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getMAudioApi()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAudioApi$delegate:Lkotlin/Lazy;

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

.method private final getMExposureList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mExposureList$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMFloatApi()Lep/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mFloatApi$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMRoomApi()Lep/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomApi$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/f;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPostExposurePercent()F
    .locals 5

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_post_exposure_percent"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :cond_0
    const v0, 0x3f19999a    # 0.6f

    .line 23
    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :cond_2
    :goto_0
    return v0
.end method

.method private final getRecommendRoomsBean(Lcom/transsion/moviedetailapi/bean/RoomBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 42

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->getItems()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    :cond_1
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move-object/from16 v2, p0

    .line 25
    .line 26
    iget-object v3, v2, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v3, v4, :cond_3

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v3, 0x3

    .line 57
    if-le v0, v3, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-interface {v1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_4
    new-instance v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 65
    .line 66
    move-object v5, v0

    .line 67
    const/16 v40, 0x1

    .line 68
    .line 69
    const/16 v41, 0x0

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/16 v17, 0x0

    .line 84
    .line 85
    const/16 v18, 0x0

    .line 86
    .line 87
    const/16 v19, 0x0

    .line 88
    .line 89
    const/16 v20, 0x0

    .line 90
    .line 91
    const/16 v21, 0x0

    .line 92
    .line 93
    const/16 v22, 0x0

    .line 94
    .line 95
    const/16 v23, 0x0

    .line 96
    .line 97
    const/16 v24, 0x0

    .line 98
    .line 99
    const/16 v25, 0x0

    .line 100
    .line 101
    const/16 v26, 0x0

    .line 102
    .line 103
    const/16 v27, 0x0

    .line 104
    .line 105
    const/16 v28, 0x0

    .line 106
    .line 107
    const/16 v29, 0x0

    .line 108
    .line 109
    const/16 v30, 0x0

    .line 110
    .line 111
    const/16 v31, 0x0

    .line 112
    .line 113
    const/16 v32, 0x0

    .line 114
    .line 115
    const/16 v33, 0x0

    .line 116
    .line 117
    const/16 v34, 0x0

    .line 118
    .line 119
    const/16 v35, 0x0

    .line 120
    .line 121
    const/16 v36, 0x0

    .line 122
    .line 123
    const/16 v37, 0x0

    .line 124
    .line 125
    const/16 v38, 0x0

    .line 126
    .line 127
    const/16 v39, -0x1

    .line 128
    .line 129
    invoke-direct/range {v5 .. v41}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setRoomList(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setRoomList(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-object v0
.end method

.method private final initAd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/enum/PostListSource;->SUBJECT:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->middleListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Llm/g;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v1, v2, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->F(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->middleListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->A(Lkotlinx/coroutines/n0;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->middleListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    const-string v1, "SubjectDetailRecommendScene"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->G(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->middleListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    new-instance v1, Lcom/transsion/moviedetail/fragment/q1;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/q1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->z(Lkotlin/jvm/functions/Function2;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    return-void
.end method

.method private static final initAd$lambda$60(Lcom/transsion/moviedetail/fragment/SubjectListFragment;ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lkotlin/Unit;
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
    iget-object v2, v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

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
    iget-object v0, v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

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
    iget-object v0, v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

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

.method private final initClickListener()V
    .locals 0

    .line 1
    return-void
.end method

.method private final initExposureHelper()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getPostExposurePercent()F

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "initExposureHelper, postExposurePercent:"

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v6, 0x4

    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v3, "PostList"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v6, Lbj/b;

    .line 33
    .line 34
    new-instance v2, Lcom/transsion/moviedetail/fragment/SubjectListFragment$b;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$b;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    move-object v0, v6

    .line 43
    invoke-direct/range {v0 .. v5}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-virtual {v6, v0}, Lbj/b;->n(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Llm/g;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iput-object v6, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mExposureHelper:Lbj/b;

    .line 66
    .line 67
    return-void
.end method

.method private final initLaunch()V
    .locals 2

    .line 1
    new-instance v0, Lf/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/moviedetail/fragment/u1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/u1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->postDetailLauncher:Landroidx/activity/result/b;

    .line 16
    .line 17
    return-void
.end method

.method private static final initLaunch$lambda$13(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v2, "audio"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    instance-of v2, v0, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    const/4 v8, 0x0

    .line 36
    const-string v4, "MoveListFragment"

    .line 37
    .line 38
    const-string v5, "showFloating"

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    const-class v3, Lep/b;

    .line 48
    .line 49
    invoke-static {v3, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lep/b;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    check-cast v0, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 67
    .line 68
    invoke-interface {v2, v3, v0}, Lep/b;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    const-string v0, "id"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->removePost(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method private final initListVideoPreload()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    sget-object v1, Lcom/transsion/moviedetailapi/enum/PostListSource;->SUBJECT:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    new-instance v0, Lsm/b;

    .line 19
    .line 20
    new-instance v1, Lcom/transsion/moviedetail/fragment/v1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/v1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 23
    .line 24
    .line 25
    const/high16 v2, 0x3f400000    # 0.75f

    .line 26
    .line 27
    invoke-direct {v0, v2, v1}, Lsm/b;-><init>(FLkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Llm/g;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v1, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method private static final initListVideoPreload$lambda$61(Lcom/transsion/moviedetail/fragment/SubjectListFragment;I)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    :catchall_0
    :cond_0
    return-object v0
.end method

.method private final initLiveData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, v0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->d0()Landroidx/lifecycle/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/transsion/moviedetail/fragment/w1;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/w1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/transsion/moviedetail/fragment/k2;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lcom/transsion/moviedetail/fragment/k2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->x()Landroidx/lifecycle/LiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/transsion/moviedetail/fragment/x1;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/x1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lcom/transsion/moviedetail/fragment/k2;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Lcom/transsion/moviedetail/fragment/k2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->r()Landroidx/lifecycle/LiveData;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/transsion/moviedetail/fragment/y1;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/y1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lcom/transsion/moviedetail/fragment/k2;

    .line 56
    .line 57
    invoke-direct {v3, v2}, Lcom/transsion/moviedetail/fragment/k2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->n()Landroidx/lifecycle/LiveData;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Lcom/transsion/moviedetail/fragment/a2;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Lcom/transsion/moviedetail/fragment/a2;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Lcom/transsion/moviedetail/fragment/k2;

    .line 77
    .line 78
    invoke-direct {v4, v3}, Lcom/transsion/moviedetail/fragment/k2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->p()Landroidx/lifecycle/b0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Lcom/transsion/moviedetail/fragment/b2;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/b2;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Lcom/transsion/moviedetail/fragment/k2;

    .line 98
    .line 99
    invoke-direct {v3, v2}, Lcom/transsion/moviedetail/fragment/k2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method private static final initLiveData$lambda$22$lambda$14(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/RoomBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    :cond_1
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->E(Z)V

    .line 27
    .line 28
    .line 29
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final initLiveData$lambda$22$lambda$16(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mPostSubjectBean:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-static {v0, v2}, Lsm/d;->d(Landroid/content/Context;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->firstLoad:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->firstLoad:Z

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->updateSubjectList(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Llm/g;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    new-instance v1, Lcom/transsion/moviedetail/fragment/o1;

    .line 54
    .line 55
    invoke-direct {v1, p0, p1}, Lcom/transsion/moviedetail/fragment/o1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 p0, 0x12c

    .line 59
    .line 60
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method private static final initLiveData$lambda$22$lambda$16$lambda$15(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->updateSubjectList(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final initLiveData$lambda$22$lambda$17(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/LikeBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->updateLikeStatus(Lcom/transsion/moviedetailapi/bean/LikeBean;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final initLiveData$lambda$22$lambda$20(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 5

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Ljava/util/Collection;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 47
    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object v0, p1

    .line 60
    check-cast v0, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomList()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-ne v0, v2, :cond_5

    .line 90
    .line 91
    move v0, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move v0, v3

    .line 94
    :goto_1
    iget-object v4, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 95
    .line 96
    if-eqz v4, :cond_6

    .line 97
    .line 98
    invoke-virtual {v4, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->o(ILjava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Llm/g;

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    :try_start_0
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    move-object v1, v0

    .line 124
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-gt v1, v2, :cond_7

    .line 131
    .line 132
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 133
    .line 134
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    :catch_0
    :cond_7
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    goto :goto_2

    .line 146
    :cond_8
    move v0, v3

    .line 147
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-ne v0, p1, :cond_9

    .line 152
    .line 153
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 154
    .line 155
    if-eqz p0, :cond_9

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-eqz p0, :cond_9

    .line 162
    .line 163
    invoke-virtual {p0, v3}, Lt6/f;->t(Z)V

    .line 164
    .line 165
    .line 166
    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p0
.end method

.method private static final initLiveData$lambda$22$lambda$21(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->updateDeletePost(Lcom/tn/lib/net/bean/BaseDto;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final initPlayer()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/ninegridview/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ninegridview/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Llm/g;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/transsion/ninegridview/a;->n(Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 24
    .line 25
    return-void
.end method

.method private final initScrollListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llm/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$c;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final initViewData$lambda$11$lambda$10(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/16 v2, 0x1f4

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v0, p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p1, v1

    .line 39
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    sget v0, Lcom/transsion/postdetail/R$id;->v_post_share:I

    .line 44
    .line 45
    if-ne p2, v0, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->share(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "share"

    .line 51
    .line 52
    goto/16 :goto_12

    .line 53
    .line 54
    :cond_2
    sget v0, Lcom/transsion/postdetail/R$id;->v_post_download:I

    .line 55
    .line 56
    if-ne p2, v0, :cond_3

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->onDownLoadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mPostSubjectItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 62
    .line 63
    const-string v1, "download"

    .line 64
    .line 65
    goto/16 :goto_12

    .line 66
    .line 67
    :cond_3
    sget v0, Lcom/transsion/postdetail/R$id;->v_post_like:I

    .line 68
    .line 69
    if-ne p2, v0, :cond_8

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 p2, 0x0

    .line 85
    :goto_1
    if-eqz p2, :cond_5

    .line 86
    .line 87
    const-string p2, "dislike"

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const-string p2, "like"

    .line 91
    .line 92
    :goto_2
    if-eqz p1, :cond_6

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    move-object v0, v1

    .line 100
    :goto_3
    if-eqz p1, :cond_7

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->like(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    .line 108
    .line 109
    move-object v1, p2

    .line 110
    goto/16 :goto_12

    .line 111
    .line 112
    :cond_8
    sget v0, Lcom/transsion/postdetail/R$id;->v_post_comment:I

    .line 113
    .line 114
    if-ne p2, v0, :cond_9

    .line 115
    .line 116
    const/4 p2, 0x1

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->openDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    .line 118
    .line 119
    .line 120
    const-string v1, "comment"

    .line 121
    .line 122
    goto/16 :goto_12

    .line 123
    .line 124
    :cond_9
    sget v0, Lcom/transsion/postdetail/R$id;->tv_room_tag:I

    .line 125
    .line 126
    const-string v2, "id"

    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    if-ne p2, v0, :cond_b

    .line 130
    .line 131
    const-string p2, "/room/detail"

    .line 132
    .line 133
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-eqz p1, :cond_a

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_a

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_4

    .line 150
    :cond_a
    move-object v0, v1

    .line 151
    :goto_4
    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {p2, v0, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "group"

    .line 163
    .line 164
    goto/16 :goto_12

    .line 165
    .line 166
    :cond_b
    sget v0, Lcom/transsion/postdetail/R$id;->fl_cover:I

    .line 167
    .line 168
    if-eq p2, v0, :cond_12

    .line 169
    .line 170
    sget v0, Lcom/transsion/postdetail/R$id;->tv_room_name:I

    .line 171
    .line 172
    if-eq p2, v0, :cond_12

    .line 173
    .line 174
    sget v0, Lcom/transsion/postdetail/R$id;->tv_post_date:I

    .line 175
    .line 176
    if-ne p2, v0, :cond_c

    .line 177
    .line 178
    goto/16 :goto_8

    .line 179
    .line 180
    :cond_c
    sget v0, Lcom/transsion/moviedetail/R$id;->cl_audio:I

    .line 181
    .line 182
    if-ne p2, v0, :cond_d

    .line 183
    .line 184
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->showAudioFloating(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 185
    .line 186
    .line 187
    const-string v1, "audio_play"

    .line 188
    .line 189
    goto/16 :goto_12

    .line 190
    .line 191
    :cond_d
    sget v0, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    .line 192
    .line 193
    if-ne p2, v0, :cond_1d

    .line 194
    .line 195
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 196
    .line 197
    if-eqz p2, :cond_e

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/transsion/moviedetail/adapter/j;->S1()Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    if-eqz p2, :cond_e

    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    if-eqz p2, :cond_e

    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    :cond_e
    const-string p2, "/movie/detail"

    .line 215
    .line 216
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    if-eqz p1, :cond_f

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_f

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_f

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    goto :goto_5

    .line 239
    :cond_f
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    :goto_5
    const-string v4, "subject_type"

    .line 246
    .line 247
    invoke-virtual {p2, v4, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    if-eqz p1, :cond_10

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-eqz v0, :cond_10

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    goto :goto_6

    .line 264
    :cond_10
    move-object v0, v1

    .line 265
    :goto_6
    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    if-eqz p1, :cond_11

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_11

    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    goto :goto_7

    .line 282
    :cond_11
    move-object v0, v1

    .line 283
    :goto_7
    const-string v2, "ops"

    .line 284
    .line 285
    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {p2, v0, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    const-string v1, "subject"

    .line 297
    .line 298
    goto/16 :goto_12

    .line 299
    .line 300
    :cond_12
    :goto_8
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 301
    .line 302
    if-eqz p2, :cond_13

    .line 303
    .line 304
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    goto :goto_9

    .line 309
    :cond_13
    move-object p2, v1

    .line 310
    :goto_9
    sget-object v0, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->POSTS:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 311
    .line 312
    if-ne p2, v0, :cond_18

    .line 313
    .line 314
    const-string p2, "/post/detail"

    .line 315
    .line 316
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    const-string v0, "page_from"

    .line 321
    .line 322
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->pageName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {p2, v0, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    const-string v0, "item_object"

    .line 331
    .line 332
    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    if-eqz p1, :cond_14

    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    goto :goto_a

    .line 343
    :cond_14
    move-object v0, v1

    .line 344
    :goto_a
    const-string v4, "rec_ops"

    .line 345
    .line 346
    invoke-virtual {p2, v4, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    if-eqz p1, :cond_15

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    goto :goto_b

    .line 357
    :cond_15
    move-object v0, v1

    .line 358
    :goto_b
    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    if-eqz p1, :cond_16

    .line 363
    .line 364
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getItemType()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    goto :goto_c

    .line 369
    :cond_16
    move-object v0, v1

    .line 370
    :goto_c
    const-string v2, "item_type"

    .line 371
    .line 372
    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    if-eqz p1, :cond_17

    .line 377
    .line 378
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-eqz v0, :cond_17

    .line 383
    .line 384
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    goto :goto_d

    .line 389
    :cond_17
    move-object v0, v1

    .line 390
    :goto_d
    const-string v2, "media_type"

    .line 391
    .line 392
    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {p2, v0, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    goto :goto_12

    .line 404
    :cond_18
    new-instance p2, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 405
    .line 406
    invoke-direct {p2}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    .line 407
    .line 408
    .line 409
    if-eqz p1, :cond_19

    .line 410
    .line 411
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    if-eqz v0, :cond_19

    .line 416
    .line 417
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    goto :goto_e

    .line 422
    :cond_19
    move-object v0, v1

    .line 423
    :goto_e
    invoke-virtual {p2, v0}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    if-eqz p1, :cond_1a

    .line 427
    .line 428
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    if-eqz v0, :cond_1a

    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    goto :goto_f

    .line 439
    :cond_1a
    move-object v0, v1

    .line 440
    :goto_f
    invoke-virtual {p2, v0}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    if-eqz p1, :cond_1b

    .line 444
    .line 445
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    if-eqz v0, :cond_1b

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUsername()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    goto :goto_10

    .line 456
    :cond_1b
    move-object v0, v1

    .line 457
    :goto_10
    invoke-virtual {p2, v0}, Lcom/transsnet/loginapi/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    if-eqz p1, :cond_1c

    .line 461
    .line 462
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    if-eqz v0, :cond_1c

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    goto :goto_11

    .line 473
    :cond_1c
    move-object v0, v1

    .line 474
    :goto_11
    invoke-virtual {p2, v0}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v0, "/profile/user_profile"

    .line 478
    .line 479
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    const-string v2, "userId"

    .line 484
    .line 485
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p2

    .line 489
    invoke-virtual {v0, v2, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 490
    .line 491
    .line 492
    move-result-object p2

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {p2, v0, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    const-string v1, "user_center"

    .line 501
    .line 502
    :cond_1d
    :goto_12
    if-eqz p1, :cond_1f

    .line 503
    .line 504
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 505
    .line 506
    if-eqz p2, :cond_1f

    .line 507
    .line 508
    if-nez v1, :cond_1e

    .line 509
    .line 510
    const-string v1, ""

    .line 511
    .line 512
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->subpageName()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    invoke-virtual {p2, p1, p3, v1, p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->J(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ILjava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    :cond_1f
    return-void
.end method

.method private static final initViewData$lambda$11$lambda$7$lambda$6(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->loadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final initViewData$lambda$11$lambda$8(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-wide/16 v1, 0x1f4

    .line 18
    .line 19
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of p2, p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->openDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->subpageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p2, p1, p3, p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->I(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method private final insertLast()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/enum/PostListSource;->SUBJECT:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 13
    .line 14
    if-ne v0, v2, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_2
    sget-object v2, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const-string v5, "SubjectDetailRecommendScene"

    .line 36
    .line 37
    invoke-static {v2, v5, v3, v4, v1}, Lcom/transsion/ad/scene/a;->o(Lcom/transsion/ad/scene/a;Ljava/lang/String;IILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-gt v3, v2, :cond_3

    .line 46
    .line 47
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v7, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;

    .line 52
    .line 53
    invoke-direct {v7, p0, v0, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$insertLast$1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    const/4 v8, 0x3

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLiveData$lambda$22$lambda$16(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0()Lep/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomApi_delegate$lambda$3()Lep/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initAd$lambda$60(Lcom/transsion/moviedetail/fragment/SubjectListFragment;ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final lazyLoadData()V
    .locals 4

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
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 14
    .line 15
    instance-of v0, v0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lep/k;->a:Lep/k;

    .line 20
    .line 21
    invoke-virtual {v0}, Lep/k;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 28
    .line 29
    const-string v2, "null cannot be cast to non-null type com.transsion.moviedetail.viewmodel.HotViewModel"

    .line 30
    .line 31
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v3, v1, v2, v3}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->c0(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;IILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->E(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getLocalNoNetworkView(Z)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method private final like(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 8
    .line 9
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->C(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 24
    .line 25
    sget p2, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private final loadMore()V
    .locals 4

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
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->E(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 19
    .line 20
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Llm/g;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/transsion/moviedetail/fragment/s1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/s1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v2, 0x1f4

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method private static final loadMore$lambda$42(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final localLogPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mExposureHelper:Lbj/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lbj/b;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic m0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mLoginApi_delegate$lambda$0()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final mAudioApi_delegate$lambda$1()Lep/a;
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

.method private static final mExposureList_delegate$lambda$4()Ljava/util/HashSet;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final mFloatApi_delegate$lambda$2()Lep/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/b;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final mLoginApi_delegate$lambda$0()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final mRoomApi_delegate$lambda$3()Lep/f;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/f;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/f;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initViewData$lambda$11$lambda$7$lambda$6(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final newInstance(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/transsion/moviedetail/fragment/SubjectListFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;",
            ">;)",
            "Lcom/transsion/moviedetail/fragment/SubjectListFragment;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->Companion:Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLiveData$lambda$22$lambda$20(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final observeComment()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/moviedetail/fragment/c2;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/moviedetail/fragment/c2;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lcom/transsion/user/action/sync/event/CommentEvent;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final observeComment$lambda$58(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, " callback change data fail "

    .line 2
    .line 3
    const-string v1, "value"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 12
    .line 13
    const/4 v5, -0x1

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    move v6, v3

    .line 27
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 38
    .line 39
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {p1}, Lcom/transsion/user/action/sync/event/CommentEvent;->getSubjectId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    move v5, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto/16 :goto_8

    .line 60
    .line 61
    :cond_1
    :goto_1
    if-ltz v5, :cond_8

    .line 62
    .line 63
    iget-object v4, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move-object v4, v2

    .line 81
    :goto_2
    if-eqz v4, :cond_6

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 84
    .line 85
    .line 86
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/user/action/sync/event/CommentEvent;->getStatus()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const-wide/16 v6, 0x1

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    goto :goto_3

    .line 108
    :catch_1
    move-exception p1

    .line 109
    goto :goto_5

    .line 110
    :cond_3
    const-wide/16 v8, 0x0

    .line 111
    .line 112
    :goto_3
    add-long/2addr v8, v6

    .line 113
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v4, p1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_4
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    move-wide v8, v6

    .line 133
    :goto_4
    sub-long/2addr v8, v6

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v4, p1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :goto_5
    :try_start_2
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v4, p1, v3, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    :goto_6
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 167
    .line 168
    if-eqz p0, :cond_8

    .line 169
    .line 170
    if-eqz p0, :cond_7

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    goto :goto_7

    .line 177
    :cond_7
    move p1, v3

    .line 178
    :goto_7
    add-int/2addr v5, p1

    .line 179
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_9

    .line 183
    :goto_8
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {p1, p0, v3, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_8
    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p0
.end method

.method private final observeDelete()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/moviedetail/fragment/r1;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/moviedetail/fragment/r1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lhx/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final observeDelete$lambda$51(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lhx/b;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move v3, v0

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1}, Lhx/b;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    move v2, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->checkToShowEmptyView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 68
    .line 69
    const/4 p1, 0x2

    .line 70
    const/4 v1, 0x0

    .line 71
    const-string v2, " callback change data fail"

    .line 72
    .line 73
    invoke-static {p0, v2, v0, p1, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0
.end method

.method private final observeLike()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/moviedetail/fragment/t1;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/moviedetail/fragment/t1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final observeLike$lambda$55(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "value"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 10
    .line 11
    const/4 v4, -0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move v5, v2

    .line 25
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getSubjectId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/2addr v5, v0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v5, v4

    .line 55
    :goto_1
    if-ltz v5, :cond_8

    .line 56
    .line 57
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move-object v3, v1

    .line 75
    :goto_2
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v3, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setHasLike(Ljava/lang/Boolean;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    if-eqz v3, :cond_6

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 91
    .line 92
    .line 93
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    goto :goto_3

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_5

    .line 111
    :cond_4
    const-wide/16 v6, 0x0

    .line 112
    .line 113
    :goto_3
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_5

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_5
    move v0, v4

    .line 121
    :goto_4
    int-to-long v8, v0

    .line 122
    add-long/2addr v6, v8

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v3, v0}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    .line 128
    .line 129
    .line 130
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    goto :goto_6

    .line 137
    :goto_5
    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 138
    .line 139
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 148
    .line 149
    .line 150
    :cond_6
    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 151
    .line 152
    if-eqz p0, :cond_8

    .line 153
    .line 154
    if-eqz p0, :cond_7

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    goto :goto_7

    .line 161
    :cond_7
    move v0, v2

    .line 162
    :goto_7
    add-int/2addr v5, v0

    .line 163
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p0, v5, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_8

    .line 175
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 176
    .line 177
    const-string p1, " callback change data fail"

    .line 178
    .line 179
    const/4 v0, 0x2

    .line 180
    invoke-static {p0, p1, v2, v0, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_8
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p0
.end method

.method private final onDownLoadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_2
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->requestPermission()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method private final openDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v2, Lio/b;

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lio/b;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v3

    .line 23
    :goto_0
    sget-object v4, Lcom/transsion/moviedetailapi/enum/PostListSource;->PROFILE:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 24
    .line 25
    if-eq v2, v4, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v1, p1}, Lio/b;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string v1, "/post/detail"

    .line 35
    .line 36
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "page_from"

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->pageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v1, v2, v5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "item_object"

    .line 51
    .line 52
    invoke-virtual {v1, v2, p1}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v2, v3

    .line 64
    :goto_1
    const-string v5, "rec_ops"

    .line 65
    .line 66
    invoke-virtual {v1, v5, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v2, v3

    .line 78
    :goto_2
    const-string v5, "id"

    .line 79
    .line 80
    invoke-virtual {v1, v5, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getItemType()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move-object v2, v3

    .line 92
    :goto_3
    const-string v5, "item_type"

    .line 93
    .line 94
    invoke-virtual {v1, v5, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_4

    .line 111
    :cond_5
    move-object p1, v3

    .line 112
    :goto_4
    const-string v2, "media_type"

    .line 113
    .line 114
    invoke-virtual {v1, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v1, "from_comment"

    .line 119
    .line 120
    invoke-virtual {p1, v1, p2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 125
    .line 126
    if-eqz p2, :cond_6

    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->A()Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    move-object p2, v3

    .line 134
    :goto_5
    if-eq p2, v4, :cond_7

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    :cond_7
    const-string p2, "video_load_more"

    .line 138
    .line 139
    invoke-virtual {p1, p2, v0}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    const/4 v0, 0x2

    .line 148
    invoke-static {p1, p2, v3, v0, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initViewData$lambda$11$lambda$10(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final pageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->curPageName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public static synthetic q0()Ljava/util/HashSet;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mExposureList_delegate$lambda$4()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic r0()Lep/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mFloatApi_delegate$lambda$2()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final removePost(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v4, v2, 0x1

    .line 27
    .line 28
    if-gez v2, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 31
    .line 32
    .line 33
    :cond_0
    check-cast v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v1, 0x2

    .line 50
    if-le p1, v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->checkToShowEmptyView()V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void

    .line 77
    :cond_2
    move v2, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method private final requestPermission()V
    .locals 2

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic s0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;I)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initListVideoPreload$lambda$61(Lcom/transsion/moviedetail/fragment/SubjectListFragment;I)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final share(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 17

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getMLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v2, v1

    .line 22
    :goto_1
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v2, v1

    .line 42
    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    :goto_3
    move v10, v0

    .line 50
    goto :goto_4

    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    goto :goto_3

    .line 53
    :goto_4
    sget-object v2, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 54
    .line 55
    sget-object v3, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    move-object v4, v0

    .line 64
    goto :goto_5

    .line 65
    :cond_4
    move-object v4, v1

    .line 66
    :goto_5
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v5, v0

    .line 79
    goto :goto_6

    .line 80
    :cond_5
    move-object v5, v1

    .line 81
    :goto_6
    sget-object v0, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_6
    move-object v7, v1

    .line 94
    const/16 v15, 0xd00

    .line 95
    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const-string v8, ""

    .line 99
    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const-string v12, "postdetail"

    .line 103
    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v14, 0x0

    .line 106
    invoke-static/range {v2 .. v16}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$e;

    .line 111
    .line 112
    move-object/from16 v2, p0

    .line 113
    .line 114
    invoke-direct {v1, v2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$e;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v3, "share"

    .line 125
    .line 126
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private final showAudioFloating(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 27

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v2, v1, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getAudio()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Ljava/util/Collection;

    .line 26
    .line 27
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v1, v3

    .line 39
    :goto_0
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Audio;

    .line 40
    .line 41
    const-string v4, ""

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    :cond_1
    move-object v5, v4

    .line 52
    :cond_2
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getDuration()Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v7, v3

    .line 60
    :goto_1
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getSize()Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    if-eqz v8, :cond_4

    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    int-to-long v8, v8

    .line 73
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move-object v8, v3

    .line 79
    :goto_2
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move-object v9, v3

    .line 87
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    if-nez v11, :cond_6

    .line 96
    .line 97
    move-object v11, v4

    .line 98
    :cond_6
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getBitrate()Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    move-object v12, v1

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    move-object v12, v3

    .line 107
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v18

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    move-object/from16 v19, v1

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_8
    move-object/from16 v19, v3

    .line 125
    .line 126
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_9

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    move-object/from16 v22, v1

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_9
    move-object/from16 v22, v3

    .line 140
    .line 141
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_a

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    move-object/from16 v20, v1

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_a
    move-object/from16 v20, v3

    .line 155
    .line 156
    :goto_7
    new-instance v1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 157
    .line 158
    move-object v4, v1

    .line 159
    const v25, 0xd1f00

    .line 160
    .line 161
    .line 162
    const/16 v26, 0x0

    .line 163
    .line 164
    const/4 v13, 0x0

    .line 165
    const/4 v14, 0x0

    .line 166
    const/4 v15, 0x0

    .line 167
    const/16 v16, 0x0

    .line 168
    .line 169
    const/16 v17, 0x0

    .line 170
    .line 171
    const/16 v21, 0x0

    .line 172
    .line 173
    const/16 v23, 0x0

    .line 174
    .line 175
    const/16 v24, 0x0

    .line 176
    .line 177
    invoke-direct/range {v4 .. v26}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 178
    .line 179
    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getMFloatApi()Lep/b;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-eqz v4, :cond_b

    .line 185
    .line 186
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 187
    .line 188
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Landroid/app/Activity;

    .line 193
    .line 194
    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v4, v5, v1}, Lep/b;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 198
    .line 199
    .line 200
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setOps(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getMAudioApi()Lep/a;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    const/4 v4, 0x2

    .line 214
    invoke-static {v0, v1, v2, v4, v3}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_c
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

.method private final subpageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_1
    const-string v0, ""

    .line 20
    .line 21
    :cond_2
    return-object v0
.end method

.method public static synthetic t0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initViewData$lambda$11$lambda$8(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final toWeb(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "/web/web"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "url"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic u0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLaunch$lambda$13(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final updateDeletePost(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const-string v2, "0"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    if-eqz v0, :cond_9

    .line 27
    .line 28
    check-cast v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_9

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    add-int/lit8 v3, v1, 0x1

    .line 46
    .line 47
    if-gez v1, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 50
    .line 51
    .line 52
    :cond_2
    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_7

    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/4 v0, 0x1

    .line 83
    if-ne p1, v0, :cond_4

    .line 84
    .line 85
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_2
    return-void

    .line 127
    :cond_7
    move v1, v3

    .line 128
    goto :goto_1

    .line 129
    :cond_8
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 130
    .line 131
    sget v0, Lcom/transsion/moviedetail/R$string;->delete_post_failed:I

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    :cond_9
    return-void
.end method

.method private final updateLikeStatus(Lcom/transsion/moviedetailapi/bean/LikeBean;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_6

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    add-int/lit8 v3, v1, 0x1

    .line 29
    .line 30
    if-gez v1, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 33
    .line 34
    .line 35
    :cond_0
    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/LikeBean;->isAffected()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_5

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/LikeBean;->getPostId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v3, 0x0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    xor-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-object v0, v3

    .line 82
    :goto_1
    invoke-virtual {v2, v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setHasLike(Ljava/lang/Boolean;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/LikeBean;->getLikes()Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    int-to-long v2, p1

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    :cond_2
    invoke-virtual {v0, v3}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void

    .line 117
    :cond_5
    move v1, v3

    .line 118
    goto :goto_0

    .line 119
    :cond_6
    return-void
.end method

.method private final updateSubjectList(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 6
    .line 7
    if-eqz v2, :cond_f

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    invoke-virtual {v2}, Lt6/f;->r()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v2, v0, :cond_f

    .line 20
    .line 21
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 22
    .line 23
    if-eqz v2, :cond_f

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_f

    .line 30
    .line 31
    invoke-virtual {v2}, Lt6/f;->v()V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_f

    .line 53
    .line 54
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    move-object v5, v3

    .line 75
    check-cast v5, Ljava/util/Collection;

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_6

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_9

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 98
    .line 99
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v6, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 107
    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    move-object v3, v2

    .line 118
    check-cast v3, Ljava/lang/Iterable;

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_8

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 135
    .line 136
    iget-object v6, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 137
    .line 138
    if-eqz v6, :cond_7

    .line 139
    .line 140
    invoke-virtual {v5, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_8
    check-cast v2, Ljava/util/Collection;

    .line 145
    .line 146
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/4 v3, 0x0

    .line 154
    if-eqz v2, :cond_b

    .line 155
    .line 156
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    invoke-static {p1, v1, v0, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_a
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->checkToShowEmptyView()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_b
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 174
    .line 175
    instance-of v2, v2, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 176
    .line 177
    if-eqz v2, :cond_e

    .line 178
    .line 179
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 180
    .line 181
    if-eqz v2, :cond_c

    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :cond_c
    check-cast v3, Ljava/util/Collection;

    .line 188
    .line 189
    if-eqz v3, :cond_d

    .line 190
    .line 191
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_e

    .line 196
    .line 197
    :cond_d
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 198
    .line 199
    const-string v3, "null cannot be cast to non-null type com.transsion.moviedetail.viewmodel.HotViewModel"

    .line 200
    .line 201
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    check-cast v2, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->d0()Landroidx/lifecycle/b0;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lcom/transsion/moviedetailapi/bean/RoomBean;

    .line 215
    .line 216
    if-eqz v2, :cond_e

    .line 217
    .line 218
    invoke-direct {p0, v2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getRecommendRoomsBean(Lcom/transsion/moviedetailapi/bean/RoomBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_e

    .line 223
    .line 224
    invoke-interface {v4, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_e
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 228
    .line 229
    if-eqz v2, :cond_f

    .line 230
    .line 231
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 232
    .line 233
    .line 234
    :cond_f
    :goto_2
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 235
    .line 236
    if-eqz v2, :cond_10

    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-eqz v2, :cond_10

    .line 243
    .line 244
    invoke-virtual {v2}, Lt6/f;->r()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-ne v2, v0, :cond_10

    .line 249
    .line 250
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 251
    .line 252
    if-eqz v0, :cond_10

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_10

    .line 259
    .line 260
    invoke-virtual {v0}, Lt6/f;->s()V

    .line 261
    .line 262
    .line 263
    :cond_10
    if-eqz p1, :cond_11

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-eqz p1, :cond_11

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 276
    .line 277
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    goto :goto_3

    .line 282
    :cond_11
    move p1, v1

    .line 283
    :goto_3
    if-eqz p1, :cond_13

    .line 284
    .line 285
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 286
    .line 287
    if-eqz p1, :cond_12

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    if-eqz p1, :cond_12

    .line 294
    .line 295
    invoke-virtual {p1, v1}, Lt6/f;->t(Z)V

    .line 296
    .line 297
    .line 298
    :cond_12
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 299
    .line 300
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->insertLast()V

    .line 301
    .line 302
    .line 303
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 304
    .line 305
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    goto :goto_4

    .line 310
    :catchall_0
    move-exception p1

    .line 311
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 312
    .line 313
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 322
    .line 323
    .line 324
    :cond_13
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->checkToShowEmptyView()V

    .line 325
    .line 326
    .line 327
    return-void
.end method

.method public static synthetic v0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/LikeBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLiveData$lambda$22$lambda$17(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/LikeBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->observeComment$lambda$58(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLiveData$lambda$22$lambda$21(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lhx/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->observeDelete$lambda$51(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lhx/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/RoomBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLiveData$lambda$22$lambda$14(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/RoomBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getEmptyView(Z)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mEmptyLayout:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/transsion/moviedetail/R$layout;->layout_hot_empty_view:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Llm/x;->a(Landroid/view/View;)Llm/x;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "bind(...)"

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 30
    .line 31
    instance-of v3, v3, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getMRoomApi()Lep/f;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v4, "getContext(...)"

    .line 50
    .line 51
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v4, Lcom/transsion/room/api/RoomsViewType;->TYPE_SUBJECT_DETAIL:Lcom/transsion/room/api/RoomsViewType;

    .line 55
    .line 56
    invoke-interface {v3, v2, v4}, Lep/f;->c(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Lep/e;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_0
    iput-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 61
    .line 62
    :cond_1
    iget-object v2, v1, Llm/x;->c:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mRoomView:Lep/e;

    .line 65
    .line 66
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v3}, Lep/e;->getView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v1, v1, Llm/x;->b:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    new-instance v8, Lcom/tn/lib/view/StateView;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "requireContext(...)"

    .line 85
    .line 86
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v8, v2}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getPageStateLayoutTitle()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyDescText()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const/4 v3, 0x2

    .line 101
    const/4 v4, 0x2

    .line 102
    move-object v2, v8

    .line 103
    move v5, p1

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/tn/lib/view/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mEmptyLayout:Landroid/view/View;

    .line 111
    .line 112
    :cond_3
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mEmptyLayout:Landroid/view/View;

    .line 113
    .line 114
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-object p1
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/transsion/moviedetail/R$layout;->layout_commnets_loading_view:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getFlStateView()Landroid/widget/FrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getLocalNoNetworkView(Z)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v0, Lcom/transsion/moviedetail/R$layout;->layout_state_view:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Llm/y;->a(Landroid/view/View;)Llm/y;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "bind(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Llm/y;->d:Landroid/widget/TextView;

    .line 26
    .line 27
    new-instance v1, Lcom/transsion/moviedetail/fragment/z1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/z1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "apply(...)"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->getViewBinding(Landroid/view/LayoutInflater;)Llm/g;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Llm/g;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Llm/g;->c(Landroid/view/LayoutInflater;)Llm/g;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initListener()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initExposureHelper()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewData()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initAd()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Llm/g;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Lcom/transsion/moviedetail/adapter/j;

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->pageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sget-object v4, Lqi/h;->a:Lqi/h;

    .line 42
    .line 43
    invoke-virtual {v4}, Lqi/h;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/moviedetail/adapter/j;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/transsion/moviedetail/view/SubjectCommentsLoadMoreView;

    .line 55
    .line 56
    invoke-direct {v2}, Lcom/transsion/moviedetail/view/SubjectCommentsLoadMoreView;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lt6/f;->C(Ls6/a;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/transsion/moviedetail/fragment/i2;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/i2;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/transsion/moviedetail/fragment/SubjectListFragment$d;

    .line 75
    .line 76
    invoke-direct {v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$d;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/transsion/moviedetail/fragment/j2;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/j2;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initScrollListener()V

    .line 91
    .line 92
    .line 93
    sget v2, Lcom/transsion/postdetail/R$id;->fl_cover:I

    .line 94
    .line 95
    sget v3, Lcom/transsion/postdetail/R$id;->tv_room_name:I

    .line 96
    .line 97
    sget v4, Lcom/transsion/postdetail/R$id;->tv_post_date:I

    .line 98
    .line 99
    sget v5, Lcom/transsion/postdetail/R$id;->v_post_like:I

    .line 100
    .line 101
    sget v6, Lcom/transsion/postdetail/R$id;->v_post_download:I

    .line 102
    .line 103
    sget v7, Lcom/transsion/postdetail/R$id;->v_post_comment:I

    .line 104
    .line 105
    sget v8, Lcom/transsion/postdetail/R$id;->v_post_share:I

    .line 106
    .line 107
    sget v9, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    .line 108
    .line 109
    sget v10, Lcom/transsion/postdetail/R$id;->tv_room_tag:I

    .line 110
    .line 111
    filled-new-array/range {v2 .. v10}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/transsion/moviedetail/fragment/p1;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/p1;-><init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Llm/g;

    .line 133
    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    iget-object v0, v0, Llm/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    .line 138
    if-eqz v0, :cond_1

    .line 139
    .line 140
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLiveData()V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initClickListener()V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->observeDelete()V

    .line 152
    .line 153
    .line 154
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->observeLike()V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->observeComment()V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initLaunch()V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initPlayer()V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->initListVideoPreload()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public initViewModel()V
    .locals 0

    .line 1
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->pageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "networkCapabilities"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x1

    .line 29
    if-ne p1, p2, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->lazyLoadData()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->loadMore()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "view_model_type"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    const-string v1, "null cannot be cast to non-null type java.lang.Class<com.transsion.moviedetailapi.AbsSubjectListViewModel>"

    .line 20
    .line 21
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p1, Ljava/lang/Class;

    .line 25
    .line 26
    new-instance v1, Landroidx/lifecycle/v0;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->F(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string v1, "page_name"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object p1, v0

    .line 62
    :goto_1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->curPageName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 69
    .line 70
    invoke-virtual {v1}, Lqi/h;->h()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->N(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 78
    .line 79
    instance-of p1, p1, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 80
    .line 81
    if-eqz p1, :cond_b

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 84
    .line 85
    .line 86
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const-string v1, ""

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    const-string v2, "subject_id"

    .line 98
    .line 99
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 100
    .line 101
    instance-of v4, v3, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 102
    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    check-cast v3, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v3, v0

    .line 109
    :goto_2
    if-eqz v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->f0()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    :cond_5
    move-object v3, v1

    .line 118
    :cond_6
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/String;

    .line 123
    .line 124
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_b

    .line 129
    .line 130
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    const-string v2, "ops"

    .line 137
    .line 138
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 139
    .line 140
    instance-of v4, v3, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 141
    .line 142
    if-eqz v4, :cond_8

    .line 143
    .line 144
    move-object v0, v3

    .line 145
    check-cast v0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;

    .line 146
    .line 147
    :cond_8
    if-eqz v0, :cond_a

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->Z()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-nez v0, :cond_9

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_9
    move-object v1, v0

    .line 157
    :cond_a
    :goto_3
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    .line 163
    :catch_0
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_c

    .line 168
    .line 169
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_c

    .line 174
    .line 175
    const-string v0, "subpage_name"

    .line 176
    .line 177
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->subpageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Ljava/lang/String;

    .line 186
    .line 187
    :cond_c
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->postDetailLauncher:Landroidx/activity/result/b;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/activity/result/b;->c()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->middleListManager:Lcom/transsion/ad/bidding/nativead/BiddingListManager;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingListManager;->o()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->nativeManager:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 30
    .line 31
    .line 32
    :cond_3
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
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->localLogPause()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    const/16 v5, 0x9

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v2, p0

    .line 28
    move v3, p1

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
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

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->localLogPause()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->k()V

    .line 12
    .line 13
    .line 14
    :cond_0
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
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    array-length p1, p3

    .line 23
    const/4 p2, 0x1

    .line 24
    if-le p1, p2, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    aget p1, p3, p1

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    aget p1, p3, p2

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    sget-object p1, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mPostSubjectItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->showSettingDialog()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->l()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->isFirst:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->isFirst:Z

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->lazyLoadData()V

    .line 19
    .line 20
    .line 21
    :cond_1
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

.method public onScreenChange(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->localLogPause()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final refresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mHotViewModel:Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->F(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mAdapter:Lcom/transsion/moviedetail/adapter/j;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/moviedetail/adapter/j;->Q1()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->m()V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->lazyLoadData()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->lazyLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
