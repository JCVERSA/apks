.class public Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0002\u00b1\u0001\u0008\u0017\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\nJ\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0012J\'\u0010\u001c\u001a\u00020\u00082\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\u0008\u0012\u0004\u0012\u00020\u0019`\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\nJ\u000f\u0010\u001f\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008\u001f\u0010\nJ\u000f\u0010 \u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008 \u0010\nJ\u001f\u0010$\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008&\u0010\nJ\u0017\u0010)\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00100\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00080\u0010\u0012J\u000f\u00101\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00083\u0010\nJ\u000f\u00104\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00084\u0010\nJ\u0017\u00106\u001a\u00020\u00082\u0008\u00105\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u00086\u00107J\r\u00108\u001a\u00020\u0008\u00a2\u0006\u0004\u00088\u0010\nJ\u000f\u00109\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u00089\u0010\nJ\u000f\u0010:\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008:\u0010\nJ\u0017\u0010<\u001a\u00020\u00082\u0006\u0010;\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008<\u0010*J\u0017\u0010?\u001a\u00020\u00082\u0006\u0010>\u001a\u00020=H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u001f\u0010B\u001a\u00020\u00082\u0006\u0010A\u001a\u00020+2\u0006\u0010;\u001a\u00020\'H\u0014\u00a2\u0006\u0004\u0008B\u0010CJ\r\u0010D\u001a\u00020\u000f\u00a2\u0006\u0004\u0008D\u00102J\'\u0010F\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\u0006\u0010E\u001a\u00020!H\u0014\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008H\u0010\nJ\u0017\u0010J\u001a\u00020\u00082\u0006\u0010I\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008J\u0010\u0012J\u0017\u0010M\u001a\u00020\u00082\u0006\u0010L\u001a\u00020KH\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\r\u0010O\u001a\u00020\u0008\u00a2\u0006\u0004\u0008O\u0010\nJ\u0015\u0010Q\u001a\u00020\u00082\u0006\u0010P\u001a\u00020\u000f\u00a2\u0006\u0004\u0008Q\u0010\u0012J\u0017\u0010S\u001a\u00020\u00082\u0006\u0010R\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008S\u0010\u0012J\u000f\u0010T\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008T\u0010\nJ\r\u0010U\u001a\u00020\u0008\u00a2\u0006\u0004\u0008U\u0010\nJ\u0015\u0010W\u001a\u00020\u00082\u0006\u0010V\u001a\u00020\u000f\u00a2\u0006\u0004\u0008W\u0010\u0012R\u001a\u0010Y\u001a\u00020X8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R\u0016\u0010^\u001a\u00020]8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008`\u0010_R\u0016\u0010a\u001a\u00020]8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008a\u0010_R\u0016\u0010b\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0016\u0010d\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008d\u0010cR\u0016\u0010e\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008e\u0010cR\u0016\u0010g\u001a\u00020f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0016\u0010i\u001a\u00020f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008i\u0010hR\u0016\u0010j\u001a\u00020f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008j\u0010hR\u0016\u0010l\u001a\u00020k8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010o\u001a\u00020n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0016\u0010r\u001a\u00020q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0016\u0010u\u001a\u00020t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0016\u0010w\u001a\u00020t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008w\u0010vR\u0016\u0010x\u001a\u00020t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008x\u0010vR\u0016\u0010y\u001a\u00020t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008y\u0010vR\u0016\u0010z\u001a\u00020t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008z\u0010vR\u0016\u0010|\u001a\u00020{8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u0017\u0010\u007f\u001a\u00020~8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u001a\u0010\u0082\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001a\u0010\u0084\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0083\u0001R\u0018\u0010\u0085\u0001\u001a\u00020f8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010hR\u0018\u0010\u0086\u0001\u001a\u00020f8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010hR\u001a\u0010\u0087\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0083\u0001R\u0018\u0010\u0088\u0001\u001a\u00020]8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010_R$\u0010\u008b\u0001\u001a\r \u008a\u0001*\u0005\u0018\u00010\u0089\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001a\u0010\u008e\u0001\u001a\u00030\u008d\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R \u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u00020\u00190\u0090\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u0019\u0010\u0095\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u0097\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u001a\u0010\u009a\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u001a\u0010\u009d\u0001\u001a\u00030\u009c\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0019\u0010\u00a1\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u0098\u0001R\u0019\u0010\u00a2\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u0098\u0001R\u0019\u0010\u00a3\u0001\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0019\u0010\u00a5\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u0098\u0001R\u0019\u0010\u00a6\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u0096\u0001R\u0018\u0010\u00a7\u0001\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u00a7\u0001\u0010cR\u001a\u0010\u00a9\u0001\u001a\u00030\u00a8\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u001a\u0010\u00ab\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ab\u0001\u0010cR\u001a\u0010\u00ac\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ac\u0001\u0010cR\u0019\u0010\u00ad\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u0098\u0001R\u0019\u0010\u00ae\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0019\u0010\u00b0\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u0098\u0001R\u0018\u0010\u00b2\u0001\u001a\u00030\u00b1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u0018\u0010\u00b5\u0001\u001a\u00030\u00b4\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R\u0018\u0010\u00b8\u0001\u001a\u00030\u00b7\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u0018\u0010\u00ba\u0001\u001a\u00030\u00b7\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u00b9\u0001R\u001a\u0010\u00bb\u0001\u001a\u00030\u00b7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u00b9\u0001R\u001a\u0010\u00bd\u0001\u001a\u00030\u00bc\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u001a\u0010\u00c0\u0001\u001a\u00030\u00bf\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u0019\u0010\u00c2\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u0098\u0001R\u0019\u0010\u00c3\u0001\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00a4\u0001\u00a8\u0006\u00c4\u0001"
    }
    d2 = {
        "Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lzfb;",
        "initClick",
        "()V",
        "initView",
        "(Landroid/content/Context;)V",
        "makeMotionLayoutChildAlpha1",
        "initData",
        "",
        "show",
        "markLrcView",
        "(Z)V",
        "setCarousel",
        "isPlaying",
        "playStatusChange",
        "isAnimation",
        "setBeingAnimation",
        "Ljava/util/ArrayList;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lkotlin/collections/ArrayList;",
        "arrayList",
        "refreshPlayList",
        "(Ljava/util/ArrayList;)V",
        "checkPlayList",
        "loadAudioAlbums",
        "runVideoProgressUpdate",
        "",
        "position",
        "duration",
        "updateProgress",
        "(JJ)V",
        "searchLyrics",
        "",
        "offset",
        "setCurrentOffset",
        "(I)V",
        "Landroid/view/View;",
        "view",
        "initLrcView",
        "(Landroid/view/View;)V",
        "isLrcMode",
        "switchToLrcView",
        "isNeedShowVisualizerView",
        "()Z",
        "updateVolumeSeekBar",
        "pauseOrResumeAnim",
        "audioItem",
        "updateUI",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "updatePermission",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "visibility",
        "setVisibility",
        "",
        "alpha",
        "setAlpha",
        "(F)V",
        "changedView",
        "onVisibilityChanged",
        "(Landroid/view/View;I)V",
        "isAudioPlaying",
        "bufferedPosition",
        "onProgressUpdateError",
        "(JJJ)V",
        "updateLoadingView",
        "isEmpty",
        "updateEmptyView",
        "Lwoc;",
        "windowOptions",
        "adaptLayout",
        "(Lwoc;)V",
        "onResume",
        "visible",
        "showVolume",
        "isUp",
        "setVolume",
        "onVolumeChange",
        "resetHalfOpenPlayerCurrentMusicAlbum",
        "start",
        "onCallStartOrStop",
        "",
        "TAG",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "Landroidx/constraintlayout/widget/Guideline;",
        "topLine",
        "Landroidx/constraintlayout/widget/Guideline;",
        "startMarginLine",
        "endMarginLine",
        "leftMarginLine",
        "Landroid/view/View;",
        "rightMarginLine",
        "emptyPermission",
        "Landroid/widget/TextView;",
        "mTvTitle",
        "Landroid/widget/TextView;",
        "mArtistName",
        "mTvPermission",
        "Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;",
        "audioVisualizerView",
        "Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;",
        "Lcom/transsion/audio/widgets/AudioMotionLayout;",
        "audioMotionLayout",
        "Lcom/transsion/audio/widgets/AudioMotionLayout;",
        "Lcom/transsion/audio/widgets/AudioCarousel;",
        "carousel",
        "Lcom/transsion/audio/widgets/AudioCarousel;",
        "Lcom/transsion/audio/widgets/AudioPlayerItemView;",
        "audioItemView0",
        "Lcom/transsion/audio/widgets/AudioPlayerItemView;",
        "audioItemView1",
        "audioItemView2",
        "audioItemView3",
        "audioItemView4",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;",
        "mBottomSeekBar",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;",
        "Landroid/widget/SeekBar;",
        "mVolumeSeekBar",
        "Landroid/widget/SeekBar;",
        "Landroid/widget/ImageView;",
        "mVolumeIv",
        "Landroid/widget/ImageView;",
        "mVolumeIcon",
        "mTvTotalProgress",
        "mTvCurrentProgress",
        "btnPlay",
        "mBtmLine",
        "Lcom/transsion/audio/player/MusicPlayManager;",
        "kotlin.jvm.PlatformType",
        "playManager",
        "Lcom/transsion/audio/player/MusicPlayManager;",
        "Lcom/transsion/dbdata/beans/media/PlayAudioListData;",
        "playListData",
        "Lcom/transsion/dbdata/beans/media/PlayAudioListData;",
        "",
        "playList",
        "Ljava/util/List;",
        "mCurrentMediaItem",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "mDuration",
        "J",
        "mTracking",
        "Z",
        "Lcom/transsion/playercommon/videomodel/PlayListModel;",
        "audioModel",
        "Lcom/transsion/playercommon/videomodel/PlayListModel;",
        "Lcom/transsion/WindowInfoViewModel;",
        "windowModel",
        "Lcom/transsion/WindowInfoViewModel;",
        "mWindowOptions",
        "Lwoc;",
        "isInjectCover",
        "beingAnimation",
        "lastProgress",
        "F",
        "hasBeenRollback",
        "animComplete",
        "rootView",
        "Lcom/transsion/audio/data/AudioOpStatus;",
        "mAudioOpStatus",
        "Lcom/transsion/audio/data/AudioOpStatus;",
        "mEmptyView",
        "mLoadingView",
        "mIsLoadingLyric",
        "mSafeInsetBottom",
        "I",
        "mIsStart",
        "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1",
        "audioCarouselAdapter",
        "Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;",
        "Lcom/transsion/audio/player/MusicPlayManager$d;",
        "playerListener",
        "Lcom/transsion/audio/player/MusicPlayManager$d;",
        "Ljava/lang/Runnable;",
        "errorNextRunnable",
        "Ljava/lang/Runnable;",
        "hideVolBarRunnable",
        "progressUpdateRunnable",
        "Landroidx/appcompat/widget/AppCompatCheckedTextView;",
        "mSwitchView",
        "Landroidx/appcompat/widget/AppCompatCheckedTextView;",
        "Lcom/transsion/audio/widgets/LrcViewNew;",
        "mLrcView",
        "Lcom/transsion/audio/widgets/LrcViewNew;",
        "mIsLrcMode",
        "mCurrentOffset",
        "audio_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private animComplete:J

.field private final audioCarouselAdapter:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;

.field private audioItemView0:Lcom/transsion/audio/widgets/AudioPlayerItemView;

.field private audioItemView1:Lcom/transsion/audio/widgets/AudioPlayerItemView;

.field private audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

.field private audioItemView3:Lcom/transsion/audio/widgets/AudioPlayerItemView;

.field private audioItemView4:Lcom/transsion/audio/widgets/AudioPlayerItemView;

.field private audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field private audioMotionLayout:Lcom/transsion/audio/widgets/AudioMotionLayout;

.field private audioVisualizerView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

.field private beingAnimation:Z

.field private btnPlay:Landroid/widget/ImageView;

.field private carousel:Lcom/transsion/audio/widgets/AudioCarousel;

.field private emptyPermission:Landroid/view/View;

.field private endMarginLine:Landroidx/constraintlayout/widget/Guideline;

.field private final errorNextRunnable:Ljava/lang/Runnable;

.field private hasBeenRollback:Z

.field private final hideVolBarRunnable:Ljava/lang/Runnable;

.field private isInjectCover:Z

.field private lastProgress:F

.field private leftMarginLine:Landroid/view/View;

.field private mArtistName:Landroid/widget/TextView;

.field private mAudioOpStatus:Lcom/transsion/audio/data/AudioOpStatus;

.field private mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field private mBtmLine:Landroidx/constraintlayout/widget/Guideline;

.field private mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

.field private mCurrentOffset:F

.field private mDuration:J

.field private mEmptyView:Landroid/view/View;

.field private mIsLoadingLyric:Z

.field private mIsLrcMode:Z

.field private mIsStart:Z

.field private mLoadingView:Landroid/view/View;

.field private mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

.field private mSafeInsetBottom:I

.field private mSwitchView:Landroidx/appcompat/widget/AppCompatCheckedTextView;

.field private mTracking:Z

.field private mTvCurrentProgress:Landroid/widget/TextView;

.field private mTvPermission:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mTvTotalProgress:Landroid/widget/TextView;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeIv:Landroid/widget/ImageView;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;

.field private mWindowOptions:Lwoc;

.field private playList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private playListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

.field private playManager:Lcom/transsion/audio/player/MusicPlayManager;

.field private final playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

.field private progressUpdateRunnable:Ljava/lang/Runnable;

.field private rightMarginLine:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private startMarginLine:Landroidx/constraintlayout/widget/Guideline;

.field private topLine:Landroidx/constraintlayout/widget/Guideline;

.field private windowModel:Lcom/transsion/WindowInfoViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "HalfOpenAudioPlayerLayout"

    iput-object p2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    instance-of p2, p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/transsion/audio/activities/AudioPlayerActivity;

    const-class v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const-class v0, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/transsion/WindowInfoViewModel;

    iput-object p2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->windowModel:Lcom/transsion/WindowInfoViewModel;

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initData()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initClick()V

    new-instance p1, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioCarouselAdapter:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;

    new-instance p1, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    new-instance p1, Lkn4;

    invoke-direct {p1}, Lkn4;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    new-instance p1, Lln4;

    invoke-direct {p1, p0}, Lln4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable:Ljava/lang/Runnable;

    new-instance p1, Lmn4;

    invoke-direct {p1, p0}, Lmn4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->loadAudioAlbums$lambda$21(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lzfb;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->loadAudioAlbums$lambda$20(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lzfb;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initClick$lambda$5$lambda$4(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    return-void
.end method

.method public static final synthetic access$getAudioItemView2$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerItemView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    return-object p0
.end method

.method public static final synthetic access$getBeingAnimation$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    return p0
.end method

.method public static final synthetic access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    return-object p0
.end method

.method public static final synthetic access$getErrorNextRunnable$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getHasBeenRollback$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hasBeenRollback:Z

    return p0
.end method

.method public static final synthetic access$getHideVolBarRunnable$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getLastProgress$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->lastProgress:F

    return p0
.end method

.method public static final synthetic access$getMAudioOpStatus$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/data/AudioOpStatus;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mAudioOpStatus:Lcom/transsion/audio/data/AudioOpStatus;

    return-object p0
.end method

.method public static final synthetic access$getMBottomSeekBar$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public static final synthetic access$getMCurrentMediaItem$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static final synthetic access$getMDuration$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mDuration:J

    return-wide v0
.end method

.method public static final synthetic access$getMIsLrcMode$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    return p0
.end method

.method public static final synthetic access$getMIsStart$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsStart:Z

    return p0
.end method

.method public static final synthetic access$getMLrcView$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/LrcViewNew;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    return-object p0
.end method

.method public static final synthetic access$getMTracking$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTracking:Z

    return p0
.end method

.method public static final synthetic access$getMTvCurrentProgress$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPlayManager$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static final synthetic access$isInjectCover$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isInjectCover:Z

    return p0
.end method

.method public static final synthetic access$loadAudioAlbums(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->loadAudioAlbums()V

    return-void
.end method

.method public static final synthetic access$makeMotionLayoutChildAlpha1(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->makeMotionLayoutChildAlpha1()V

    return-void
.end method

.method public static final synthetic access$playStatusChange(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playStatusChange(Z)V

    return-void
.end method

.method public static final synthetic access$refreshPlayList(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->refreshPlayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic access$setAnimComplete$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->animComplete:J

    return-void
.end method

.method public static final synthetic access$setBeingAnimation(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setBeingAnimation(Z)V

    return-void
.end method

.method public static final synthetic access$setHasBeenRollback$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hasBeenRollback:Z

    return-void
.end method

.method public static final synthetic access$setLastProgress$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->lastProgress:F

    return-void
.end method

.method public static final synthetic access$setMIsLoadingLyric$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLoadingLyric:Z

    return-void
.end method

.method public static final synthetic access$setMTracking$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTracking:Z

    return-void
.end method

.method public static final synthetic access$updateVolumeSeekBar(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateVolumeSeekBar()V

    return-void
.end method

.method private static final adaptLayout$lambda$30(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->switchToLrcView(Z)V

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->markLrcView(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lcom/transsion/audio/widgets/LrcViewNew;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initLrcView$lambda$26(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lcom/transsion/audio/widgets/LrcViewNew;FF)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable$lambda$22(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method

.method private final checkPlayList()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    if-nez p0, :cond_0

    const-string p0, "playListData"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "getPlayList(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lcom/transsion/audio/widgets/LrcViewNew;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initLrcView$lambda$25(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lcom/transsion/audio/widgets/LrcViewNew;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable$lambda$16(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method

.method private static final errorNextRunnable$lambda$15()V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->R0()V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initClick$lambda$3(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initLrcView$lambda$27(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setCurrentOffset$lambda$24(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method

.method private static final hideVolBarRunnable$lambda$16(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mVolumeIcon"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    const-string v2, "mVolumeIv"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p0, :cond_2

    const-string p0, "mVolumeSeekBar"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-static {v0, v2, v1, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioAnimotionHelper;->showVolumeWithAnimotion(Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic i(Le74;Ljava/lang/Object;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->loadAudioAlbums$lambda$19(Le74;Ljava/lang/Object;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final initClick()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSwitchView:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mSwitchView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lum4;

    invoke-direct {v2, p0}, Lum4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView1:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez v0, :cond_1

    const-string v0, "audioItemView1"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v2, Lvm4;

    invoke-direct {v2, p0}, Lvm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-static {v0, v2}, Lcom/transsion/widgets/GestureUtil;->scrollGesturesForAudio(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView3:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez v0, :cond_2

    const-string v0, "audioItemView3"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    new-instance v2, Lwm4;

    invoke-direct {v2, p0}, Lwm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-static {v0, v2}, Lcom/transsion/widgets/GestureUtil;->scrollGesturesForAudio(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->btnPlay:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const-string v0, "btnPlay"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    new-instance v2, Lym4;

    invoke-direct {v2, p0}, Lym4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-static {v0, v2}, Lcom/transsion/widgets/GestureUtil;->scrollGesturesForAudio(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvPermission:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v0, "mTvPermission"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    new-instance v0, Lzm4;

    invoke-direct {v0, p0}, Lzm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initClick$lambda$0(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-nez p1, :cond_0

    const-string p1, "audioModel"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/PlayListModel;->o:Landroidx/lifecycle/MutableLiveData;

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final initClick$lambda$1(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioItemView1 scrollGestures beingAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const-string v3, "carousel"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->animComplete:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long p1, v4, v6

    if-lez p1, :cond_7

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_2

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionPrevious(I)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_4

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionPrevious(I)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_6

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v2, p0

    :goto_2
    invoke-virtual {v2, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionNext(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private static final initClick$lambda$2(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioItemView3 scrollGestures beingAnimation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  time="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const-string v3, "carousel"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->animComplete:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long p1, v4, v6

    if-lez p1, :cond_7

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_2

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionNext(I)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_4

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionPrevious(I)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_6

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v2, p0

    :goto_2
    invoke-virtual {v2, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionNext(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private static final initClick$lambda$3(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioItemView2 scrollGestures beingAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1f4

    const/4 v1, 0x0

    const-string v2, "carousel"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isAudioPlaying()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {p1, v3, p0}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_6

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_3

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionPrevious(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_6

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_5

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionNext(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final initClick$lambda$5(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    new-instance v0, Lnn4;

    invoke-direct {v0, p1, p0}, Lnn4;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {p1, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->I1(Landroidx/activity/result/ActivityResultCallback;)V

    return-void
.end method

.method private static final initClick$lambda$5$lambda$4(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->N1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updatePermission()V

    :goto_0
    return-void
.end method

.method private final initData()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "playListData"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setRepeatMode(I)V

    new-instance v0, Lom4;

    invoke-direct {v0, p0}, Lom4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget-boolean v0, v0, Lcom/transsion/data/Repository;->isLrcMode:Z

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-nez v0, :cond_1

    const-string v0, "audioModel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/transsion/playercommon/videomodel/PlayListModel;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    new-instance v2, Lpm4;

    invoke-direct {v2, p0}, Lpm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    new-instance p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$sam$androidx_lifecycle_Observer$0;-><init>(Le74;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final initData$lambda$11(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    if-nez v0, :cond_0

    const-string v0, "playListData"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getPlayList(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->refreshPlayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final initData$lambda$12(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Boolean;)Lzfb;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mWindowOptions:Lwoc;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->switchToLrcView(Z)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final initLrcView(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/transsion/audio/R$id;->lyrics_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/widgets/LrcViewNew;

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    const-string v0, "mLrcView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$color;->white:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setCurrentColor(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_1

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$color;->lyric_timeline_color:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setTimeTextColor(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_2

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$color;->lyric_second_highlight_color:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setTimelineTextColor(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_3

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$color;->lyric_normal_color:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setNormalColor(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_4

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->no_lyrics:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setLabel(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_5

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    new-instance v2, Lqm4;

    invoke-direct {v2, p0}, Lqm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setDraggable(ZLcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_6

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6
    new-instance v0, Lrm4;

    invoke-direct {v0, p0}, Lrm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->setOnTapListener(Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioVisualizerView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    if-nez p1, :cond_7

    const-string p1, "audioVisualizerView"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7
    new-instance v0, Lsm4;

    invoke-direct {v0, p0}, Lsm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->emptyPermission:Landroid/view/View;

    if-nez p1, :cond_8

    const-string p1, "emptyPermission"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v1, p1

    :goto_0
    new-instance p1, Ltm4;

    invoke-direct {p1, p0}, Ltm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initLrcView$lambda$25(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lcom/transsion/audio/widgets/LrcViewNew;J)Z
    .locals 0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->m1(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final initLrcView$lambda$26(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lcom/transsion/audio/widgets/LrcViewNew;FF)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-nez p1, :cond_0

    const-string p1, "audioModel"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/PlayListModel;->o:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->markLrcView(Z)V

    return-void
.end method

.method private static final initLrcView$lambda$27(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-nez p1, :cond_0

    const-string p1, "audioModel"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/PlayListModel;->o:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->markLrcView(Z)V

    return-void
.end method

.method private static final initLrcView$lambda$28(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-nez p0, :cond_0

    const-string p0, "audioModel"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->o:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final initView(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/transsion/audio/data/AudioOpStatus;

    invoke-direct {v0}, Lcom/transsion/audio/data/AudioOpStatus;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mAudioOpStatus:Lcom/transsion/audio/data/AudioOpStatus;

    invoke-static {}, Lpp3;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/audio/R$layout;->layout_audio_player_half_open_flat:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/audio/R$layout;->layout_audio_player_half_open:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    const-string v1, "rootView"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v3, Lcom/transsion/audio/R$id;->top_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->topLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    sget v3, Lcom/transsion/audio/R$id;->start_margin_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->startMarginLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    sget v3, Lcom/transsion/audio/R$id;->end_margin_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->endMarginLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    sget v3, Lcom/transsion/audio/R$id;->left_margin_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->leftMarginLine:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    sget v3, Lcom/transsion/audio/R$id;->right_margin_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rightMarginLine:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    sget v3, Lcom/transsion/audio/R$id;->ll_empty_permission:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->emptyPermission:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    sget v3, Lcom/transsion/audio/R$id;->tv_audio_play_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    sget v3, Lcom/transsion/audio/R$id;->tv_audio_artist:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    sget v3, Lcom/transsion/audio/R$id;->tv_permission:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvPermission:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_a

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    sget v3, Lcom/transsion/audio/R$id;->audio_visualizer_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioVisualizerView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_b

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    sget v3, Lcom/transsion/audio/R$id;->motionLayout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioMotionLayout;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioMotionLayout:Lcom/transsion/audio/widgets/AudioMotionLayout;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_c

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    sget v3, Lcom/transsion/audio/R$id;->btn_play:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->btnPlay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_d

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    sget v3, Lcom/transsion/audio/R$id;->carousel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioCarousel;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_e

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    sget v3, Lcom/transsion/audio/R$id;->audioItem0:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView0:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_f

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_f
    sget v3, Lcom/transsion/audio/R$id;->audioItem1:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView1:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_10

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    sget v3, Lcom/transsion/audio/R$id;->audioItem2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_11

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    sget v3, Lcom/transsion/audio/R$id;->audioItem3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView3:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_12

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    sget v3, Lcom/transsion/audio/R$id;->audioItem4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView4:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView0:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    const-string v3, "audioItemView0"

    if-nez v0, :cond_13

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_13
    invoke-virtual {v0, v3}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView1:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    const-string v3, "audioItemView1"

    if-nez v0, :cond_14

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_14
    invoke-virtual {v0, v3}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    const-string v3, "audioItemView2"

    if-nez v0, :cond_15

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_15
    invoke-virtual {v0, v3}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView3:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    const-string v3, "audioItemView3"

    if-nez v0, :cond_16

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_16
    invoke-virtual {v0, v3}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView4:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    const-string v3, "audioItemView4"

    if-nez v0, :cond_17

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_17
    invoke-virtual {v0, v3}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_18

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_18
    sget v3, Lcom/transsion/audio/R$id;->tv_switch:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSwitchView:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_19

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_19
    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initLrcView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_1a

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1a
    sget v3, Lcom/transsion/audio/R$id;->gl_btm:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBtmLine:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_1b

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1b
    sget v3, Lcom/transsion/audio/R$id;->tv_video_play_current_progress:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_1c

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1c
    sget v3, Lcom/transsion/audio/R$id;->tv_video_play_total_progress:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvTotalProgress:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_1d

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1d
    sget v3, Lcom/transsion/audio/R$id;->seekbar_video_play:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_1e

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1e
    sget v3, Lcom/transsion/audio/R$id;->seekbar_volume:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_1f

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1f
    sget v3, Lcom/transsion/audio/R$id;->iv_volume:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_20

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_20
    sget v3, Lcom/transsion/audio/R$id;->volume:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_21

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_21
    sget v1, Lcom/transsion/audio/R$id;->volume_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lbn4;

    invoke-direct {v1, p0}, Lbn4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const-string v1, "mBottomSeekBar"

    if-nez v0, :cond_22

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_22
    new-instance v3, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;

    invoke-direct {v3, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_23

    const-string v0, "mVolumeSeekBar"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_23
    new-instance v3, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;

    invoke-direct {v3, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "initView"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateVolumeSeekBar()V

    invoke-static {p1}, Lvha;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-nez v0, :cond_24

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_24
    invoke-static {p1}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-nez v0, :cond_26

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_26
    new-instance v1, Lcn4;

    invoke-direct {v1, p0}, Lcn4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioMotionLayout:Lcom/transsion/audio/widgets/AudioMotionLayout;

    if-nez v0, :cond_27

    const-string v0, "audioMotionLayout"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_27
    move-object v2, v0

    :goto_1
    new-instance v0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "change_audio_cover"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity"

    invoke-static {p1, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    new-instance v2, Ldn4;

    invoke-direct {v2, p0}, Ldn4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v2, "audio_switch_repeat_mode"

    invoke-virtual {v0, v2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v2, Len4;

    invoke-direct {v2, p0}, Len4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_28

    new-instance v0, Lfn4;

    invoke-direct {v0, p0, p1}, Lfn4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_28
    return-void
.end method

.method private static final initView$lambda$10(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/content/Context;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "v"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-static {p3, v0}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSafeInsetBottom:I

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBtmLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_0

    const-string v0, "mBtmLine"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSafeInsetBottom:I

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p1, v1}, Lcom/transsion/audio/a;->b(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private static final initView$lambda$6(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Loa1;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "mVolumeIcon"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    const-string v1, "mVolumeIv"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_3

    const-string v2, "mVolumeSeekBar"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/transsion/audio/widgets/HalfOpenAudioAnimotionHelper;->showVolumeWithAnimotion(Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final initView$lambda$7(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "event"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final initView$lambda$8(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->loadAudioAlbums()V

    return-void
.end method

.method private static final initView$lambda$9(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    if-nez p1, :cond_0

    const-string p1, "playListData"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "getPlayList(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->refreshPlayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final isNeedShowVisualizerView()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->l1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mWindowOptions:Lwoc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwoc;->g()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mWindowOptions:Lwoc;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lwoc;->h()Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic j(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initLrcView$lambda$28(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView$lambda$7(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/content/Context;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView$lambda$10(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/content/Context;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private final loadAudioAlbums()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->checkPlayList()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lmc7;->C([Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lxm4;

    invoke-direct {v1}, Lxm4;-><init>()V

    new-instance v2, Lgn4;

    invoke-direct {v2, v1}, Lgn4;-><init>(Le74;)V

    invoke-virtual {v0, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lhn4;

    invoke-direct {v1, p0}, Lhn4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    new-instance p0, Lin4;

    invoke-direct {p0, v1}, Lin4;-><init>(Le74;)V

    invoke-virtual {v0, p0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method private static final loadAudioAlbums$lambda$18(Ljava/util/List;)Lzfb;
    .locals 4

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v3}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "null"

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final loadAudioAlbums$lambda$19(Le74;Ljava/lang/Object;)Lzfb;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfb;

    return-object p0
.end method

.method private static final loadAudioAlbums$lambda$20(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lzfb;)Lzfb;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setCarousel()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isInjectCover:Z

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final loadAudioAlbums$lambda$21(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic m(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView$lambda$8(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Object;)V

    return-void
.end method

.method private final makeMotionLayoutChildAlpha1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView1:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "audioItemView1"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez v0, :cond_1

    const-string v0, "audioItemView2"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView3:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez v0, :cond_2

    const-string v0, "audioItemView3"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final markLrcView(Z)V
    .locals 0

    return-void
.end method

.method public static synthetic n(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initClick$lambda$2(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initData$lambda$12(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setCarousel$lambda$14(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method

.method private final pauseOrResumeAnim()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsStart:Z

    const/4 v1, 0x0

    const-string v2, "audioItemView2"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isAudioPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->isPauseAlbumAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez p0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->resumeAlbumAnim()V

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez p0, :cond_3

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->startAlbumAnim()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez v0, :cond_5

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->isRunningAlbumAnim()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    if-nez p0, :cond_6

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_2
    invoke-virtual {v1}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->pauseAlbumAnim()V

    :cond_7
    :goto_3
    return-void
.end method

.method private final playStatusChange(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "btnPlay"

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->btnPlay:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    sget p0, Lcom/transsion/audio/R$drawable;->ic_audio_parse:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->btnPlay:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    sget p0, Lcom/transsion/audio/R$drawable;->ic_audio_play:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method private static final progressUpdateRunnable$lambda$22(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->runVideoProgressUpdate()V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView$lambda$6(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView$lambda$9(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/lang/Object;)V

    return-void
.end method

.method private final refreshPlayList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->loadAudioAlbums()V

    :cond_1
    return-void
.end method

.method private final runVideoProgressUpdate()V
    .locals 14

    const-string v0, "mLrcView"

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v6}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v10, v6

    :try_start_1
    iget-object v6, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v6}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v8, v6

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v2, v10, v4

    if-gtz v2, :cond_0

    const-wide/16 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->onProgressUpdateError(JJJ)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateProgress(JJ)V

    iget-boolean v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p0, :cond_1

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v8, v9}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(J)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v6

    goto :goto_2

    :catchall_1
    move-exception v6

    move-wide v10, v4

    :goto_2
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v2, v10, v4

    const-wide/16 v8, 0x0

    if-lez v2, :cond_4

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateProgress(JJ)V

    iget-boolean v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p0, :cond_3

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v1, p0

    :goto_3
    invoke-virtual {v1, v8, v9}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(J)V

    goto :goto_4

    :cond_4
    const-wide/16 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->onProgressUpdateError(JJJ)V

    :cond_5
    :goto_4
    throw v6
.end method

.method public static synthetic s(Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->loadAudioAlbums$lambda$18(Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final searchLyrics()V
    .locals 3

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->F(Z)V

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->u()V

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v2}, Lcom/transsion/audio/lyrics/LrcSearcher;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLoadingLyric:Z

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateLoadingView()V

    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateEmptyView(Z)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez v1, :cond_0

    const-string v1, "mLrcView"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    new-instance v1, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$searchLyrics$1;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->C(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V

    return-void
.end method

.method private final setBeingAnimation(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollGestures beingAnimation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->beingAnimation:Z

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioMotionLayout:Lcom/transsion/audio/widgets/AudioMotionLayout;

    if-nez p0, :cond_0

    const-string p0, "audioMotionLayout"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioMotionLayout;->setBeingAnimated(Z)V

    return-void
.end method

.method private final setCarousel()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCarousel found playList is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    const/4 v1, 0x0

    const-string v2, "carousel"

    if-nez v0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/transsion/audio/widgets/AudioCarousel;->setInfiniteCarousel(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez v0, :cond_3

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioCarouselAdapter:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;

    invoke-virtual {v1, v0}, Lcom/transsion/audio/widgets/AudioCarousel;->setAdapter(Lcom/transsion/audio/widgets/AudioCarousel$Adapter;)V

    new-instance v0, Lan4;

    invoke-direct {v0, p0}, Lan4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setCarousel$lambda$14(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->carousel:Lcom/transsion/audio/widgets/AudioCarousel;

    if-nez p0, :cond_2

    const-string p0, "carousel"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/transsion/audio/widgets/AudioCarousel;->jumpToIndex(I)V

    return-void
.end method

.method private final setCurrentOffset(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentOffset:F

    int-to-float p1, p1

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljn4;

    invoke-direct {v0, p0}, Ljn4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :goto_0
    iput p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentOffset:F

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_1

    const-string p1, "mLrcView"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentOffset:F

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Lcom/transsion/audio/widgets/LrcViewNew;->setDelayMs(I)V

    return-void
.end method

.method private static final setCurrentOffset$lambda$24(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    sget-object v1, Lao;->d:Lao$a;

    invoke-virtual {v1}, Lao$a;->a()Lao;

    move-result-object v1

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentOffset:F

    float-to-int p0, p0

    invoke-virtual {v1, v2, v0, p0}, Lao;->q0(ILjava/lang/String;I)I

    :cond_0
    return-void
.end method

.method private final switchToLrcView(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iput-boolean p1, v0, Lcom/transsion/data/Repository;->isLrcMode:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSwitchView:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mSwitchView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    const-string v2, "mLrcView"

    if-nez v0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez v5, :cond_3

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v1

    :cond_3
    invoke-virtual {v5}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isNeedShowVisualizerView()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iget-object v5, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioVisualizerView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    if-nez v5, :cond_8

    const-string v5, "audioVisualizerView"

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v1

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->emptyPermission:Landroid/view/View;

    if-nez v0, :cond_a

    const-string v0, "emptyPermission"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isNeedShowVisualizerView()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const/16 v4, 0x8

    :cond_c
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez p1, :cond_d

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move-object v1, p1

    :goto_5
    new-instance p1, Lnm4;

    invoke-direct {p1, p0}, Lnm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method private static final switchToLrcView$lambda$29(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    if-nez v0, :cond_0

    const-string v0, "mLrcView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(JZ)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->searchLyrics()V

    return-void
.end method

.method public static synthetic t(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initClick$lambda$1(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->switchToLrcView$lambda$29(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method

.method private final updateProgress(JJ)V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mDuration:J

    cmp-long v0, v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-wide p3, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mDuration:J

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvTotalProgress:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "mTvTotalProgress"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {p3, p4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-wide v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mDuration:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    move-wide p1, v2

    :cond_2
    const/16 v0, 0x64

    int-to-long v2, v0

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-float p3, v2

    invoke-static {p3}, Ls86;->c(F)I

    move-result p3

    iget-boolean p4, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTracking:Z

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    if-nez p4, :cond_3

    const-string p4, "mTvCurrentProgress"

    invoke-static {p4}, Ly45;->B(Ljava/lang/String;)V

    move-object p4, v1

    :cond_3
    invoke-static {p1, p2}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-nez p0, :cond_4

    const-string p0, "mBottomSeekBar"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    int-to-float p0, p3

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    invoke-virtual {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_5
    return-void
.end method

.method private final updateVolumeSeekBar()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mAudioOpStatus:Lcom/transsion/audio/data/AudioOpStatus;

    const-string v1, "mAudioOpStatus"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-static {v0}, Law6;->e(Lcom/transsion/audio/data/AudioOpStatus;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    const-string v0, "mVolumeSeekBar"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mAudioOpStatus:Lcom/transsion/audio/data/AudioOpStatus;

    if-nez v3, :cond_2

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    iget v3, v3, Lcom/transsion/audio/data/AudioOpStatus;->mAudioVolume:F

    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const-string v0, "mVolumeIcon"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mAudioOpStatus:Lcom/transsion/audio/data/AudioOpStatus;

    if-nez p0, :cond_4

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    :goto_0
    iget p0, v2, Lcom/transsion/audio/data/AudioOpStatus;->mMusicVolume:I

    if-eqz p0, :cond_5

    sget p0, Lcom/transsion/audio/R$drawable;->ic_audio_flat_volume:I

    goto :goto_1

    :cond_5
    sget p0, Lcom/transsion/audio/R$drawable;->ic_volume_off:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initData$lambda$11(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initClick$lambda$0(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initClick$lambda$5(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y()V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->errorNextRunnable$lambda$15()V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->adaptLayout$lambda$30(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method


# virtual methods
.method public adaptLayout(Lwoc;)V
    .locals 10

    const-string v0, "windowOptions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mWindowOptions:Lwoc;

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSwitchView:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    const-string v0, "mSwitchView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mWindowOptions:Lwoc;

    if-eqz v2, :cond_1

    iget v2, v2, Lwoc;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-string v3, "mBtmLine"

    const-string v4, "endMarginLine"

    const-string v5, "startMarginLine"

    const-string v6, "topLine"

    const-string v7, "getContext(...)"

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    :goto_3
    if-nez v2, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_13

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v2, v8}, Lcom/transsion/audio/a;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSwitchView:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    if-nez v2, :cond_8

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v1

    :cond_8
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->topLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_9

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v0, v2}, Lcom/transsion/audio/a;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->startMarginLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_a

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_a
    const v0, 0x3e0b4396    # 0.136f

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->endMarginLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_b

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_b
    const v0, 0x3f5d2f1b    # 0.864f

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBtmLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_c

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_c
    iget v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSafeInsetBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Lcom/transsion/audio/a;->b(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_5

    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v2, v8}, Lcom/transsion/audio/a;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mSwitchView:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    if-nez v2, :cond_e

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v1

    :cond_e
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->topLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_f

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v0, v2}, Lcom/transsion/audio/a;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->startMarginLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_10

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_10
    const v0, 0x3d072b02    # 0.033f

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->endMarginLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_11

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_11
    const v0, 0x3f778d50    # 0.967f

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBtmLine:Landroidx/constraintlayout/widget/Guideline;

    if-nez p1, :cond_12

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v0, v2}, Lcom/transsion/audio/a;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_13
    :goto_5
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->emptyPermission:Landroid/view/View;

    if-nez p1, :cond_14

    const-string p1, "emptyPermission"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    move-object v1, p1

    :goto_6
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lmm4;

    invoke-direct {p1, p0}, Lmm4;-><init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final isAudioPlaying()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->runVideoProgressUpdate()V

    return-void
.end method

.method public final onCallStartOrStop(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsStart:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->runVideoProgressUpdate()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->pauseOrResumeAnim()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioItemView2:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "audioItemView2"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->cancelAlbumAnim()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v2, "change_audio_cover"

    invoke-virtual {v0, v2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v2, "audio_switch_repeat_mode"

    invoke-virtual {v0, v2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-nez v0, :cond_1

    const-string v0, "audioModel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/transsion/playercommon/videomodel/PlayListModel;->o:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type com.transsion.audio.activities.AudioPlayerActivity"

    invoke-static {p0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_2
    return-void
.end method

.method public onProgressUpdateError(JJJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdateError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",duration:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", bufferedPosition:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "mBottomSeekBar"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mDuration:J

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string p1, "mTvCurrentProgress"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-static {p3, p4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvTotalProgress:Landroid/widget/TextView;

    if-nez p0, :cond_2

    const-string p0, "mTvTotalProgress"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-static {p3, p4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->switchToLrcView(Z)V

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->markLrcView(Z)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    instance-of p1, p1, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->pauseOrResumeAnim()V

    :cond_0
    return-void
.end method

.method public onVolumeChange()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateVolumeSeekBar()V

    return-void
.end method

.method public final resetHalfOpenPlayerCurrentMusicAlbum()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioMotionLayout:Lcom/transsion/audio/widgets/AudioMotionLayout;

    if-nez p0, :cond_0

    const-string p0, "audioMotionLayout"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget v0, Lcom/transsion/audio/R$id;->audioItem2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/widgets/AudioPlayerItemView;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->resetCover()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->runVideoProgressUpdate()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVolume(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mAudioOpStatus:Lcom/transsion/audio/data/AudioOpStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mAudioOpStatus"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->playManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {v0, p1, v2}, Law6;->d(Lcom/transsion/audio/data/AudioOpStatus;ZLcom/transsion/audio/player/MusicPlayManager;)F

    move-result p1

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateVolumeSeekBar()V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->showVolume(Z)V

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_2

    const-string v2, "mVolumeSeekBar"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "gesture_volume"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    return-void
.end method

.method public final showVolume(Z)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-string v2, "mVolumeIv"

    const-string v3, "mVolumeSeekBar"

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Loa1;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v5, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->hideVolBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p0, :cond_1

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, p0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const-string v5, "mVolumeIcon"

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_3

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_5

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_6

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_6
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v4

    :cond_7
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p0, :cond_8

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v4, p0

    :goto_1
    const/4 p0, 0x1

    invoke-static {p1, v0, v4, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioAnimotionHelper;->showVolumeWithAnimotion(Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_a

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    if-nez p1, :cond_b

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_b
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_c

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_d

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_d
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeIv:Landroid/widget/ImageView;

    if-nez v0, :cond_e

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v4

    :cond_e
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-nez p0, :cond_f

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    move-object v4, p0

    :goto_2
    invoke-static {p1, v0, v4, v1}, Lcom/transsion/audio/widgets/HalfOpenAudioAnimotionHelper;->showVolumeWithAnimotion(Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_10
    :goto_3
    return-void
.end method

.method public updateEmptyView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v2, Lcom/transsion/audio/R$id;->lyrics_empty:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mEmptyView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_4

    sget v0, Lcom/transsion/audio/R$id;->tv_local_lyric:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :cond_4
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mEmptyView:Landroid/view/View;

    if-eqz p0, :cond_5

    sget p1, Lcom/transsion/audio/R$id;->tv_remote_lyric:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    :cond_5
    sget-boolean p0, Lpp3;->z:Z

    if-nez p0, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public updateLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget v1, Lcom/transsion/audio/R$id;->lyrics_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLoadingView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLoadingLyric:Z

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final updatePermission()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isNeedShowVisualizerView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->audioVisualizerView:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "audioVisualizerView"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->emptyPermission:Landroid/view/View;

    if-nez v0, :cond_4

    const-string v0, "emptyPermission"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v3, v0

    :goto_3
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->isNeedShowVisualizerView()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/16 v1, 0x8

    :cond_6
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mTvTitle"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p1}, Lcom/transsion/audio/a;->e(Landroid/widget/TextView;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "mArtistName"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v1, p1}, Lcom/transsion/audio/a;->d(Landroid/widget/TextView;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->mIsLrcMode:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->searchLyrics()V

    :cond_2
    return-void
.end method
