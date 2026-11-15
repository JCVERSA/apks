.class public abstract Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;
.super Lcom/transsion/baseui/fragment/LazyFragment;
.source "source.java"

# interfaces
.implements Lio/c;
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/LazyFragment<",
        "Lwn/p;",
        ">;",
        "Lio/c;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u001f\u0010\u0010\u001a\u00020\u00072\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0006J#\u0010\u001c\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u0017\u0010!\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0019\u0010$\u001a\u00020\u00072\u0008\u0010#\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0006J\u000f\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0006J\u000f\u0010+\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0006J\u0017\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00102\u001a\u00020\u00072\u0008\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00084\u0010\u0006J\u000f\u00105\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u00089\u00108J\u000f\u0010:\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008:\u00106J\u0015\u0010=\u001a\u00020\u00072\u0006\u0010<\u001a\u00020;\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0006J\u000f\u0010@\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0006J\u000f\u0010A\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0006J\u001f\u0010D\u001a\u00020\u00072\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010H\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u0017\u0010J\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008J\u0010IJ1\u0010Q\u001a\u00020\u00072\u0006\u0010L\u001a\u00020K2\u0010\u0010N\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000e0M2\u0006\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u0011\u0010T\u001a\u0004\u0018\u00010SH\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\u000f\u0010V\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008V\u0010\u0006J\u000f\u0010W\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008W\u0010\u0006J\u0017\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008[\u0010\u0006J\u000f\u0010]\u001a\u00020\\H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010a\u001a\u00020\u00072\u0008\u0010`\u001a\u0004\u0018\u00010_H\u0016\u00a2\u0006\u0004\u0008a\u0010bJ!\u0010d\u001a\u00020\u00072\u0006\u0010c\u001a\u00020K2\u0008\u0010`\u001a\u0004\u0018\u00010_H\u0016\u00a2\u0006\u0004\u0008d\u0010eJ\u000f\u0010f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008f\u0010\u0006J\u0019\u0010h\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008h\u0010\u0015J\u0019\u0010i\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008i\u0010\u0015J\u0019\u0010j\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008j\u0010\u0015J\u000f\u0010l\u001a\u00020kH&\u00a2\u0006\u0004\u0008l\u0010mJ\u0019\u0010n\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0004\u0008n\u0010\u0015J\u000f\u0010o\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008o\u00106J#\u0010r\u001a\u00020\u00072\u0008\u0008\u0002\u0010p\u001a\u00020\u001a2\u0008\u0008\u0002\u0010q\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008r\u0010sJ\u000f\u0010t\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008t\u00106J\u000f\u0010u\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008u\u00106J\u000f\u0010v\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008v\u00108J\u000f\u0010w\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008w\u00108J\u000f\u0010x\u001a\u00020KH&\u00a2\u0006\u0004\u0008x\u0010yJ\u000f\u0010z\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008z\u00108R\u0014\u0010{\u001a\u00020\u000e8\u0002X\u0083D\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u001a\u0010}\u001a\u00020\u000e8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008}\u0010|\u001a\u0004\u0008~\u00106R+\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R,\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0006\u0008\u008b\u0001\u0010\u008c\u0001R,\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\"\u0006\u0008\u0092\u0001\u0010\u0093\u0001R,\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001\"\u0006\u0008\u0099\u0001\u0010\u009a\u0001R(\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u009b\u0001\u0010|\u001a\u0005\u0008\u009c\u0001\u00106\"\u0005\u0008\u009d\u0001\u0010%R\u001e\u0010\u009e\u0001\u001a\u00020K8\u0004X\u0084D\u00a2\u0006\u000f\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001\u001a\u0005\u0008\u00a0\u0001\u0010yR(\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a1\u0001\u0010|\u001a\u0005\u0008\u00a2\u0001\u00106\"\u0005\u0008\u00a3\u0001\u0010%R(\u0010\u00a4\u0001\u001a\u00020K8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00a4\u0001\u0010\u009f\u0001\u001a\u0005\u0008\u00a5\u0001\u0010y\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001c\u0010\u00a9\u0001\u001a\u0005\u0018\u00010\u00a8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u00ab\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u00ac\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R(\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00af\u0001\u0010|\u001a\u0005\u0008\u00b0\u0001\u00106\"\u0005\u0008\u00b1\u0001\u0010%R(\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00b2\u0001\u0010|\u001a\u0005\u0008\u00b3\u0001\u00106\"\u0005\u0008\u00b4\u0001\u0010%R!\u0010\u00b5\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R,\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u00b7\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001\"\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R\u001c\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00be\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R\u001b\u0010\u00c1\u0001\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R!\u0010\u00c8\u0001\u001a\u00030\u00c3\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001\u001a\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R#\u0010\u00cd\u0001\u001a\u0005\u0018\u00010\u00c9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ca\u0001\u0010\u00c5\u0001\u001a\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R2\u0010\u00d3\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u000e0\u00ce\u0001j\t\u0012\u0004\u0012\u00020\u000e`\u00cf\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d0\u0001\u0010\u00c5\u0001\u001a\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R\u0019\u0010\u00d4\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u009f\u0001R\u0019\u0010\u00d5\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001\u00a8\u0006\u00d7\u0001"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;",
        "Lcom/transsion/baseui/fragment/LazyFragment;",
        "Lwn/p;",
        "Lio/c;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "observePublish",
        "initExposureHelper",
        "observeComment",
        "observeDelete",
        "observeLike",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "",
        "data",
        "updateDeletePost",
        "(Lcom/tn/lib/net/bean/BaseDto;)V",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "postItem",
        "onLikeClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "onCommentClick",
        "onDownloadClick",
        "requestPermission",
        "showSettingDialog",
        "",
        "navigateToComment",
        "openPostDetail",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V",
        "onShareClick",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "download",
        "saveBuiltInVideo",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "id",
        "removePost",
        "(Ljava/lang/String;)V",
        "localLogPause",
        "",
        "getPostExposurePercent",
        "()F",
        "initFeedVideo",
        "checkShowRefreshPopGuide",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lwn/p;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "lazyLoadData",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "isShowPageStateLayoutTitle",
        "()Z",
        "isAudioShowNoNetworkLayout",
        "getEmptyDescText",
        "Lij/q;",
        "listener",
        "setOnNumNotExposureListener",
        "(Lij/q;)V",
        "initViewData",
        "initListener",
        "retryLoadData",
        "Lkotlin/Function0;",
        "resultCallback",
        "doRefresh",
        "(Lkotlin/jvm/functions/Function0;)V",
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
        "Landroid/view/View;",
        "getLoadingView",
        "()Landroid/view/View;",
        "onResume",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onDestroy",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
        "bean",
        "updateData",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V",
        "position",
        "updateRoomCacheData",
        "(ILcom/transsion/moviedetailapi/bean/PostSubjectBean;)V",
        "checkToShowEmptyView",
        "item",
        "openSubjectDetail",
        "openRoomDetail",
        "openUserCenter",
        "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "postAdapterFrom",
        "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "onItemHeaderClick",
        "onItemHeaderModuleName",
        "isFirstLoad",
        "isRefresh",
        "loadData",
        "(ZZ)V",
        "pageName",
        "subpageName",
        "isSwipeRefreshEnable",
        "isNeedInsertPublishPost",
        "tabIndex",
        "()I",
        "isStaggeredPost",
        "KEY_POST_EXPOSURE_PERCENT",
        "Ljava/lang/String;",
        "TAG",
        "getTAG",
        "Lcom/transsion/postdetail/ui/adapter/f;",
        "mAdapter",
        "Lcom/transsion/postdetail/ui/adapter/f;",
        "getMAdapter",
        "()Lcom/transsion/postdetail/ui/adapter/f;",
        "setMAdapter",
        "(Lcom/transsion/postdetail/ui/adapter/f;)V",
        "Lbj/b;",
        "mExposureHelper",
        "Lbj/b;",
        "getMExposureHelper",
        "()Lbj/b;",
        "setMExposureHelper",
        "(Lbj/b;)V",
        "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
        "mViewModel",
        "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
        "getMViewModel",
        "()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
        "setMViewModel",
        "(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "mDetailViewModel",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "getMDetailViewModel",
        "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "setMDetailViewModel",
        "(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)V",
        "mPageFrom",
        "getMPageFrom",
        "setMPageFrom",
        "preLoadNum",
        "I",
        "getPreLoadNum",
        "mPage",
        "getMPage",
        "setMPage",
        "mPerPage",
        "getMPerPage",
        "setMPerPage",
        "(I)V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "mSubject",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lcom/transsion/moviedetailapi/bean/Group;",
        "mGroup",
        "Lcom/transsion/moviedetailapi/bean/Group;",
        "mGroupId",
        "getMGroupId",
        "setMGroupId",
        "mParentTypeName",
        "getMParentTypeName",
        "setMParentTypeName",
        "mRefreshResultCallback",
        "Lkotlin/jvm/functions/Function0;",
        "Lcom/transsion/moviedetailapi/bean/RoomTabItem;",
        "mTopTab",
        "Lcom/transsion/moviedetailapi/bean/RoomTabItem;",
        "getMTopTab",
        "()Lcom/transsion/moviedetailapi/bean/RoomTabItem;",
        "setMTopTab",
        "(Lcom/transsion/moviedetailapi/bean/RoomTabItem;)V",
        "Lho/a;",
        "mFeedVideoManager",
        "Lho/a;",
        "mLoadingView",
        "Landroid/view/View;",
        "Landroid/os/Handler;",
        "mHandler$delegate",
        "Lkotlin/Lazy;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "mHandler",
        "Lqx/a;",
        "mLoginApi$delegate",
        "getMLoginApi",
        "()Lqx/a;",
        "mLoginApi",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "mExposureList$delegate",
        "getMExposureList",
        "()Ljava/util/HashSet;",
        "mExposureList",
        "mExposureCount",
        "mRefreshShown",
        "Z",
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


# instance fields
.field private final KEY_POST_EXPOSURE_PERCENT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

.field private mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

.field private mExposureCount:I

.field private mExposureHelper:Lbj/b;

.field private final mExposureList$delegate:Lkotlin/Lazy;

.field private mFeedVideoManager:Lho/a;

.field private mGroup:Lcom/transsion/moviedetailapi/bean/Group;

.field private mGroupId:Ljava/lang/String;

.field private final mHandler$delegate:Lkotlin/Lazy;

.field private mLoadingView:Landroid/view/View;

.field private final mLoginApi$delegate:Lkotlin/Lazy;

.field private mPage:Ljava/lang/String;

.field private mPageFrom:Ljava/lang/String;

.field private mParentTypeName:Ljava/lang/String;

.field private mPerPage:I

.field private mRefreshResultCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshShown:Z

.field private mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

.field private mTopTab:Lcom/transsion/moviedetailapi/bean/RoomTabItem;

.field private mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

.field private postItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private final preLoadNum:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sa_post_exposure_percent"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->KEY_POST_EXPOSURE_PERCENT:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Post_"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->preLoadNum:I

    .line 37
    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPerPage:I

    .line 41
    .line 42
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/t3;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/t3;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mHandler$delegate:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/u3;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/u3;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/v3;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/v3;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureList$delegate:Lkotlin/Lazy;

    .line 74
    .line 75
    return-void
.end method

.method public static synthetic A0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$11(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$4$lambda$3(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$checkShowRefreshPopGuide(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkShowRefreshPopGuide()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getMExposureList(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Ljava/util/HashSet;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMExposureList()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$removePost(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->removePost(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$saveBuiltInVideo(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->saveBuiltInVideo(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkShowRefreshPopGuide()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mParentTypeName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "BOTTOM_TAB"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshShown:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureCount:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureCount:I

    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    const-string v4, "ROOM_POST_REFRESH_GUIDE"

    .line 36
    .line 37
    invoke-virtual {v2, v4, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshShown:Z

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 46
    .line 47
    iget-object v6, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v9, 0x4

    .line 50
    const/4 v10, 0x0

    .line 51
    const-string v7, "--ShowRefreshPopGuide"

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v4, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lep/i;

    .line 65
    .line 66
    invoke-direct {v0}, Lep/i;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 70
    .line 71
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 78
    .line 79
    const-class v2, Lep/i;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "getName(...)"

    .line 86
    .line 87
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v3, 0x0

    .line 91
    .line 92
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureList$delegate:Lkotlin/Lazy;

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

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mHandler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoginApi$delegate:Lkotlin/Lazy;

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
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->KEY_POST_EXPOSURE_PERCENT:Ljava/lang/String;

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

.method private final initExposureHelper()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getPostExposurePercent()F

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
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

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
    check-cast v0, Lwn/p;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    iget-object v0, v0, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

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
    iput-object v6, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lbj/b;

    .line 66
    .line 67
    return-void
.end method

.method private final initFeedVideo()V
    .locals 8

    .line 1
    sget-object v0, Lho/a;->h1:Lho/a$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lwn/p;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v2, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    :goto_0
    move-object v3, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    instance-of v7, v2, Ldl/b;

    .line 41
    .line 42
    move-object v2, p0

    .line 43
    invoke-virtual/range {v0 .. v7}, Lho/a$a;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/f;Ljava/lang/String;Ljava/lang/String;Z)Lho/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 48
    .line 49
    return-void
.end method

.method private static final initViewData$lambda$12$lambda$11(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 10

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
    move-object v8, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v8, v1

    .line 40
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sget p2, Lcom/transsion/postdetail/R$id;->fl_cover:I

    .line 45
    .line 46
    if-eq p1, p2, :cond_f

    .line 47
    .line 48
    sget p2, Lcom/transsion/postdetail/R$id;->tv_room_name:I

    .line 49
    .line 50
    if-eq p1, p2, :cond_f

    .line 51
    .line 52
    sget p2, Lcom/transsion/postdetail/R$id;->iv_user_avatar:I

    .line 53
    .line 54
    if-eq p1, p2, :cond_f

    .line 55
    .line 56
    sget p2, Lcom/transsion/postdetail/R$id;->tv_user_name:I

    .line 57
    .line 58
    if-eq p1, p2, :cond_f

    .line 59
    .line 60
    sget p2, Lcom/transsion/postdetail/R$id;->tv_post_date:I

    .line 61
    .line 62
    if-ne p1, p2, :cond_2

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_2
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_like:I

    .line 67
    .line 68
    const-string v0, "like"

    .line 69
    .line 70
    const-string v2, "dislike"

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    if-ne p1, p2, :cond_5

    .line 74
    .line 75
    if-eqz v8, :cond_3

    .line 76
    .line 77
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    :cond_3
    if-eqz v3, :cond_4

    .line 88
    .line 89
    move-object v1, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move-object v1, v0

    .line 92
    :goto_1
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onLikeClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_5
    sget p2, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    .line 98
    .line 99
    if-ne p1, p2, :cond_8

    .line 100
    .line 101
    if-eqz v8, :cond_6

    .line 102
    .line 103
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    :cond_6
    if-eqz v3, :cond_7

    .line 114
    .line 115
    move-object v1, v2

    .line 116
    goto :goto_2

    .line 117
    :cond_7
    move-object v1, v0

    .line 118
    :goto_2
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onLikeClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_comment:I

    .line 123
    .line 124
    if-ne p1, p2, :cond_9

    .line 125
    .line 126
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onCommentClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 127
    .line 128
    .line 129
    const-string v1, "comment"

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_9
    sget p2, Lcom/transsion/postdetail/R$id;->clHotComment:I

    .line 133
    .line 134
    if-ne p1, p2, :cond_a

    .line 135
    .line 136
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onCommentClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 137
    .line 138
    .line 139
    const-string v1, "hot_comment"

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_a
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_share:I

    .line 143
    .line 144
    if-ne p1, p2, :cond_b

    .line 145
    .line 146
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onShareClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 147
    .line 148
    .line 149
    const-string v1, "share"

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_b
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_download:I

    .line 153
    .line 154
    if-ne p1, p2, :cond_c

    .line 155
    .line 156
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 157
    .line 158
    .line 159
    const-string v1, "download"

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_c
    sget p2, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    .line 163
    .line 164
    if-ne p1, p2, :cond_d

    .line 165
    .line 166
    invoke-virtual {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "subject"

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_d
    sget p2, Lcom/transsion/postdetail/R$id;->tv_room_tag:I

    .line 173
    .line 174
    if-ne p1, p2, :cond_e

    .line 175
    .line 176
    invoke-virtual {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "group"

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_e
    sget p2, Lcom/transsion/postdetail/R$id;->refresh_more:I

    .line 183
    .line 184
    if-ne p1, p2, :cond_10

    .line 185
    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    instance-of p2, p1, Lep/g;

    .line 191
    .line 192
    if-eqz p2, :cond_10

    .line 193
    .line 194
    check-cast p1, Lep/g;

    .line 195
    .line 196
    invoke-interface {p1}, Lep/g;->v()V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_f
    :goto_3
    invoke-virtual {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onItemHeaderClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onItemHeaderModuleName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    :cond_10
    :goto_4
    if-eqz v8, :cond_12

    .line 208
    .line 209
    sget-object v2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 210
    .line 211
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    if-nez v1, :cond_11

    .line 222
    .line 223
    const-string p1, ""

    .line 224
    .line 225
    move-object v7, p1

    .line 226
    goto :goto_5

    .line 227
    :cond_11
    move-object v7, v1

    .line 228
    :goto_5
    iget-object v9, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    .line 229
    .line 230
    move v6, p3

    .line 231
    invoke-virtual/range {v2 .. v9}, Lcom/transsion/postdetail/helper/a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_12
    return-void
.end method

.method private static final initViewData$lambda$12$lambda$6$lambda$5(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Lkotlin/Unit;
    .locals 2

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isSwipeRefreshEnable()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lwn/p;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0, v1, v0}, Lio/c$a;->a(Lio/c;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    instance-of v0, p0, Lep/g;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    check-cast p0, Lep/g;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-interface {p0, v0}, Lep/g;->e(Z)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method private static final initViewData$lambda$12$lambda$8(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
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
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v2, v2, v0, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lwn/p;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/o3;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/o3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v2, 0x12c

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private static final initViewData$lambda$12$lambda$8$lambda$7(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

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

.method private static final initViewData$lambda$12$lambda$9(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 9

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
    const/4 v0, 0x0

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p1, v0

    .line 39
    :goto_0
    if-nez p1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v6, "item"

    .line 68
    .line 69
    iget-object v8, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    .line 70
    .line 71
    move v5, p3

    .line 72
    move-object v7, p1

    .line 73
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/postdetail/helper/a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    const/4 p3, 0x2

    .line 78
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openPostDetail$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_1
    return-void
.end method

.method private static final initViewData$lambda$15(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateDeletePost(Lcom/tn/lib/net/bean/BaseDto;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final initViewData$lambda$17(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "--Publish get detail result,  id:"

    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    const-string v0, "<1m"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setDistanceStr(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMHandler()Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/y3;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/y3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method

.method private static final initViewData$lambda$17$lambda$16(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lwn/p;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final initViewData$lambda$4$lambda$3(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1, v0}, Lio/c$a;->a(Lio/c;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeComment$lambda$23(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateRoomCacheData$lambda$46(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData(ZZ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: loadData"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method private final localLogPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lbj/b;

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

.method public static synthetic m0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateData$lambda$38(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final mExposureList_delegate$lambda$2()Ljava/util/HashSet;
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

.method private static final mHandler_delegate$lambda$0()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static final mLoginApi_delegate$lambda$1()Lqx/a;
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

.method public static synthetic n0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$15(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$9(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final observeComment()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/r3;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/r3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

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

.method private static final observeComment$lambda$23(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 8

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
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move v4, v1

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p1}, Lcom/transsion/user/action/sync/event/CommentEvent;->getSubjectId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    move v3, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_1
    :goto_1
    if-ltz v3, :cond_7

    .line 59
    .line 60
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move-object v2, v0

    .line 78
    :goto_2
    if-eqz v2, :cond_6

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 81
    .line 82
    .line 83
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/user/action/sync/event/CommentEvent;->getStatus()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const-wide/16 v4, 0x1

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    goto :goto_3

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_6

    .line 109
    :cond_3
    const-wide/16 v6, 0x0

    .line 110
    .line 111
    :goto_3
    add-long/2addr v6, v4

    .line 112
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_5

    .line 117
    :cond_4
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    move-wide v6, v4

    .line 129
    :goto_4
    sub-long/2addr v6, v4

    .line 130
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    :goto_5
    invoke-virtual {v2, p1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_7

    .line 144
    :goto_6
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 145
    .line 146
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    :goto_7
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 158
    .line 159
    if-eqz p0, :cond_7

    .line 160
    .line 161
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_9

    .line 165
    :goto_8
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v3, " callback change data fail "

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    const/4 v2, 0x2

    .line 189
    invoke-static {p1, p0, v1, v2, v0}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_7
    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    return-object p0
.end method

.method private final observeDelete()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/a4;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/a4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

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

.method private static final observeDelete$lambda$25(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lhx/b;)Lkotlin/Unit;
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
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

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
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

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
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V
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
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/s3;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/s3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

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

.method private static final observeLike$lambda$29(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
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
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

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
    if-ltz v5, :cond_7

    .line 56
    .line 57
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

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
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 151
    .line 152
    if-eqz p0, :cond_7

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p0, v5, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_7

    .line 166
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 167
    .line 168
    const-string p1, " callback change data fail"

    .line 169
    .line 170
    const/4 v0, 0x2

    .line 171
    invoke-static {p0, p1, v2, v0, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p0
.end method

.method private final observePublish()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isNeedInsertPublishPost()Z

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
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "--observePublish"

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v13, Lcom/transsion/postdetail/ui/fragment/x3;

    .line 44
    .line 45
    invoke-direct {v13, p0}, Lcom/transsion/postdetail/ui/fragment/x3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 49
    .line 50
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v7, v0

    .line 57
    check-cast v7, Lcom/transsnet/flow/event/FlowEventBus;

    .line 58
    .line 59
    const-class v0, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const-string v0, "getName(...)"

    .line 66
    .line 67
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    const/4 v12, 0x0

    .line 81
    move-object v8, p0

    .line 82
    invoke-virtual/range {v7 .. v13}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private static final observePublish$lambda$18(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lep/g;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    check-cast v0, Lep/g;

    .line 18
    .line 19
    invoke-interface {v0}, Lep/g;->B()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->tabIndex()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "--publishevent curTab:"

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ", fTab:"

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v5, 0x4

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->tabIndex()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ne v1, v0, :cond_1

    .line 78
    .line 79
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 80
    .line 81
    if-eqz p0, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/PublishEvent;->getPostId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->x(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0
.end method

.method private final onCommentClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openPostDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->postItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1d

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->requestPermission()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private final onLikeClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 16
    .line 17
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->R(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 40
    .line 41
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_2
    return-void
.end method

.method private final onShareClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMLoginApi()Lqx/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v3, v2

    .line 24
    :goto_1
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move-object v3, v2

    .line 44
    :goto_2
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    :goto_3
    move v11, v1

    .line 52
    goto :goto_4

    .line 53
    :cond_3
    const/4 v1, 0x0

    .line 54
    goto :goto_3

    .line 55
    :goto_4
    sget-object v3, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 56
    .line 57
    sget-object v4, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v5, v1

    .line 66
    goto :goto_5

    .line 67
    :cond_4
    move-object v5, v2

    .line 68
    :goto_5
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v6, v1

    .line 81
    goto :goto_6

    .line 82
    :cond_5
    move-object v6, v2

    .line 83
    :goto_6
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    move-object v8, v1

    .line 96
    goto :goto_7

    .line 97
    :cond_6
    move-object v8, v2

    .line 98
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    sget v2, Lcom/transsion/postdetail/R$string;->save_video:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_7
    move-object v15, v2

    .line 111
    const/16 v16, 0x540

    .line 112
    .line 113
    const/16 v17, 0x0

    .line 114
    .line 115
    const-string v9, ""

    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v12, 0x0

    .line 119
    const-string v13, "postdetail"

    .line 120
    .line 121
    const/4 v14, 0x0

    .line 122
    invoke-static/range {v3 .. v17}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;

    .line 127
    .line 128
    move-object/from16 v3, p0

    .line 129
    .line 130
    invoke-direct {v2, v1, v0, v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;-><init>(Lcom/transsion/share/share/ShareDialogFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v2, "share"

    .line 141
    .line 142
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method private final openPostDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const-class v1, Lio/b;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/b;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lio/b;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v1

    .line 32
    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const-string v0, "/post/detailVideo"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string v0, "/post/detail"

    .line 48
    .line 49
    :goto_1
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "page_from"

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "from_comment"

    .line 64
    .line 65
    invoke-virtual {v0, v2, p2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string v0, "item_object"

    .line 70
    .line 71
    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string v0, "id"

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p2, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string v0, "rec_ops"

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p2, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "item_type"

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getItemType()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p2, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object v0, v1

    .line 117
    :goto_2
    const-string v2, "media_type"

    .line 118
    .line 119
    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    const-string v0, "is_build_in"

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const/4 v0, 0x2

    .line 138
    invoke-static {p1, p2, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    return-void
.end method

.method static synthetic openPostDetail$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openPostDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: openPostDetail"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic p0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$6$lambda$5(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mHandler_delegate$lambda$0()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic r0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$17(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final removePost(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, -0x1

    .line 43
    :goto_1
    if-gez v1, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_2
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

.method public static synthetic s0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoginApi_delegate$lambda$1()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final saveBuiltInVideo(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$saveBuiltInVideo$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$saveBuiltInVideo$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
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

.method public static synthetic t0()Ljava/util/HashSet;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureList_delegate$lambda$2()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic u0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$17$lambda$16(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final updateData$lambda$38(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lho/a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final updateDeletePost(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 4
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
    if-eqz v1, :cond_5

    .line 17
    .line 18
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    const/4 v1, -0x1

    .line 68
    :goto_2
    if-ltz v1, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    :cond_4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    goto :goto_4

    .line 84
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 95
    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_5
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 99
    .line 100
    sget v0, Lcom/transsion/postdetail/R$string;->delete_post_failed:I

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :goto_5
    return-void
.end method

.method private static final updateRoomCacheData$lambda$46(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lho/a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic v0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$8(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeLike$lambda$29(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lhx/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeDelete$lambda$25(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lhx/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observePublish$lambda$18(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$8$lambda$7(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public checkToShowEmptyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 9
    .line 10
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLocalNoNetworkView(Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public doRefresh(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 11
    .line 12
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lwn/p;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshResultCallback:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v0, p1

    .line 48
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lwn/p;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object v0, v0, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    const/4 v0, 0x3

    .line 75
    invoke-static {p0, v1, v1, v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/usercenter/R$string;->profile_not_content:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoadingView:Landroid/view/View;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lcom/transsion/postdetail/R$layout;->layout_room_post_loading:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getFlStateView()Landroid/widget/FrameLayout;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoadingView:Landroid/view/View;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoadingView:Landroid/view/View;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    new-instance v0, Landroid/view/View;

    .line 45
    .line 46
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method protected final getMAdapter()Lcom/transsion/postdetail/ui/adapter/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMDetailViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMExposureHelper()Lbj/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lbj/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMPageFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMParentTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mParentTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMPerPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPerPage:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getMTopTab()Lcom/transsion/moviedetailapi/bean/RoomTabItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mTopTab:Lcom/transsion/moviedetailapi/bean/RoomTabItem;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMViewModel()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getPreLoadNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->preLoadNum:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lwn/p;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lwn/p;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lwn/p;->c(Landroid/view/LayoutInflater;)Lwn/p;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initListener()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeComment()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeDelete()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeLike()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observePublish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public initViewData()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initExposureHelper()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isSwipeRefreshEnable()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lwn/p;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v1, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget v4, Lcom/tn/lib/widget/R$color;->bg_01:I

    .line 30
    .line 31
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    sget v4, Lcom/tn/lib/widget/R$color;->main_gradient_center:I

    .line 43
    .line 44
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    sget v5, Lcom/tn/lib/widget/R$color;->main_gradient_start:I

    .line 53
    .line 54
    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    filled-new-array {v3, v4}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/b4;

    .line 66
    .line 67
    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/b4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lwn/p;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    iget-object v1, v1, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    new-instance v1, Lcom/transsion/postdetail/ui/adapter/f;

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v3, "requireContext(...)"

    .line 96
    .line 97
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->postAdapterFrom()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    iget-object v6, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lbj/b;

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    iget-object v8, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    .line 111
    .line 112
    move-object v3, v1

    .line 113
    invoke-direct/range {v3 .. v8}, Lcom/transsion/postdetail/ui/adapter/f;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lbj/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v4, 0x1

    .line 121
    invoke-virtual {v3, v4}, Lt6/f;->z(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3, v4}, Lt6/f;->y(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget v5, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->preLoadNum:I

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Lt6/f;->E(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    new-instance v5, Lcom/transsion/postdetail/ui/view/PostListLoadMoreView;

    .line 145
    .line 146
    invoke-direct {v5}, Lcom/transsion/postdetail/ui/view/PostListLoadMoreView;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/c4;

    .line 150
    .line 151
    invoke-direct {v6, v0}, Lcom/transsion/postdetail/ui/fragment/c4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v6}, Lcom/transsion/postdetail/ui/view/PostListLoadMoreView;->setOnFailClickCallback(Lkotlin/jvm/functions/Function0;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v5}, Lt6/f;->C(Ls6/a;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    new-instance v5, Lcom/transsion/postdetail/ui/fragment/d4;

    .line 165
    .line 166
    invoke-direct {v5, v0}, Lcom/transsion/postdetail/ui/fragment/d4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v5}, Lt6/f;->D(Lr6/f;)V

    .line 170
    .line 171
    .line 172
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$b;

    .line 173
    .line 174
    invoke-direct {v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$b;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 178
    .line 179
    .line 180
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/e4;

    .line 181
    .line 182
    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/e4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 186
    .line 187
    .line 188
    sget v5, Lcom/transsion/postdetail/R$id;->fl_cover:I

    .line 189
    .line 190
    sget v6, Lcom/transsion/postdetail/R$id;->tv_room_name:I

    .line 191
    .line 192
    sget v7, Lcom/transsion/postdetail/R$id;->tv_post_date:I

    .line 193
    .line 194
    sget v8, Lcom/transsion/postdetail/R$id;->v_post_like:I

    .line 195
    .line 196
    sget v9, Lcom/transsion/postdetail/R$id;->v_post_comment:I

    .line 197
    .line 198
    sget v10, Lcom/transsion/postdetail/R$id;->v_post_share:I

    .line 199
    .line 200
    sget v11, Lcom/transsion/postdetail/R$id;->v_post_download:I

    .line 201
    .line 202
    sget v12, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    .line 203
    .line 204
    sget v13, Lcom/transsion/postdetail/R$id;->tv_room_tag:I

    .line 205
    .line 206
    sget v14, Lcom/transsion/postdetail/R$id;->clHotComment:I

    .line 207
    .line 208
    sget v15, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    .line 209
    .line 210
    sget v16, Lcom/transsion/postdetail/R$id;->iv_user_avatar:I

    .line 211
    .line 212
    sget v17, Lcom/transsion/postdetail/R$id;->tv_user_name:I

    .line 213
    .line 214
    sget v18, Lcom/transsion/postdetail/R$id;->refresh_more:I

    .line 215
    .line 216
    filled-new-array/range {v5 .. v18}, [I

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 221
    .line 222
    .line 223
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/f4;

    .line 224
    .line 225
    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/f4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 229
    .line 230
    .line 231
    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Lwn/p;

    .line 238
    .line 239
    if-eqz v1, :cond_4

    .line 240
    .line 241
    iget-object v1, v1, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 242
    .line 243
    if-eqz v1, :cond_4

    .line 244
    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isStaggeredPost()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_2

    .line 250
    .line 251
    new-instance v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 252
    .line 253
    const/4 v5, 0x2

    .line 254
    invoke-direct {v3, v5, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f0(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_2
    new-instance v3, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-direct {v3, v5}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isStaggeredPost()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_3

    .line 278
    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    check-cast v3, Lwn/p;

    .line 284
    .line 285
    if-eqz v3, :cond_3

    .line 286
    .line 287
    iget-object v3, v3, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 288
    .line 289
    if-eqz v3, :cond_3

    .line 290
    .line 291
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-nez v3, :cond_3

    .line 296
    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Lwn/p;

    .line 302
    .line 303
    if-eqz v3, :cond_3

    .line 304
    .line 305
    iget-object v3, v3, Lwn/p;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 306
    .line 307
    if-eqz v3, :cond_3

    .line 308
    .line 309
    new-instance v5, Ltf/g;

    .line 310
    .line 311
    const/high16 v6, 0x40c00000    # 6.0f

    .line 312
    .line 313
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    invoke-direct {v5, v6, v4}, Ltf/g;-><init>(IZ)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 321
    .line 322
    .line 323
    :cond_3
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 324
    .line 325
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 326
    .line 327
    .line 328
    :cond_4
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 329
    .line 330
    if-eqz v1, :cond_5

    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->x()Landroidx/lifecycle/b0;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-eqz v1, :cond_5

    .line 337
    .line 338
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/p3;

    .line 339
    .line 340
    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/p3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 341
    .line 342
    .line 343
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;

    .line 344
    .line 345
    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 349
    .line 350
    .line 351
    :cond_5
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 352
    .line 353
    if-eqz v1, :cond_6

    .line 354
    .line 355
    invoke-virtual {v1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->A()Landroidx/lifecycle/LiveData;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    if-eqz v1, :cond_6

    .line 360
    .line 361
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/q3;

    .line 362
    .line 363
    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/q3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 364
    .line 365
    .line 366
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;

    .line 367
    .line 368
    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 372
    .line 373
    .line 374
    :cond_6
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 375
    .line 376
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-nez v1, :cond_7

    .line 381
    .line 382
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 383
    .line 384
    if-eqz v1, :cond_7

    .line 385
    .line 386
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLocalNoNetworkView(Z)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 391
    .line 392
    .line 393
    :cond_7
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract isNeedInsertPublishPost()Z
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract isStaggeredPost()Z
.end method

.method public abstract isSwipeRefreshEnable()Z
.end method

.method public lazyLoadData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {p0, v2, v3, v0, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/transsion/postdetail/util/g;->a:Lcom/transsion/postdetail/util/g;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/util/g;->d(Z)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initFeedVideo()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract loadData(ZZ)V
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/lifecycle/v0;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 18
    .line 19
    new-instance p1, Landroidx/lifecycle/v0;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 22
    .line 23
    .line 24
    const-class v0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 33
    .line 34
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Lqi/h;->h()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    const-string v0, "subpage_name"

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/String;

    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lho/a;->onPageDestroy()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/LazyFragment;->onHiddenChanged(Z)V

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
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->localLogPause()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Lho/a;->b()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lho/a;->c()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    const/16 v5, 0x9

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v2, p0

    .line 42
    move v3, p1

    .line 43
    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public abstract onItemHeaderClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method

.method public abstract onItemHeaderModuleName()Ljava/lang/String;
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
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->localLogPause()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lho/a;->b()V

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
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->postItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

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
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->showSettingDialog()V

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
    invoke-super {p0}, Lcom/transsion/baseui/fragment/LazyFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Lho/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lho/a;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
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

.method public openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v0, "/room/detail"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "id"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const-string v0, "/movie/detail"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_0
    const-string v2, "subject_type"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "id"

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "ops"

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x2

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUsername()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "/profile/user_profile"

    .line 43
    .line 44
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, "userId"

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x2

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public abstract pageName()Ljava/lang/String;
.end method

.method public abstract postAdapterFrom()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;
.end method

.method public retryLoadData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

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
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v3

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    :goto_1
    move v0, v2

    .line 28
    :goto_2
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-static {p0, v3, v0, v2, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected final setMAdapter(Lcom/transsion/postdetail/ui/adapter/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMDetailViewModel(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMExposureHelper(Lbj/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lbj/b;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMPage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMPageFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMParentTypeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mParentTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMPerPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPerPage:I

    .line 2
    .line 3
    return-void
.end method

.method protected final setMTopTab(Lcom/transsion/moviedetailapi/bean/RoomTabItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mTopTab:Lcom/transsion/moviedetailapi/bean/RoomTabItem;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMViewModel(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnNumNotExposureListener(Lij/q;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lbj/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lbj/b;->p(Lij/q;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public abstract subpageName()Ljava/lang/String;
.end method

.method public abstract tabIndex()I
.end method

.method public updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ops"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Lqi/b;->g()Ljava/util/HashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    instance-of v3, v3, Lcom/transsion/baseui/fragment/PageStatusFragment;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "null cannot be cast to non-null type com.transsion.baseui.fragment.PageStatusFragment<*>"

    .line 76
    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v3, Lcom/transsion/baseui/fragment/PageStatusFragment;

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-virtual {v3}, Lqi/b;->g()Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/String;

    .line 99
    .line 100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshResultCallback:Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lwn/p;

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    iget-object v0, v0, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-ne v0, v2, :cond_4

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lwn/p;

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    iget-object v0, v0, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 142
    .line 143
    .line 144
    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 145
    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_6
    const/4 v3, 0x0

    .line 160
    if-eqz p1, :cond_21

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Ljava/util/Collection;

    .line 167
    .line 168
    if-eqz v4, :cond_21

    .line 169
    .line 170
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_7

    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    instance-of v5, v4, Lep/g;

    .line 183
    .line 184
    if-eqz v5, :cond_8

    .line 185
    .line 186
    check-cast v4, Lep/g;

    .line 187
    .line 188
    invoke-interface {v4}, Lep/g;->P()V

    .line 189
    .line 190
    .line 191
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-eqz v4, :cond_9

    .line 196
    .line 197
    invoke-virtual {v4, v2}, Lqi/b;->k(Z)V

    .line 198
    .line 199
    .line 200
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    if-eqz v4, :cond_a

    .line 205
    .line 206
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    goto :goto_1

    .line 211
    :cond_a
    move-object v4, v3

    .line 212
    :goto_1
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    if-eqz v4, :cond_b

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 225
    .line 226
    :cond_b
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    if-eqz v4, :cond_c

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    .line 237
    .line 238
    :cond_c
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->isRefresh()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_e

    .line 243
    .line 244
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 245
    .line 246
    if-eqz v0, :cond_d

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    check-cast v4, Ljava/util/Collection;

    .line 253
    .line 254
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 255
    .line 256
    .line 257
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Lwn/p;

    .line 262
    .line 263
    if-eqz v0, :cond_1d

    .line 264
    .line 265
    invoke-virtual {v0}, Lwn/p;->b()Landroid/widget/FrameLayout;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_1d

    .line 270
    .line 271
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/w3;

    .line 272
    .line 273
    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ui/fragment/w3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 277
    .line 278
    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :cond_e
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    if-eqz v4, :cond_1d

    .line 286
    .line 287
    instance-of v5, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 288
    .line 289
    if-eqz v5, :cond_12

    .line 290
    .line 291
    check-cast v4, Ljava/lang/Iterable;

    .line 292
    .line 293
    new-instance v5, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    :cond_f
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-eqz v6, :cond_11

    .line 307
    .line 308
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    move-object v7, v6

    .line 313
    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 314
    .line 315
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    if-nez v8, :cond_10

    .line 320
    .line 321
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    if-nez v8, :cond_10

    .line 326
    .line 327
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_f

    .line 332
    .line 333
    :cond_10
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_11
    move-object v4, v5

    .line 338
    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .line 342
    .line 343
    move-object v6, v0

    .line 344
    check-cast v6, Ljava/util/Collection;

    .line 345
    .line 346
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-nez v6, :cond_16

    .line 351
    .line 352
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    if-eqz v6, :cond_1a

    .line 361
    .line 362
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    check-cast v6, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 367
    .line 368
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-eqz v7, :cond_13

    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_13
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 376
    .line 377
    if-eqz v7, :cond_14

    .line 378
    .line 379
    invoke-virtual {v6, v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 380
    .line 381
    .line 382
    :cond_14
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    .line 383
    .line 384
    if-eqz v7, :cond_15

    .line 385
    .line 386
    invoke-virtual {v6, v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setGroup(Lcom/transsion/moviedetailapi/bean/Group;)V

    .line 387
    .line 388
    .line 389
    :cond_15
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_16
    move-object v6, v4

    .line 394
    check-cast v6, Ljava/lang/Iterable;

    .line 395
    .line 396
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    :cond_17
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    if-eqz v7, :cond_19

    .line 405
    .line 406
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 411
    .line 412
    iget-object v8, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 413
    .line 414
    if-eqz v8, :cond_18

    .line 415
    .line 416
    invoke-virtual {v7, v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 417
    .line 418
    .line 419
    :cond_18
    iget-object v8, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    .line 420
    .line 421
    if-eqz v8, :cond_17

    .line 422
    .line 423
    invoke-virtual {v7, v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setGroup(Lcom/transsion/moviedetailapi/bean/Group;)V

    .line 424
    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_19
    check-cast v4, Ljava/util/Collection;

    .line 428
    .line 429
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 430
    .line 431
    .line 432
    :cond_1a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_1c

    .line 437
    .line 438
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 439
    .line 440
    if-eqz v4, :cond_1b

    .line 441
    .line 442
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    if-eqz v4, :cond_1b

    .line 447
    .line 448
    invoke-static {v4, v1, v2, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_1d

    .line 456
    .line 457
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    .line 458
    .line 459
    .line 460
    goto :goto_5

    .line 461
    :cond_1c
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 462
    .line 463
    if-eqz v0, :cond_1d

    .line 464
    .line 465
    invoke-virtual {v0, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 466
    .line 467
    .line 468
    :cond_1d
    :goto_5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 469
    .line 470
    if-eqz v0, :cond_1e

    .line 471
    .line 472
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    if-eqz v0, :cond_1e

    .line 477
    .line 478
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-ne v0, v2, :cond_1e

    .line 483
    .line 484
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 485
    .line 486
    if-eqz v0, :cond_1e

    .line 487
    .line 488
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-eqz v0, :cond_1e

    .line 493
    .line 494
    invoke-virtual {v0}, Lt6/f;->s()V

    .line 495
    .line 496
    .line 497
    :cond_1e
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-eqz v0, :cond_20

    .line 502
    .line 503
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    if-eqz p1, :cond_1f

    .line 508
    .line 509
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 514
    .line 515
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    goto :goto_6

    .line 520
    :cond_1f
    move p1, v1

    .line 521
    :goto_6
    if-nez p1, :cond_20

    .line 522
    .line 523
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 524
    .line 525
    if-eqz p1, :cond_20

    .line 526
    .line 527
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    if-eqz p1, :cond_20

    .line 532
    .line 533
    invoke-static {p1, v1, v2, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    :cond_20
    return-void

    .line 537
    :cond_21
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 538
    .line 539
    .line 540
    move-result v4

    .line 541
    if-eqz v4, :cond_22

    .line 542
    .line 543
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_c

    .line 547
    .line 548
    :cond_22
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 549
    .line 550
    if-eqz v4, :cond_23

    .line 551
    .line 552
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    if-eqz v4, :cond_23

    .line 557
    .line 558
    invoke-virtual {v4}, Lt6/f;->r()Z

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    if-ne v4, v2, :cond_23

    .line 563
    .line 564
    move v4, v2

    .line 565
    goto :goto_8

    .line 566
    :cond_23
    move v4, v1

    .line 567
    :goto_8
    if-eqz v4, :cond_29

    .line 568
    .line 569
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 574
    .line 575
    if-eqz v0, :cond_24

    .line 576
    .line 577
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-ne v0, v2, :cond_24

    .line 582
    .line 583
    move v0, v2

    .line 584
    goto :goto_9

    .line 585
    :cond_24
    move v0, v1

    .line 586
    :goto_9
    if-eqz v0, :cond_25

    .line 587
    .line 588
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 589
    .line 590
    if-eqz p1, :cond_29

    .line 591
    .line 592
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    if-eqz p1, :cond_29

    .line 597
    .line 598
    invoke-virtual {p1}, Lt6/f;->s()V

    .line 599
    .line 600
    .line 601
    goto :goto_c

    .line 602
    :cond_25
    if-eqz p1, :cond_26

    .line 603
    .line 604
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    goto :goto_a

    .line 609
    :cond_26
    move-object v0, v3

    .line 610
    :goto_a
    if-eqz v0, :cond_28

    .line 611
    .line 612
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    if-eqz p1, :cond_27

    .line 617
    .line 618
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 623
    .line 624
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result p1

    .line 628
    goto :goto_b

    .line 629
    :cond_27
    move p1, v1

    .line 630
    :goto_b
    if-nez p1, :cond_28

    .line 631
    .line 632
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 633
    .line 634
    if-eqz p1, :cond_29

    .line 635
    .line 636
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    if-eqz p1, :cond_29

    .line 641
    .line 642
    invoke-static {p1, v1, v2, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    goto :goto_c

    .line 646
    :cond_28
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 647
    .line 648
    if-eqz p1, :cond_29

    .line 649
    .line 650
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    if-eqz p1, :cond_29

    .line 655
    .line 656
    invoke-virtual {p1}, Lt6/f;->v()V

    .line 657
    .line 658
    .line 659
    :cond_29
    :goto_c
    return-void
.end method

.method public updateRoomCacheData(ILcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 9

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshResultCallback:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lwn/p;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lwn/p;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, v0, Lwn/p;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_4
    const/4 v3, 0x0

    .line 71
    if-eqz p2, :cond_18

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/util/Collection;

    .line 78
    .line 79
    if-eqz v4, :cond_18

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    if-eqz v4, :cond_6

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    goto :goto_0

    .line 100
    :cond_6
    move-object v4, v3

    .line 101
    :goto_0
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eqz v4, :cond_7

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 114
    .line 115
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz v4, :cond_8

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    .line 126
    .line 127
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->isRefresh()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_a

    .line 132
    .line 133
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 134
    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/util/Collection;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 144
    .line 145
    .line 146
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lwn/p;

    .line 151
    .line 152
    if-eqz p1, :cond_14

    .line 153
    .line 154
    invoke-virtual {p1}, Lwn/p;->b()Landroid/widget/FrameLayout;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_14

    .line 159
    .line 160
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/z3;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/z3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 166
    .line 167
    .line 168
    goto/16 :goto_4

    .line 169
    .line 170
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_14

    .line 175
    .line 176
    instance-of v5, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 177
    .line 178
    if-eqz v5, :cond_e

    .line 179
    .line 180
    check-cast v4, Ljava/lang/Iterable;

    .line 181
    .line 182
    new-instance v5, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    :cond_b
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_d

    .line 196
    .line 197
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    move-object v7, v6

    .line 202
    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 203
    .line 204
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    if-nez v8, :cond_c

    .line 209
    .line 210
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-nez v8, :cond_c

    .line 215
    .line 216
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_b

    .line 221
    .line 222
    :cond_c
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_d
    move-object v4, v5

    .line 227
    :cond_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_10

    .line 232
    .line 233
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 234
    .line 235
    if-eqz p1, :cond_f

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-eqz p1, :cond_f

    .line 242
    .line 243
    invoke-static {p1, v2, v1, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_14

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_10
    add-int/lit8 v0, p1, 0x1

    .line 257
    .line 258
    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 259
    .line 260
    if-eqz v5, :cond_11

    .line 261
    .line 262
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    goto :goto_2

    .line 267
    :cond_11
    move v5, v2

    .line 268
    :goto_2
    if-ge v0, v5, :cond_12

    .line 269
    .line 270
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 271
    .line 272
    if-eqz p1, :cond_14

    .line 273
    .line 274
    check-cast v4, Ljava/util/Collection;

    .line 275
    .line 276
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->o(ILjava/util/Collection;)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_12
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 281
    .line 282
    if-eqz v0, :cond_14

    .line 283
    .line 284
    if-ltz p1, :cond_13

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_13
    move p1, v2

    .line 288
    :goto_3
    check-cast v4, Ljava/util/Collection;

    .line 289
    .line 290
    invoke-virtual {v0, p1, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->o(ILjava/util/Collection;)V

    .line 291
    .line 292
    .line 293
    :cond_14
    :goto_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 294
    .line 295
    if-eqz p1, :cond_15

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    if-eqz p1, :cond_15

    .line 302
    .line 303
    invoke-virtual {p1}, Lt6/f;->r()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-ne p1, v1, :cond_15

    .line 308
    .line 309
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 310
    .line 311
    if-eqz p1, :cond_15

    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-eqz p1, :cond_15

    .line 318
    .line 319
    invoke-virtual {p1}, Lt6/f;->s()V

    .line 320
    .line 321
    .line 322
    :cond_15
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    if-eqz p1, :cond_16

    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 333
    .line 334
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    goto :goto_5

    .line 339
    :cond_16
    move p1, v2

    .line 340
    :goto_5
    if-nez p1, :cond_17

    .line 341
    .line 342
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 343
    .line 344
    if-eqz p1, :cond_17

    .line 345
    .line 346
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    if-eqz p1, :cond_17

    .line 351
    .line 352
    invoke-static {p1, v2, v1, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :cond_17
    return-void

    .line 356
    :cond_18
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-eqz p1, :cond_19

    .line 361
    .line 362
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    .line 363
    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_19
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 367
    .line 368
    if-eqz p1, :cond_1a

    .line 369
    .line 370
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    if-eqz p1, :cond_1a

    .line 375
    .line 376
    invoke-virtual {p1}, Lt6/f;->r()Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-ne p1, v1, :cond_1a

    .line 381
    .line 382
    move p1, v1

    .line 383
    goto :goto_7

    .line 384
    :cond_1a
    move p1, v2

    .line 385
    :goto_7
    if-eqz p1, :cond_1d

    .line 386
    .line 387
    if-eqz p2, :cond_1b

    .line 388
    .line 389
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    if-eqz p1, :cond_1b

    .line 394
    .line 395
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 400
    .line 401
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    goto :goto_8

    .line 406
    :cond_1b
    move p1, v2

    .line 407
    :goto_8
    if-nez p1, :cond_1c

    .line 408
    .line 409
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 410
    .line 411
    if-eqz p1, :cond_1d

    .line 412
    .line 413
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    if-eqz p1, :cond_1d

    .line 418
    .line 419
    invoke-static {p1, v2, v1, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_1c
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/f;

    .line 424
    .line 425
    if-eqz p1, :cond_1d

    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    if-eqz p1, :cond_1d

    .line 432
    .line 433
    invoke-virtual {p1}, Lt6/f;->v()V

    .line 434
    .line 435
    .line 436
    :cond_1d
    :goto_9
    return-void
.end method
