.class public final Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ-\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J)\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J)\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J)\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010\u001d\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ)\u0010 \u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u001f\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\"\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010&\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020%\u00a2\u0006\u0004\u0008&\u0010\'J\u001b\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020(\u00a2\u0006\u0004\u0008)\u0010*J\u0015\u0010,\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020+\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010/\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020.\u00a2\u0006\u0004\u0008/\u00100J\u001b\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u000201\u00a2\u0006\u0004\u00082\u00103J\u0015\u00105\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000204\u00a2\u0006\u0004\u00085\u00106J\u001b\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u000207\u00a2\u0006\u0004\u00088\u00109J\u0015\u0010;\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020:\u00a2\u0006\u0004\u0008;\u0010<J\u0015\u0010>\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020=\u00a2\u0006\u0004\u0008>\u0010?J\u0015\u0010A\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020@\u00a2\u0006\u0004\u0008A\u0010BJ\u0015\u0010D\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020C\u00a2\u0006\u0004\u0008D\u0010EJ\u001b\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020F\u00a2\u0006\u0004\u0008D\u0010GJ\u0015\u0010I\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020H\u00a2\u0006\u0004\u0008I\u0010JJ\u0015\u0010L\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020K\u00a2\u0006\u0004\u0008L\u0010MJ)\u0010O\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020N\u00a2\u0006\u0004\u0008O\u0010PJ)\u0010R\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020Q\u00a2\u0006\u0004\u0008R\u0010SJ)\u0010U\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020T\u00a2\u0006\u0004\u0008U\u0010VJ\u000f\u0010X\u001a\u0004\u0018\u00010W\u00a2\u0006\u0004\u0008X\u0010YJ\u0015\u0010[\u001a\n\u0012\u0004\u0012\u00020Z\u0018\u00010\u0004\u00a2\u0006\u0004\u0008[\u0010\\J1\u0010a\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020`0\u0004\u0018\u00010\u00132\u0006\u0010^\u001a\u00020]2\u0006\u0010_\u001a\u00020]\u00a2\u0006\u0004\u0008a\u0010bJ\u000f\u0010c\u001a\u0004\u0018\u00010`\u00a2\u0006\u0004\u0008c\u0010dJ\u0017\u0010g\u001a\u0004\u0018\u00010f2\u0006\u0010\u000f\u001a\u00020e\u00a2\u0006\u0004\u0008g\u0010hJ\u0017\u0010j\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020i\u00a2\u0006\u0004\u0008j\u0010kJ\u0017\u0010m\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020l\u00a2\u0006\u0004\u0008m\u0010nJ\u0015\u0010p\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020o\u00a2\u0006\u0004\u0008p\u0010qJ\u001b\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020r\u00a2\u0006\u0004\u0008s\u0010tJ\r\u0010u\u001a\u00020\u0005\u00a2\u0006\u0004\u0008u\u0010vJ\u0017\u0010x\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020w\u00a2\u0006\u0004\u0008x\u0010yJ\u0015\u0010{\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020z\u00a2\u0006\u0004\u0008{\u0010|J!\u0010~\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020}0\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0019\u0010\u0081\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u0080\u0001\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u0019\u0010\u0084\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u0083\u0001\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J-\u0010\u0087\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020}0\u0004\u0018\u00010\u00132\u0007\u0010\u000f\u001a\u00030\u0086\u0001\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J\u0019\u0010\u008a\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u0089\u0001\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u008b\u0001J\u0019\u0010\u008d\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u008c\u0001\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001J\u0019\u0010\u0090\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u008f\u0001\u00a2\u0006\u0006\u0008\u0090\u0001\u0010\u0091\u0001J\u0012\u0010\u0092\u0001\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001R!\u0010\u0099\u0001\u001a\u00030\u0094\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001R!\u0010\u009e\u0001\u001a\u00030\u009a\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u009b\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001R!\u0010\u00a3\u0001\u001a\u00030\u009f\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a0\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R!\u0010\u00a8\u0001\u001a\u00030\u00a4\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a5\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R!\u0010\u00ad\u0001\u001a\u00030\u00a9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00aa\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R!\u0010\u00b2\u0001\u001a\u00030\u00ae\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00af\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R!\u0010\u00b7\u0001\u001a\u00030\u00b3\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b4\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R!\u0010\u00bc\u0001\u001a\u00030\u00b8\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b9\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R!\u0010\u00c1\u0001\u001a\u00030\u00bd\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00be\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R!\u0010\u00c6\u0001\u001a\u00030\u00c2\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c3\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R!\u0010\u00cb\u0001\u001a\u00030\u00c7\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c8\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001\u00a8\u0006\u00cc\u0001"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;",
        "",
        "<init>",
        "()V",
        "",
        "",
        "mediaIds",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "handleExclusionCase",
        "(Ljava/util/List;)Ljava/util/List;",
        "",
        "displayName",
        "handleInclusionCase",
        "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;",
        "Lxk8$x;",
        "action",
        "querySingle",
        "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lxk8$c;",
        "Lkotlin/Pair;",
        "queryAllMediaList",
        "(Lxk8$c;)Lkotlin/Pair;",
        "Lxk8$i;",
        "queryBucketMediaList",
        "(Lxk8$i;)Lkotlin/Pair;",
        "Lxk8$o;",
        "queryMediaListByMediaIds",
        "(Lxk8$o;)Lkotlin/Pair;",
        "Lxk8$u;",
        "queryPlayListMedia",
        "(Lxk8$u;)Lkotlin/Pair;",
        "Lxk8$w;",
        "search",
        "(Lxk8$w;)Lkotlin/Pair;",
        "Lb15$e;",
        "createPlayList",
        "(Lb15$e;)I",
        "Lb15$f;",
        "addPlayListElement",
        "(Lb15$f;)I",
        "Lb15$g;",
        "addPlayListElements",
        "(Lb15$g;)Ljava/util/List;",
        "Ld82$g;",
        "deletePlayList",
        "(Ld82$g;)I",
        "Ld82$h;",
        "deletePlayListElement",
        "(Ld82$h;)I",
        "Ld82$i;",
        "deletePlayListElements",
        "(Ld82$i;)Ljava/util/List;",
        "Ld82$k;",
        "deleteSystemMediaItem",
        "(Ld82$k;)I",
        "Ld82$l;",
        "deleteSystemMediaItems",
        "(Ld82$l;)Ljava/util/List;",
        "Lngb$d;",
        "updatePlayListName",
        "(Lngb$d;)I",
        "Lngb$e;",
        "updateMediaItemName",
        "(Lngb$e;)I",
        "Lngb$g;",
        "updatePlayRecord",
        "(Lngb$g;)I",
        "Lb15$l;",
        "insertVideoConvertingAudio",
        "(Lb15$l;)I",
        "Lb15$m;",
        "(Lb15$m;)Ljava/util/List;",
        "Ld82$n;",
        "deleteVideoConvertingAudio",
        "(Ld82$n;)I",
        "Lngb$f;",
        "updateVideoConvertingAudio",
        "(Lngb$f;)I",
        "Lxk8$j;",
        "queryConvertingVideoList",
        "(Lxk8$j;)Lkotlin/Pair;",
        "Lxk8$p;",
        "queryParentPathMediaList",
        "(Lxk8$p;)Lkotlin/Pair;",
        "Lxk8$q;",
        "queryVideoListByPaths",
        "(Lxk8$q;)Lkotlin/Pair;",
        "Lcom/transsion/dbdata/beans/media/VideoTotalTrack;",
        "getVideoTotalTrack",
        "()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;",
        "Lcom/transsion/dbdata/beans/media/VideoInfoTrack;",
        "getVideoInfoTrack",
        "()Ljava/util/List;",
        "",
        "includeRecent",
        "includeFavorite",
        "Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "queryAllPlayList",
        "(ZZ)Lkotlin/Pair;",
        "queryFavoritePlayListItem",
        "()Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "Lxk8$t;",
        "Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "queryPlayMediaListItem",
        "(Lxk8$t;)Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "Lxk8$c0;",
        "queryOnlinePlayHistory",
        "(Lxk8$c0;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lxk8$v;",
        "queryPlayListOnlineElement",
        "(Lxk8$v;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Ld82$e;",
        "deleteVideoPlayHistory",
        "(Ld82$e;)I",
        "Ld82$f;",
        "deleteBatchVideoPlayHistory",
        "(Ld82$f;)Ljava/util/List;",
        "deleteAllVideoPlayHistory",
        "()I",
        "Lxk8$b0;",
        "queryAudioTrack",
        "(Lxk8$b0;)Ljava/lang/String;",
        "Lb15$k;",
        "insertAudioTrack",
        "(Lb15$k;)I",
        "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
        "querySystemSubtitle",
        "()Lkotlin/Pair;",
        "Lb15$c;",
        "insertDownloadSubtitleRecord",
        "(Lb15$c;)I",
        "Ld82$b;",
        "deleteDownloadSubtitleRecord",
        "(Ld82$b;)I",
        "Lxk8$z;",
        "querySubtitleUsageRecordList",
        "(Lxk8$z;)Lkotlin/Pair;",
        "Lb15$i;",
        "insertSubtitleUsageRecord",
        "(Lb15$i;)I",
        "Ld82$j;",
        "deleteSubtitleUsageRecord",
        "(Ld82$j;)I",
        "Lb15$h;",
        "insertSubtitleSetting",
        "(Lb15$h;)I",
        "querySubtitleSetting",
        "()Ljava/lang/String;",
        "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository$delegate",
        "Lyi5;",
        "getMVideoQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository$delegate",
        "getMFileQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;",
        "mPlayListRepository$delegate",
        "getMPlayListRepository",
        "()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;",
        "mPlayListRepository",
        "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;",
        "mVideoRecordRepository$delegate",
        "getMVideoRecordRepository",
        "()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;",
        "mVideoRecordRepository",
        "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository$delegate",
        "getMAudioQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository$delegate",
        "getMAudioMVRepository",
        "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;",
        "mAudioPlayRecordRepository$delegate",
        "getMAudioPlayRecordRepository",
        "()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;",
        "mAudioPlayRecordRepository",
        "Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;",
        "mUserBehaviorRepository$delegate",
        "getMUserBehaviorRepository",
        "()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;",
        "mUserBehaviorRepository",
        "Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;",
        "mMediaConvertRepository$delegate",
        "getMMediaConvertRepository",
        "()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;",
        "mMediaConvertRepository",
        "Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;",
        "mMediaDataMissingRepository$delegate",
        "getMMediaDataMissingRepository",
        "()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;",
        "mMediaDataMissingRepository",
        "Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;",
        "mSubtitleRepository$delegate",
        "getMSubtitleRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;",
        "mSubtitleRepository",
        "dbdata_release"
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
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

.field private static final mAudioMVRepository$delegate:Lyi5;

.field private static final mAudioPlayRecordRepository$delegate:Lyi5;

.field private static final mAudioQueryRepository$delegate:Lyi5;

.field private static final mFileQueryRepository$delegate:Lyi5;

.field private static final mMediaConvertRepository$delegate:Lyi5;

.field private static final mMediaDataMissingRepository$delegate:Lyi5;

.field private static final mPlayListRepository$delegate:Lyi5;

.field private static final mSubtitleRepository$delegate:Lyi5;

.field private static final mUserBehaviorRepository$delegate:Lyi5;

.field private static final mVideoQueryRepository$delegate:Lyi5;

.field private static final mVideoRecordRepository$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    new-instance v0, Ld6c;

    invoke-direct {v0}, Ld6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mVideoQueryRepository$delegate:Lyi5;

    new-instance v0, Li6c;

    invoke-direct {v0}, Li6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mFileQueryRepository$delegate:Lyi5;

    new-instance v0, Lj6c;

    invoke-direct {v0}, Lj6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mPlayListRepository$delegate:Lyi5;

    new-instance v0, Lk6c;

    invoke-direct {v0}, Lk6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mVideoRecordRepository$delegate:Lyi5;

    new-instance v0, Ll6c;

    invoke-direct {v0}, Ll6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioQueryRepository$delegate:Lyi5;

    new-instance v0, Lm6c;

    invoke-direct {v0}, Lm6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioMVRepository$delegate:Lyi5;

    new-instance v0, Ln6c;

    invoke-direct {v0}, Ln6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioPlayRecordRepository$delegate:Lyi5;

    new-instance v0, Lo6c;

    invoke-direct {v0}, Lo6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mUserBehaviorRepository$delegate:Lyi5;

    new-instance v0, Lp6c;

    invoke-direct {v0}, Lp6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mMediaConvertRepository$delegate:Lyi5;

    new-instance v0, Le6c;

    invoke-direct {v0}, Le6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mMediaDataMissingRepository$delegate:Lyi5;

    new-instance v0, Lh6c;

    invoke-direct {v0}, Lh6c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mSubtitleRepository$delegate:Lyi5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mFileQueryRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryAllMediaList$lambda$13(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic c()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mVideoQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioQueryRepository_delegate$lambda$4()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mMediaDataMissingRepository_delegate$lambda$9()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mSubtitleRepository_delegate$lambda$10()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mUserBehaviorRepository_delegate$lambda$7()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    move-result-object v0

    return-object v0
.end method

.method private final getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioMVRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    return-object p0
.end method

.method private final getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioPlayRecordRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    return-object p0
.end method

.method private final getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    return-object p0
.end method

.method private final getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mFileQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    return-object p0
.end method

.method private final getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mMediaConvertRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    return-object p0
.end method

.method private final getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mMediaDataMissingRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    return-object p0
.end method

.method private final getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mPlayListRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    return-object p0
.end method

.method private final getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mSubtitleRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    return-object p0
.end method

.method private final getMUserBehaviorRepository()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mUserBehaviorRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    return-object p0
.end method

.method private final getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mVideoQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    return-object p0
.end method

.method private final getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mVideoRecordRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    return-object p0
.end method

.method public static synthetic h()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mPlayListRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v0

    return-object v0
.end method

.method private final handleExclusionCase(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAll()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryAllVideo()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->distinctAndMergeWithSourceList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method private final handleInclusionCase(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lze9;->k(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static synthetic i()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioMVRepository_delegate$lambda$5()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mAudioPlayRecordRepository_delegate$lambda$6()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mVideoRecordRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l(JLcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryAllMediaList$lambda$12(JLcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->mMediaConvertRepository_delegate$lambda$8()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioMVRepository_delegate$lambda$5()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioPlayRecordRepository_delegate$lambda$6()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    sget-object v1, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v2

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;-><init>(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;)V

    return-object v0
.end method

.method private static final mAudioQueryRepository_delegate$lambda$4()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mFileQueryRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mMediaConvertRepository_delegate$lambda$8()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mMediaDataMissingRepository_delegate$lambda$9()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;-><init>()V

    return-object v0
.end method

.method private static final mPlayListRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;-><init>()V

    return-object v0
.end method

.method private static final mSubtitleRepository_delegate$lambda$10()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;-><init>()V

    return-object v0
.end method

.method private static final mUserBehaviorRepository_delegate$lambda$7()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    sget-object v1, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v2

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object v3

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;-><init>(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)V

    return-object v0
.end method

.method private static final mVideoQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mVideoRecordRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;-><init>()V

    return-object v0
.end method

.method private static final queryAllMediaList$lambda$12(JLcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final queryAllMediaList$lambda$13(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    return p0
.end method


# virtual methods
.method public final addPlayListElement(Lb15$f;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->addPlayListElement(Lb15$f;)I

    move-result p0

    return p0
.end method

.method public final addPlayListElements(Lb15$g;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb15$g;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lb15$g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->addPlayListElements(Lb15$g;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final createPlayList(Lb15$e;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Lb15$e;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->createPlayList(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final deleteAllVideoPlayHistory()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->deleteAllRecords()I

    move-result p0

    return p0
.end method

.method public final deleteBatchVideoPlayHistory(Ld82$f;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$f;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$f;->a()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    if-eqz v0, :cond_2

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->deleteBatchRecords(Ljava/util/List;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ly71;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final deleteDownloadSubtitleRecord(Ld82$b;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$b;->a()Lcom/transsion/dbdata/beans/SubtitleHistory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->deleteDownloadRecord(Lcom/transsion/dbdata/beans/SubtitleHistory;)I

    move-result p0

    return p0
.end method

.method public final deletePlayList(Ld82$g;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$g;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayList(J)I

    move-result p0

    return p0
.end method

.method public final deletePlayListElement(Ld82$h;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ld82$h;->b()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayListElement(Ld82$h;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final deletePlayListElements(Ld82$i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$i;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ld82$i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayListElements(Ld82$i;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final deleteSubtitleUsageRecord(Ld82$j;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->deleteSubtitleUsageRecord(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deleteSystemMediaItem(Ld82$k;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMUserBehaviorRepository()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->deleteSystemMediaItem(Ld82$k;)I

    move-result p0

    return p0
.end method

.method public final deleteSystemMediaItems(Ld82$l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$l;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMUserBehaviorRepository()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->deleteSystemMediaItems(Ld82$l;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final deleteVideoConvertingAudio(Ld82$n;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->deleteVideoConvertingAudio(Ld82$n;)I

    move-result p0

    return p0
.end method

.method public final deleteVideoPlayHistory(Ld82$e;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$e;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Ld82$e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->deleteRecord(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getVideoInfoTrack()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/VideoInfoTrack;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->getVideoInfoTrack()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting video info track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRepositoryDelegate"

    invoke-static {v1, v0, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getVideoTotalTrack()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;
    .locals 12

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->getVideoTotalTrack()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->getVideoTotalTrack()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-int v9, v1, v0

    add-long v10, v2, v4

    new-instance p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const-string v0, "formatFileSize(...)"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public final insertAudioTrack(Lb15$k;)I
    .locals 2

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->g()Lq10;

    move-result-object p0

    new-instance v0, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/AudioTrack;-><init>()V

    invoke-virtual {p1}, Lb15$k;->b()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/database/AudioTrack;->id:I

    invoke-virtual {p1}, Lb15$k;->a()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    invoke-virtual {p1}, Lb15$k;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/dbdata/database/AudioTrack;->name:Ljava/lang/String;

    invoke-interface {p0, v0}, Lq10;->insertAudioTrack(Lcom/transsion/dbdata/database/AudioTrack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final insertDownloadSubtitleRecord(Lb15$c;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p1}, Lb15$c;->a()Lcom/transsion/dbdata/beans/SubtitleHistory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->insertDownloadRecord(Lcom/transsion/dbdata/beans/SubtitleHistory;)I

    move-result p0

    return p0
.end method

.method public final insertSubtitleSetting(Lb15$h;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p1}, Lb15$h;->a()Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I

    move-result p0

    return p0
.end method

.method public final insertSubtitleUsageRecord(Lb15$i;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p1}, Lb15$i;->a()I

    move-result v0

    invoke-virtual {p1}, Lb15$i;->b()Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->insertSubtitleUsageRecord(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I

    move-result p0

    return p0
.end method

.method public final insertVideoConvertingAudio(Lb15$l;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->insertVideoConvertingAudio(Lb15$l;)I

    move-result p0

    return p0
.end method

.method public final insertVideoConvertingAudio(Lb15$m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb15$m;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->insertVideoConvertingAudio(Lb15$m;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryAllMediaList(Lxk8$c;)Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$c;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$c;->e()I

    move-result v0

    const-string v1, "->fileVideoSize:"

    const-string v2, "->videoSize:"

    const-string v3, "VideoRepositoryDelegate"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/32 v7, 0x493e0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_8

    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$c;->c()I

    move-result v0

    invoke-virtual {p1}, Lxk8$c;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1, v5}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->queryAll(IZZ)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v6, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object p0, p1

    goto/16 :goto_8

    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p1

    invoke-virtual {p1, v7, v8, v4}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByDuration(JZ)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v9, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v9, v9, v7

    if-lez v9, :cond_0

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0, v7, v8, v4}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByDuration(JZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v9, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_2

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->distinctAndMergeWithSourceList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the longVideo size(resultSize:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v6, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p1

    invoke-virtual {p1, v7, v8, v5}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByDuration(JZ)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v9, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v9, v9, v7

    if-gtz v9, :cond_4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0, v7, v8, v5}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByDuration(JZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v9, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v5, v9, v7

    if-gtz v5, :cond_6

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->distinctAndMergeWithSourceList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the shortVideo size(resultSize:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v6, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAll()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryAllVideo()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/ListKtxKt;->distinctAndMergeWithSourceList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v7, v3

    div-long/2addr v1, v7

    const v3, 0x93a80

    int-to-long v7, v3

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x1f4

    if-ge v3, v5, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lx71;->d(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v7, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v7, v7, v1

    if-lez v7, :cond_8

    iget v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v7, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v5, v7, v1

    if-lez v5, :cond_a

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-static {v3}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_7

    :cond_c
    move-object p0, v0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p0

    new-instance p1, Lf6c;

    invoke-direct {p1, v1, v2}, Lf6c;-><init>(J)V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance p1, Lg6c;

    invoke-direct {p1}, Lg6c;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    :goto_7
    sget-object p1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p1

    invoke-virtual {p1, p0, v4}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateScanRecentAdd(Ljava/util/List;Z)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryAllPlayList(ZZ)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryRecent()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryRecentMVList()Ljava/util/List;

    move-result-object v3

    check-cast v2, Ljava/util/Collection;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v6, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5, v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateScanRecentAdd(Ljava/util/List;Z)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getPlayListFolderSet(ZZZ)Ljava/util/List;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast v5, Lcom/transsion/dbdata/database/PlayListFolderItem;

    const/4 v7, 0x2

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    :cond_3
    move v7, v3

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    const/16 v7, 0xd

    :cond_6
    :goto_2
    invoke-virtual {v5, v7}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setListFlag(I)V

    const/4 v7, 0x0

    if-nez v4, :cond_7

    if-eqz p1, :cond_7

    move-object v4, v0

    goto :goto_3

    :cond_7
    sget-object v4, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-direct {v4}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v4

    invoke-virtual {v5}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9, v7}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getVideoPlayListElement(JLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setCount(I)V

    invoke-static {v4}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v4, :cond_8

    iget-object v7, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_8
    invoke-virtual {v5, v7}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setUri(Landroid/net/Uri;)V

    move v4, v6

    goto :goto_1

    :cond_9
    check-cast p0, Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final queryAudioTrack(Lxk8$b0;)Ljava/lang/String;
    .locals 0

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->g()Lq10;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$b0;->a()I

    move-result p1

    invoke-interface {p0, p1}, Lq10;->getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final queryBucketMediaList(Lxk8$i;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$i;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$i;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Loa1;->e()I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByBucket(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByParentPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryConvertingVideoList(Lxk8$j;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$j;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$j;->b()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->queryConvertingVideoList(Lxk8$j;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryFavoritePlayListItem()Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->queryFavoriteList(Z)Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    return-object p0
.end method

.method public final queryMediaListByMediaIds(Lxk8$o;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$o;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$o;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lxk8$o;->d()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->handleExclusionCase(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->handleInclusionCase(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryOnlinePlayHistory(Lxk8$c0;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$c0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->queryOnline(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final queryParentPathMediaList(Lxk8$p;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$p;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByParentPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByParentPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryPlayListMedia(Lxk8$u;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$u;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$u;->e()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryRecent()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryRecentVideo()Ljava/util/List;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lxk8$u;->d()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getVideoPlayListElement(J)Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final queryPlayListOnlineElement(Lxk8$v;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$v;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lxk8$v;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getVideoOnlinePlayListElement(JLjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final queryPlayMediaListItem(Lxk8$t;)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$t;->b()I

    move-result v0

    invoke-virtual {p1}, Lxk8$t;->a()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getAudioPlayMediaListElement(II)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$x;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final querySubtitleSetting()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->querySubtitleSetting()Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final querySubtitleUsageRecordList(Lxk8$z;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$z;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$z;->a()I

    move-result v1

    invoke-virtual {p1}, Lxk8$z;->b()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->querySubtitleUsageRecordList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final querySystemSubtitle()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMSubtitleRepository()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->querySystemSubtitles()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryVideoListByPaths(Lxk8$q;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$q;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$q;->a()Lnm6;

    move-result-object v0

    sget-object v1, Lnm6$a;->b:Lnm6$a;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v1

    invoke-virtual {p1}, Lxk8$q;->b()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByPaths$default(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final search(Lxk8$w;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$w;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$w;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getAllByMediaType(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->searchVideo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v2}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v1, v0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v3, "displayName"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-instance p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate$search$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate$search$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateMediaItemName(Lngb$e;)I
    .locals 4

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lngb$e;->b()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-wide v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    iget-wide v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object p0

    invoke-virtual {p1}, Lngb$e;->a()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->upsertMediaDataMissingSingle(Lcom/transsion/dbdata/beans/media/AudioItem;Z)I

    move-result p0

    return p0
.end method

.method public final updatePlayListName(Lngb$d;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lngb$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Lngb$d;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lngb$d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->updatePlayListName(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final updatePlayRecord(Lngb$g;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Lngb$g;->c()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    invoke-virtual {p1}, Lngb$g;->a()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-virtual {p1}, Lngb$g;->b()Lcom/transsion/dbdata/beans/PlayerStates;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->insertOrUpdate(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final updateVideoConvertingAudio(Lngb$f;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->updateVideoConvertingAudio(Lngb$f;)I

    move-result p0

    return p0
.end method
