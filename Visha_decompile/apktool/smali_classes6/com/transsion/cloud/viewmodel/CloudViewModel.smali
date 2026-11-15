.class public Lcom/transsion/cloud/viewmodel/CloudViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/viewmodel/CloudViewModel$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 \u0081\u00012\u00020\u0001:\u0001JB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\n\u001a\u00020\t2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0082@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\t2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJq\u0010\u0019\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112:\u0008\u0002\u0010\u0018\u001a4\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0006\u0012\u0004\u0012\u00020\t\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\r\u0010\u001e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\r\u0010\u001f\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001f\u0010\u001cJ\u0015\u0010!\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0011\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\t\u00a2\u0006\u0004\u0008#\u0010\u001cJ\u0017\u0010&\u001a\u00020\t2\u0008\u0010%\u001a\u0004\u0018\u00010$\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020(\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008,\u0010\u001cJ\u000f\u0010-\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008-\u0010\u001cJ?\u0010/\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112\u0008\u0008\u0002\u0010.\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008/\u00100J!\u00103\u001a\u00020\t2\u0008\u00101\u001a\u0004\u0018\u00010\u00072\u0008\u00102\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020\t2\u0008\u00101\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u00085\u00106J\r\u00107\u001a\u00020\t\u00a2\u0006\u0004\u00087\u0010\u001cJ\r\u00108\u001a\u00020\t\u00a2\u0006\u0004\u00088\u0010\u001cJ \u00109\u001a\u00020\t2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0086@\u00a2\u0006\u0004\u00089\u0010\u000bJ!\u0010<\u001a\u00020\t2\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0:\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\t\u00a2\u0006\u0004\u0008>\u0010\u001cJ\r\u0010?\u001a\u00020\t\u00a2\u0006\u0004\u0008?\u0010\u001cJ=\u0010@\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112\u0008\u0008\u0002\u0010.\u001a\u00020\u0013\u00a2\u0006\u0004\u0008@\u00100J\r\u0010A\u001a\u00020\t\u00a2\u0006\u0004\u0008A\u0010\u001cJ#\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008C\u0010DR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0017\u0010N\u001a\u00020I8\u0006\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR9\u0010V\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020Q\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0011\u0018\u00010P0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR#\u0010Y\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060O8\u0006\u00a2\u0006\u000c\n\u0004\u0008W\u0010S\u001a\u0004\u0008X\u0010UR#\u0010\\\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00060O8\u0006\u00a2\u0006\u000c\n\u0004\u0008Z\u0010S\u001a\u0004\u0008[\u0010UR#\u0010_\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060O8\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u0010S\u001a\u0004\u0008^\u0010UR)\u0010c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020\u00130`0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008a\u0010S\u001a\u0004\u0008b\u0010UR\u001d\u0010g\u001a\u0008\u0012\u0004\u0012\u00020d0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008e\u0010S\u001a\u0004\u0008f\u0010UR\u001d\u0010k\u001a\u0008\u0012\u0004\u0012\u00020h0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008i\u0010S\u001a\u0004\u0008j\u0010UR\u001d\u0010n\u001a\u0008\u0012\u0004\u0012\u00020Q0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010S\u001a\u0004\u0008m\u0010UR\u001d\u0010r\u001a\u0008\u0012\u0004\u0012\u00020o0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008p\u0010S\u001a\u0004\u0008q\u0010UR)\u0010u\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020Q0`0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008s\u0010S\u001a\u0004\u0008t\u0010UR\u001d\u0010w\u001a\u0008\u0012\u0004\u0012\u00020Q0O8\u0006\u00a2\u0006\u000c\n\u0004\u00088\u0010S\u001a\u0004\u0008v\u0010UR\u001d\u0010y\u001a\u0008\u0012\u0004\u0012\u00020Q0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010S\u001a\u0004\u0008x\u0010UR\u001d\u0010|\u001a\u0008\u0012\u0004\u0012\u00020z0O8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010S\u001a\u0004\u0008{\u0010UR\u0016\u0010~\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010}R\u0016\u0010\u007f\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010}R\'\u0010\u0084\u0001\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\n\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0005\u0008\u0083\u0001\u0010\"R+\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008,\u0010\u0086\u0001\u001a\u0006\u0008\u0080\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001R)\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u00087\u0010\u008b\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0005\u0008\u008e\u0001\u00106R)\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008/\u0010\u008b\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u008d\u0001\"\u0005\u0008\u0091\u0001\u00106R(\u0010\u0096\u0001\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0093\u0001\u0010\u0080\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0082\u0001\"\u0005\u0008\u0095\u0001\u0010\"R#\u0010\u009b\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0098\u0001\u0018\u00010\u0097\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\'\u0010\u00a0\u0001\u001a\u00020Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008\u0019\u0010\u0010\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001\"\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\'\u0010\u00a3\u0001\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008A\u0010\u0080\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u0082\u0001\"\u0005\u0008\u00a2\u0001\u0010\"R+\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00a4\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008*\u0010\u00a5\u0001\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\"\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u001b\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u00ab\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008T\u0010\u00ac\u0001R\u001b\u0010\u00b0\u0001\u001a\u0005\u0018\u00010\u00ae\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008[\u0010\u00af\u0001R\u0017\u0010\u00b1\u0001\u001a\u00020Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010\u0010R(\u0010\u00b6\u0001\u001a\u00020o8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008f\u0010\u009c\u0001\u001a\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001\"\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R,\u0010\u00bd\u0001\u001a\u0005\u0018\u00010\u00b7\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a6\u0001\u0010\u00b8\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001\"\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\'\u0010\u00c0\u0001\u001a\u00020Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008L\u0010\u0010\u001a\u0006\u0008\u00be\u0001\u0010\u009d\u0001\"\u0006\u0008\u00bf\u0001\u0010\u009f\u0001\u00a8\u0006\u00c1\u0001"
    }
    d2 = {
        "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "videoList",
        "Lzfb;",
        "r",
        "(Ljava/util/List;Lwh1;)Ljava/lang/Object;",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "list",
        "a0",
        "(Ljava/util/List;)V",
        "Z",
        "",
        "pageNo",
        "",
        "sortField",
        "sortBy",
        "dataType",
        "Lkotlin/Function3;",
        "onSuccess",
        "x",
        "(ILjava/lang/String;Ljava/lang/String;ILu74;)V",
        "n",
        "()V",
        "f0",
        "Y",
        "g0",
        "page",
        "i0",
        "(I)V",
        "q0",
        "Landroid/app/Activity;",
        "activity",
        "d0",
        "(Landroid/app/Activity;)V",
        "Landroid/content/Context;",
        "context",
        "z",
        "(Landroid/content/Context;)V",
        "s",
        "W",
        "searchText",
        "u",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V",
        "videoCloudData",
        "nameFileName",
        "h0",
        "(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;)V",
        "p",
        "(Lcom/transsion/dbdata/beans/VideoCloudData;)V",
        "t",
        "m",
        "r0",
        "Lkotlin/Function1;",
        "onCallback",
        "X",
        "(Le74;)V",
        "p0",
        "o",
        "b0",
        "y",
        "recentlyList",
        "q",
        "(Ljava/util/List;)Ljava/util/List;",
        "Lhk1;",
        "a",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lnk1;",
        "b",
        "Lnk1;",
        "F",
        "()Lnk1;",
        "mCoroutineScope",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Triple;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "A",
        "()Landroidx/lifecycle/MutableLiveData;",
        "mCloudDataList",
        "d",
        "C",
        "mCloudRecentlyList",
        "e",
        "B",
        "mCloudFavoriteList",
        "f",
        "O",
        "mLocalList",
        "Lkotlin/Pair;",
        "g",
        "P",
        "mLoginState",
        "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
        "h",
        "D",
        "mCloudStorageInfo",
        "Lcom/transsion/dbdata/beans/FileHandlerData;",
        "i",
        "getMFileHandler",
        "mFileHandler",
        "j",
        "Q",
        "mNoContentLiveData",
        "",
        "k",
        "U",
        "mShowStorageNoEnough",
        "l",
        "V",
        "mSowNetException",
        "M",
        "mLoadingLiveData",
        "N",
        "mLoadingNextPageError",
        "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;",
        "H",
        "mFreeSpaceInfo",
        "Ljava/lang/String;",
        "mSortFiled",
        "mSortType",
        "I",
        "G",
        "()I",
        "setMCurrentPage",
        "mCurrentPage",
        "Lsq3$a;",
        "Lsq3$a;",
        "()Lsq3$a;",
        "setMIFileOperateListener",
        "(Lsq3$a;)V",
        "mIFileOperateListener",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "T",
        "()Lcom/transsion/dbdata/beans/VideoCloudData;",
        "o0",
        "mSelectedItemData",
        "K",
        "k0",
        "mLastPlayItemData",
        "v",
        "getMLastPlayItemPosition",
        "l0",
        "mLastPlayItemPosition",
        "Lxy0;",
        "Lcom/transsion/cloud_drive/base/api/model/FileInfo;",
        "w",
        "Lxy0;",
        "mCloudManager",
        "J",
        "()Z",
        "setMIsUploadSelectModel",
        "(Z)V",
        "mIsUploadSelectModel",
        "R",
        "setMPageSize",
        "mPageSize",
        "Lcom/transsion/cloudcore/db/CloudTaskDao;",
        "Lcom/transsion/cloudcore/db/CloudTaskDao;",
        "E",
        "()Lcom/transsion/cloudcore/db/CloudTaskDao;",
        "setMCloudTaskDao",
        "(Lcom/transsion/cloudcore/db/CloudTaskDao;)V",
        "mCloudTaskDao",
        "Lapb;",
        "Lapb;",
        "mVideoCloudData",
        "Lhw5;",
        "Lhw5;",
        "mFavoriteDao",
        "mHaveLoadedCache",
        "L",
        "()J",
        "m0",
        "(J)V",
        "mLastUpdateTime",
        "Lcom/transsion/dbdata/beans/CloudResponseModel;",
        "Lcom/transsion/dbdata/beans/CloudResponseModel;",
        "getMCloudResponseModel",
        "()Lcom/transsion/dbdata/beans/CloudResponseModel;",
        "j0",
        "(Lcom/transsion/dbdata/beans/CloudResponseModel;)V",
        "mCloudResponseModel",
        "S",
        "n0",
        "mRetryRefreshToken",
        "clouddrive_release"
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
.field public static final G:Lcom/transsion/cloud/viewmodel/CloudViewModel$b;


# instance fields
.field public A:Lapb;

.field public B:Lhw5;

.field public C:Z

.field public D:J

.field public E:Lcom/transsion/dbdata/beans/CloudResponseModel;

.field public F:Z

.field public final a:Lhk1;

.field public final b:Lnk1;

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public final d:Landroidx/lifecycle/MutableLiveData;

.field public final e:Landroidx/lifecycle/MutableLiveData;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;

.field public final h:Landroidx/lifecycle/MutableLiveData;

.field public final i:Landroidx/lifecycle/MutableLiveData;

.field public final j:Landroidx/lifecycle/MutableLiveData;

.field public final k:Landroidx/lifecycle/MutableLiveData;

.field public final l:Landroidx/lifecycle/MutableLiveData;

.field public final m:Landroidx/lifecycle/MutableLiveData;

.field public final n:Landroidx/lifecycle/MutableLiveData;

.field public final o:Landroidx/lifecycle/MutableLiveData;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Lsq3$a;

.field public t:Lcom/transsion/dbdata/beans/VideoCloudData;

.field public u:Lcom/transsion/dbdata/beans/VideoCloudData;

.field public v:I

.field public w:Lxy0;

.field public x:Z

.field public y:I

.field public z:Lcom/transsion/cloudcore/db/CloudTaskDao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->G:Lcom/transsion/cloud/viewmodel/CloudViewModel$b;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    const-string v0, "application"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$c;

    invoke-direct {v1, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel$c;-><init>(Lhk1$b;)V

    iput-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->a:Lhk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "create_at"

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p:Ljava/lang/String;

    const-string v0, "DESC"

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q:Ljava/lang/String;

    iput v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    new-instance v0, Lv41;

    invoke-direct {v0, p0}, Lv41;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->s:Lsq3$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->y:I

    :try_start_0
    sget-object v0, La41;->a:La41;

    invoke-virtual {v0, p1}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->w:Lxy0;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->cloudTaskDao()Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->z:Lcom/transsion/cloudcore/db/CloudTaskDao;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->videoCloudCacheDao()Lapb;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A:Lapb;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->miMediaLibraryCacheDao()Lhw5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->B:Lhw5;

    invoke-static {}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    move-result-object p1

    new-instance v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$a;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel$a;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->setOnCloudStorageInsufficientListener(Loe7;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/cloud/viewmodel/CloudViewModel;IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->w(Lcom/transsion/cloud/viewmodel/CloudViewModel;IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/cloud/viewmodel/CloudViewModel;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->e0(Lcom/transsion/cloud/viewmodel/CloudViewModel;Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n()V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p:Ljava/lang/String;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q:Ljava/lang/String;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_3

    const-string p5, ""

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b0(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadCloudDataSequentially"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic d(Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r(Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lxy0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->w:Lxy0;

    return-object p0
.end method

.method public static final e0(Lcom/transsion/cloud/viewmodel/CloudViewModel;Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Y()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lhw5;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->B:Lhw5;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C:Z

    return p0
.end method

.method public static final synthetic h(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lapb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A:Lapb;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Z(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->a0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->f0()V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/cloud/viewmodel/CloudViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C:Z

    return-void
.end method

.method public static synthetic v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p:Ljava/lang/String;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q:Ljava/lang/String;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_3

    const-string p5, ""

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->u(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCloudVideoDataList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final w(Lcom/transsion/cloud/viewmodel/CloudViewModel;IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lzfb;
    .locals 9

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move-object v0, p5

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_4

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lkotlin/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string p0, "CloudViewModel"

    const-string p1, "getDataFromCache mSowNetException.postValue(true)"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v0

    new-instance v8, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$1$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$1$1;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;ILjava/util/List;Lwh1;)V

    const/4 p4, 0x2

    const/4 p5, 0x0

    const/4 p3, 0x0

    move-object p0, p2

    move-object p1, v0

    move-object p2, p3

    move-object p3, v8

    invoke-static/range {p0 .. p5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final B()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final E()Lcom/transsion/cloudcore/db/CloudTaskDao;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->z:Lcom/transsion/cloudcore/db/CloudTaskDao;

    return-object p0
.end method

.method public final F()Lnk1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    return-object p0
.end method

.method public final G()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    return p0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final I()Lsq3$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->s:Lsq3$a;

    return-object p0
.end method

.method public final J()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->x:Z

    return p0
.end method

.method public final K()Lcom/transsion/dbdata/beans/VideoCloudData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->u:Lcom/transsion/dbdata/beans/VideoCloudData;

    return-object p0
.end method

.method public final L()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D:J

    return-wide v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final P()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final Q()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final R()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->y:I

    return p0
.end method

.method public final S()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->F:Z

    return p0
.end method

.method public final T()Lcom/transsion/dbdata/beans/VideoCloudData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t:Lcom/transsion/dbdata/beans/VideoCloudData;

    return-object p0
.end method

.method public final U()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final V()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public W()V
    .locals 4

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    sget-object v1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->isSupportMIMediaLibrary()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getRecentPlayDataList(IIZ)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getRecentPlayList$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final X(Le74;)V
    .locals 7

    const-string v0, "onCallback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v4, Lcom/transsion/cloud/viewmodel/CloudViewModel$getShowDownloadTipsCount$1;

    const/4 p0, 0x0

    invoke-direct {v4, p1, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getShowDownloadTipsCount$1;-><init>(Le74;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final Y()V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->l()Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result v0

    const-string v1, "create_at"

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "duration"

    goto :goto_0

    :cond_1
    const-string v1, "size"

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ASC"

    goto :goto_1

    :cond_3
    const-string v0, "DESC"

    :goto_1
    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q:Ljava/lang/String;

    return-void
.end method

.method public final Z(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-static {v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->fromVideoCloudData(Lcom/transsion/dbdata/beans/VideoCloudData;)Lcom/transsion/dbdata/beans/VideoCloudCache;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A:Lapb;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lapb;->insertCaches(Ljava/util/List;)Ljava/util/List;

    :cond_3
    return-void
.end method

.method public final a0(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$insertFavoriteToCache$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$insertFavoriteToCache$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final b0(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    const-string v0, "sortField"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortBy"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchText"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    new-instance v9, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lwh1;)V

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move-object p0, v0

    move-object p3, v9

    invoke-static/range {p0 .. p5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final d0(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/transsion/palmsdk/b;->g(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final f0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v4, Lcom/transsion/cloud/viewmodel/CloudViewModel$refreshFilteredCloudRecentlyList$1;

    const/4 v3, 0x0

    invoke-direct {v4, p0, v0, v3}, Lcom/transsion/cloud/viewmodel/CloudViewModel$refreshFilteredCloudRecentlyList$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Ljava/util/List;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final g0()V
    .locals 1

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    return-void
.end method

.method public final h0(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$renameFile$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final i0(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->r:I

    return-void
.end method

.method public final j0(Lcom/transsion/dbdata/beans/CloudResponseModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->E:Lcom/transsion/dbdata/beans/CloudResponseModel;

    return-void
.end method

.method public final k0(Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->u:Lcom/transsion/dbdata/beans/VideoCloudData;

    return-void
.end method

.method public final l0(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v:I

    return-void
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final m0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D:J

    return-void
.end method

.method public final n()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A:Lapb;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lapb;->deleteCommonData()I

    :cond_0
    return-void
.end method

.method public final n0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->F:Z

    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$deleteAllCloudTaskRecords$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$deleteAllCloudTaskRecords$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/transsion/playercommon/core/MainApp;->s:Z

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p0

    invoke-virtual {p0}, Lri4;->l()V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->l()V

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final o0(Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t:Lcom/transsion/dbdata/beans/VideoCloudData;

    return-void
.end method

.method public final p(Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 6

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$deleteFile$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$deleteFile$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lcom/transsion/dbdata/beans/VideoCloudData;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final p0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$setShowDownloadTipsFinish$1;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel$setShowDownloadTipsFinish$1;-><init>(Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public q(Ljava/util/List;)Ljava/util/List;
    .locals 4

    const-string p0, "recentlyList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    sget-object v1, Lfpb;->a:Lfpb;

    invoke-virtual {v1, v2}, Lfpb;->h(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final q0()V
    .locals 3

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->j()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 2

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object p0

    new-instance v0, Lcom/transsion/cloud/viewmodel/CloudViewModel$filterLocalVideoList$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$filterLocalVideoList$2;-><init>(Ljava/util/List;Lwh1;)V

    invoke-static {p0, v0, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final r0(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$updateVideoCovers$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$updateVideoCovers$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public s()V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getUserCollectDataList(II)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudFavorite$1;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudFavorite$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final t()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudStorageInfo$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudStorageInfo$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public u(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v2, p0

    move/from16 v11, p4

    const-string v0, "sortField"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortBy"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchText"

    move-object/from16 v14, p5

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz v11, :cond_1

    if-eq v11, v0, :cond_1

    const/4 v1, 0x3

    if-ne v11, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Y()V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, v2, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p:Ljava/lang/String;

    move-object v6, v3

    goto :goto_2

    :cond_3
    move-object v6, v12

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q:Ljava/lang/String;

    move-object v7, v1

    goto :goto_3

    :cond_4
    move-object v7, v13

    :goto_3
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v5, Lu41;

    move/from16 v15, p1

    invoke-direct {v5, v2, v15, v11}, Lu41;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;II)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->x(ILjava/lang/String;Ljava/lang/String;ILu74;)V

    return-void

    :cond_5
    move/from16 v15, p1

    iget-object v1, v2, Lcom/transsion/cloud/viewmodel/CloudViewModel;->E:Lcom/transsion/dbdata/beans/CloudResponseModel;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/CloudResponseModel;->getMaxId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_4

    :cond_6
    move-wide v8, v3

    :goto_4
    new-instance v1, Lcom/transsion/playercommon/data/CloudRequestData;

    if-ne v11, v0, :cond_7

    move-wide v9, v8

    goto :goto_5

    :cond_7
    move-wide v9, v3

    :goto_5
    move-object v3, v1

    move/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v8, p4

    invoke-direct/range {v3 .. v10}, Lcom/transsion/playercommon/data/CloudRequestData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v3, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v3}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getVideoList(Lcom/transsion/playercommon/data/CloudRequestData;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v7

    new-instance v8, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;

    move-object v0, v8

    move/from16 v1, p4

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getCloudVideoDataList$2;-><init>(ILcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final x(ILjava/lang/String;Ljava/lang/String;ILu74;)V
    .locals 11

    move-object v1, p0

    iget-object v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v9

    new-instance v10, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;

    const/4 v7, 0x0

    move-object v0, v10

    move v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getDataFromCache$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;IILjava/lang/String;Ljava/lang/String;Lu74;Lwh1;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object p0, v8

    move-object p1, v9

    move-object p2, v2

    move-object p3, v10

    move p4, v0

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final y()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudViewModel$getFreeSpaceInfo$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getFreeSpaceInfo$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final z(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v4, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$getLocalVideoDataList$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
