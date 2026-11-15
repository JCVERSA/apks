.class public Lcom/transsion/widgetslib/widget/OSPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/OSPopupWindow$a;,
        Lcom/transsion/widgetslib/widget/OSPopupWindow$b;,
        Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;,
        Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;,
        Lcom/transsion/widgetslib/widget/OSPopupWindow$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 22\u00020\u0001:\u0008\u00a2\u0001\u00a5\u0001\u00d5\u0001\u00d6\u0001B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B%\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\nB-\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\u0008\u0012\u0004\u0012\u00020\u0013`\u00142\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J+\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012j\n\u0012\u0004\u0012\u00020\u0013\u0018\u0001`\u00142\u0006\u0010\u000e\u001a\u00020\rH\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ+\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001e2\u0006\u0010\u0018\u001a\u00020\u00022\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\'\u0010&J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010,\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008,\u0010+J\u0017\u0010-\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008-\u0010.J%\u00100\u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010/\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u00082\u00103J\u000f\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00085\u00106J9\u0010;\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u0002042\u0008\u0008\u0002\u0010:\u001a\u000204H\u0002\u00a2\u0006\u0004\u0008;\u0010<J)\u0010@\u001a\u00020\u000f2\u0008\u0010=\u001a\u0004\u0018\u00010!2\u0006\u0010>\u001a\u00020\u00082\u0006\u0010?\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ;\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080E2\u0006\u0010=\u001a\u00020!2\u0006\u0010C\u001a\u00020B2\u0006\u0010D\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010I\u001a\u00020H2\u0006\u0010=\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008I\u0010JJ\u001f\u0010M\u001a\u00020\u00082\u0006\u0010K\u001a\u00020!2\u0006\u0010L\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010O\u001a\u00020\u00082\u0006\u0010K\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008O\u0010PJ\u001f\u0010R\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!2\u0006\u0010Q\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008R\u0010NJ\u001f\u0010T\u001a\u00020\u00082\u0006\u0010K\u001a\u00020!2\u0006\u0010S\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008T\u0010NJ\u001f\u0010W\u001a\u00020\u00082\u0006\u0010U\u001a\u00020\u00082\u0006\u0010V\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u0011\u0010Y\u001a\u0004\u0018\u000104H\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ\u001f\u0010\\\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010[\u001a\u000204H\u0002\u00a2\u0006\u0004\u0008\\\u0010]J\u000f\u0010^\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008^\u0010&J\u0017\u0010_\u001a\u00020\u00082\u0006\u0010[\u001a\u000204H\u0002\u00a2\u0006\u0004\u0008_\u0010`J\u000f\u0010a\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008a\u0010&J\u001d\u0010c\u001a\u00020\u000f2\u000c\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001eH\u0002\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u000204H\u0002\u00a2\u0006\u0004\u0008e\u00106J\u0015\u0010h\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020f\u00a2\u0006\u0004\u0008h\u0010iJ%\u0010k\u001a\u00020\u000f2\u0016\u0010j\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\u0008\u0012\u0004\u0012\u00020\u0013`\u0014\u00a2\u0006\u0004\u0008k\u0010lJ%\u0010n\u001a\u00020\u000f2\u0016\u0010m\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\u0008\u0012\u0004\u0012\u00020\u0013`\u0014\u00a2\u0006\u0004\u0008n\u0010lJ\u0017\u0010o\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008o\u0010pJ\u0015\u0010q\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001e\u00a2\u0006\u0004\u0008q\u0010rJ\u001d\u0010s\u001a\u00020\u000f2\u000e\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001e\u00a2\u0006\u0004\u0008s\u0010dJ\u000f\u0010t\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008t\u0010uJ\u0017\u0010v\u001a\u00020\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008v\u0010$J\u000f\u0010x\u001a\u0004\u0018\u00010w\u00a2\u0006\u0004\u0008x\u0010yJ\u001d\u0010|\u001a\u00020\u000f2\u0006\u0010z\u001a\u0002042\u0006\u0010{\u001a\u000204\u00a2\u0006\u0004\u0008|\u0010}J\r\u0010~\u001a\u00020\u000f\u00a2\u0006\u0004\u0008~\u0010&J\u001a\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010\u007f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u001b\u0010\u0083\u0001\u001a\u00020\u000f2\u0007\u0010\u0082\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0081\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u0084\u0001\u0010&J\u000f\u0010\u0085\u0001\u001a\u00020\u000f\u00a2\u0006\u0005\u0008\u0085\u0001\u0010&J\u001b\u0010\u0086\u0001\u001a\u00020\u000f2\u0008\u0010=\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0005\u0008\u0086\u0001\u0010$J-\u0010\u0086\u0001\u001a\u00020\u000f2\u0008\u0010=\u001a\u0004\u0018\u00010!2\u0007\u0010\u0087\u0001\u001a\u00020\u00082\u0007\u0010\u0088\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0005\u0008\u0086\u0001\u0010AJ7\u0010\u0086\u0001\u001a\u00020\u000f2\u0008\u0010=\u001a\u0004\u0018\u00010!2\u0007\u0010\u0087\u0001\u001a\u00020\u00082\u0007\u0010\u0088\u0001\u001a\u00020\u00082\u0007\u0010\u0089\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u008a\u0001J6\u0010\u008c\u0001\u001a\u00020\u000f2\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010!2\u0007\u0010\u0089\u0001\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00082\u0006\u0010T\u001a\u00020\u0008H\u0016\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008a\u0001J\u001e\u0010\u008f\u0001\u001a\u00020\u000f2\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0016\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u001c\u0010\u0092\u0001\u001a\u00020\u000f2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0005\u0008\u0092\u0001\u0010$J\u0019\u0010\u0093\u0001\u001a\u00020\u000f2\u0008\u0010=\u001a\u0004\u0018\u00010!\u00a2\u0006\u0005\u0008\u0093\u0001\u0010$J \u0010\u0094\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\u0008\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001J2\u0010\u0096\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\u00082\u0007\u0010\u0087\u0001\u001a\u00020\u00082\u0007\u0010\u0088\u0001\u001a\u00020\u0008\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u008a\u0001J \u0010\u0097\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\u0008\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0095\u0001J2\u0010\u0098\u0001\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020!2\u0006\u0010L\u001a\u00020\u00082\u0007\u0010\u0087\u0001\u001a\u00020\u00082\u0007\u0010\u0088\u0001\u001a\u00020\u0008\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u008a\u0001J\u0019\u0010\u009a\u0001\u001a\u00020\u000f2\u0007\u0010\u0099\u0001\u001a\u000204\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u001b\u0010\u009d\u0001\u001a\u00020\u000f2\u0007\u0010\u009c\u0001\u001a\u000204H\u0007\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009b\u0001J\u001c\u0010\u00a0\u0001\u001a\u00020\u000f2\u0008\u0010\u009f\u0001\u001a\u00030\u009e\u0001H\u0007\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u001b\u0010\u00a4\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u0019\u0010\u00a7\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u001b\u0010\u00a9\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a3\u0001R\u001b\u0010\u00ac\u0001\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R \u0010\u00ae\u0001\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008F\u0010\u00ad\u0001R\u001a\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008c\u0010\u00af\u0001R\u0018\u0010\u00b1\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008a\u0010\u00a6\u0001R\u0018\u0010\u00b2\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008-\u0010\u00a6\u0001R\u0019\u0010\u00b5\u0001\u001a\u00030\u00b3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008^\u0010\u00b4\u0001R\u0018\u0010\u00b6\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008#\u0010\u00a6\u0001R\u001b\u0010\u00b9\u0001\u001a\u0005\u0018\u00010\u00b7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008e\u0010\u00b8\u0001R\u0018\u0010\u00ba\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u00a6\u0001R\u001a\u0010\u00bc\u0001\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008O\u0010\u00bb\u0001R\u0017\u0010\u00bd\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010_R\u0019\u0010\u00bf\u0001\u001a\u00030\u009e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008%\u0010\u00be\u0001R\u0018\u0010\u00c0\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008I\u0010\u00a6\u0001R!\u0010\u00c4\u0001\u001a\r \u00c2\u0001*\u0005\u0018\u00010\u00c1\u00010\u00c1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u00c3\u0001R\u0018\u0010\u00c6\u0001\u001a\u00020f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001a\u0010\u00c5\u0001R\u0018\u0010\u00c7\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\\\u0010\u00a6\u0001R\u001b\u0010\u00ca\u0001\u001a\u0005\u0018\u00010\u00c8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008*\u0010\u00c9\u0001R\u001b\u0010\u00cd\u0001\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u001b\u0010\u00d0\u0001\u001a\u0005\u0018\u00010\u00ce\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00080\u0010\u00cf\u0001R\u001c\u0010\u00d4\u0001\u001a\u0005\u0018\u00010\u00d1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001\u00a8\u0006\u00d7\u0001"
    }
    d2 = {
        "Lcom/transsion/widgetslib/widget/OSPopupWindow;",
        "Landroid/widget/PopupWindow;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Landroid/view/Menu;",
        "menu",
        "Lzfb;",
        "A",
        "(Landroid/content/Context;Landroid/view/Menu;)V",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "D",
        "(Landroid/view/Menu;)Ljava/util/ArrayList;",
        "C",
        "ctx",
        "Landroid/widget/ListView;",
        "r",
        "(Landroid/content/Context;)Landroid/widget/ListView;",
        "",
        "items",
        "Lqb9;",
        "l",
        "(Landroid/content/Context;Ljava/util/List;)Lqb9;",
        "Landroid/view/View;",
        "view",
        "j",
        "(Landroid/view/View;)V",
        "o",
        "()V",
        "M",
        "Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;",
        "container",
        "t",
        "(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V",
        "K",
        "h",
        "(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V",
        "depth",
        "v",
        "(Landroid/view/View;I)Landroid/view/View;",
        "x",
        "(Landroid/content/Context;)I",
        "",
        "S",
        "()Z",
        "windowHeight",
        "showY",
        "isPopupUp",
        "exactHeight",
        "q",
        "(Landroid/content/Context;IIZZ)I",
        "anchor",
        "contentWidth",
        "contentHeight",
        "F",
        "(Landroid/view/View;II)V",
        "",
        "pos",
        "showX",
        "Lkotlin/Pair;",
        "e",
        "(Landroid/view/View;[III)Lkotlin/Pair;",
        "Lcom/transsion/widgetslib/widget/OSPopupWindow$a;",
        "p",
        "(Landroid/view/View;)Lcom/transsion/widgetslib/widget/OSPopupWindow$a;",
        "content",
        "itemCount",
        "n",
        "(Landroid/view/View;I)I",
        "m",
        "(Landroid/view/View;)I",
        "maxWidth",
        "B",
        "measuredWidth",
        "y",
        "parentWidth",
        "item",
        "z",
        "(ILandroid/view/View;)I",
        "H",
        "()Ljava/lang/Boolean;",
        "night",
        "s",
        "(Landroid/content/Context;Z)Landroid/content/Context;",
        "i",
        "I",
        "(Z)I",
        "g",
        "adapter",
        "f",
        "(Lqb9;)V",
        "k",
        "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;",
        "config",
        "setLightTypeConfig",
        "(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V",
        "data",
        "setData",
        "(Ljava/util/ArrayList;)V",
        "icons",
        "setIcons",
        "setMenu",
        "(Landroid/view/Menu;)V",
        "getAdpater",
        "()Lqb9;",
        "setAdapter",
        "getList",
        "()Landroid/view/View;",
        "setList",
        "Landroid/widget/FrameLayout;",
        "getContainer",
        "()Landroid/widget/FrameLayout;",
        "nowIsUp",
        "nowIsRight",
        "J",
        "(ZZ)V",
        "R",
        "width",
        "setWidth",
        "(I)V",
        "height",
        "setHeight",
        "dismiss",
        "G",
        "showAsDropDown",
        "xoff",
        "yoff",
        "gravity",
        "(Landroid/view/View;III)V",
        "parent",
        "showAtLocation",
        "Landroid/graphics/drawable/Drawable;",
        "background",
        "setBackgroundDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "mContentView",
        "setContentView",
        "E",
        "N",
        "(Landroid/view/View;I)V",
        "O",
        "P",
        "Q",
        "disable",
        "setDisableAnimation",
        "(Z)V",
        "blackMode",
        "setBlackMode",
        "Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;",
        "nightMode",
        "setNightMode",
        "(Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;)V",
        "a",
        "Landroid/view/View;",
        "mAnchor",
        "b",
        "Z",
        "isUp",
        "c",
        "mView",
        "d",
        "Landroid/widget/FrameLayout;",
        "mContainer",
        "Lqb9;",
        "mAdpater",
        "Landroid/content/Context;",
        "mContext",
        "isCustomDirection",
        "isDirectionWorked",
        "Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;",
        "Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;",
        "horizontalAlign",
        "mDisableAnimation",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "mAttachListener",
        "isWindowCenter",
        "Ljava/lang/Integer;",
        "mPreCalculatedWindowHeight",
        "mRequestedHeight",
        "Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;",
        "mNightMode",
        "mDefaultAdapter",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;",
        "mLightTypeConfig",
        "mOverScrollSetup",
        "Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;",
        "Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;",
        "mOverScrollDecor",
        "u",
        "Ljava/lang/Boolean;",
        "mOverScrollDampingEnabled",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "mDampingToggleLayoutListener",
        "Ljava/lang/Runnable;",
        "w",
        "Ljava/lang/Runnable;",
        "mDampingToggleRunnable",
        "HorizontalAlign",
        "NightMode",
        "widgetsLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;


# instance fields
.field public a:Landroid/view/View;

.field public b:Z

.field public c:Landroid/view/View;

.field public d:Landroid/widget/FrameLayout;

.field public e:Lqb9;

.field public f:Landroid/content/Context;

.field public g:Z

.field public h:Z

.field public i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

.field public j:Z

.field public k:Landroid/view/View$OnAttachStateChangeListener;

.field public l:Z

.field public m:Ljava/lang/Integer;

.field public n:I

.field public o:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

.field public p:Z

.field public final q:Ljava/lang/String;

.field public r:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

.field public s:Z

.field public t:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

.field public u:Ljava/lang/Boolean;

.field public v:Landroid/view/View$OnLayoutChangeListener;

.field public w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n:I

    .line 4
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;->AUTO:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    .line 5
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->q:Ljava/lang/String;

    .line 6
    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->POPUP_WINDOW_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    .line 7
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    .line 10
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n:I

    .line 11
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;->AUTO:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    .line 12
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->q:Ljava/lang/String;

    .line 13
    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->POPUP_WINDOW_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    .line 14
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    .line 17
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n:I

    .line 18
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;->AUTO:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    .line 19
    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->q:Ljava/lang/String;

    .line 20
    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->POPUP_WINDOW_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    .line 21
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    return-void
.end method

.method public static final L(Lcom/transsion/widgetslib/widget/OSPopupWindow;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->u(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/widget/OSPopupWindow;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->L(Lcom/transsion/widgetslib/widget/OSPopupWindow;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->t(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public static final u(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V
    .locals 1

    const-string v0, "$container"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->onOverScrollUpdated(F)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View;IILjava/lang/Object;)Landroid/view/View;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->v(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: findSingleScrollableContent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->D(Landroid/view/Menu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->C(Landroid/view/Menu;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r(Landroid/content/Context;)Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->l(Landroid/content/Context;Ljava/util/List;)Lqb9;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lqb9;->setLeftTextIcon(Ljava/util/List;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e:Lqb9;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->j(Landroid/view/View;)V

    return-void
.end method

.method public final B(Landroid/view/View;I)I
    .locals 2

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    if-gtz p2, :cond_0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {p0, v1, p2}, Lwn8;->k(III)I

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final C(Landroid/view/Menu;)Ljava/util/ArrayList;
    .locals 4

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final D(Landroid/view/Menu;)Ljava/util/ArrayList;
    .locals 3

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final E(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_inset_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_3
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/ListView;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    goto :goto_0

    :cond_4
    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_5

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/ListView;

    if-nez v2, :cond_7

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m(Landroid/view/View;)I

    move-result v1

    goto :goto_2

    :cond_7
    :goto_1
    sget v1, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "content.findViewById(R.id.liquid_popview)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n(Landroid/view/View;I)I

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->F(Landroid/view/View;II)V

    return-void
.end method

.method public final F(Landroid/view/View;II)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_inset_left:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->H(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lolb;->D(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    if-lez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_5
    mul-int/2addr v1, v6

    add-int/2addr p2, v1

    :goto_1
    new-array v1, v6, [I

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_6
    const/4 v5, 0x1

    aget v6, v1, v5

    add-int/2addr v6, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v6, p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "content.context"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v4, p1

    if-le v6, v4, :cond_7

    move p1, v5

    goto :goto_2

    :cond_7
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    aget p1, v1, v2

    add-int p3, p1, p2

    if-le p3, v3, :cond_8

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    invoke-static {p3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p1, p3

    sub-int/2addr p1, p2

    if-lez p1, :cond_8

    sget-object p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    :goto_3
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    invoke-static {}, Lolb;->l0()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    if-ne p1, p2, :cond_9

    sget-object p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    :cond_9
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    :cond_a
    iput-boolean v5, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->R()V

    return-void
.end method

.method public final G()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type android.widget.ListView"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->M()V

    return-void
.end method

.method public final H()Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    sget-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final I(Z)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->s(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/widgetslib/R$color;->os_liquid_midle_bc_night_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/widgetslib/R$attr;->os_liq_middle_bc_light_attr:I

    sget v0, Lcom/transsion/widgetslib/R$color;->os_liquid_midle_bc_light_color:I

    invoke-static {p0, p1, v0}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final J(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    if-eqz p2, :cond_0

    sget-object p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->l:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->R()V

    return-void
.end method

.method public final K(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->v:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lga7;

    invoke-direct {v0, p0, p2}, Lga7;-><init>(Lcom/transsion/widgetslib/widget/OSPopupWindow;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->w:Ljava/lang/Runnable;

    new-instance p2, Lcom/transsion/widgetslib/widget/OSPopupWindow$e;

    invoke-direct {p2, p1, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$e;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->v:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final M()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lolb;->E:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->d:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    return-void

    :cond_3
    instance-of v2, v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->t(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;-><init>(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method public final N(Landroid/view/View;I)V
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->O(Landroid/view/View;III)V

    return-void
.end method

.method public final O(Landroid/view/View;III)V
    .locals 11

    const-string p3, "anchor"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->E(Landroid/view/View;)V

    sget-object p3, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->R()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->p(Landroid/view/View;)Lcom/transsion/widgetslib/widget/OSPopupWindow$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin_bottom:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sget v3, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "content.findViewById(R.id.liquid_popview)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n(Landroid/view/View;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getY()F

    move-result p2

    int-to-float v3, v7

    sub-float/2addr p2, v3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getHeight()F

    move-result v3

    add-float/2addr p2, v3

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_inset_left:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getX()F

    move-result v3

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getWidth()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    int-to-float v1, v1

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr p2, p4

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getPos()[I

    move-result-object p4

    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e(Landroid/view/View;[III)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string p2, "content.context"

    invoke-static {v6, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->S()Z

    move-result v10

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->q(Landroid/content/Context;IIZZ)I

    move-result p2

    iput-boolean v4, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    invoke-virtual {p0, p1, v2, p4, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final P(Landroid/view/View;I)V
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->Q(Landroid/view/View;III)V

    return-void
.end method

.method public final Q(Landroid/view/View;III)V
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move/from16 v0, p4

    const-string v1, "anchor"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->E(Landroid/view/View;)V

    sget-object v1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    iput-object v1, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->R()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object v7, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->p(Landroid/view/View;)Lcom/transsion/widgetslib/widget/OSPopupWindow$a;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8}, Landroid/view/View;->measure(II)V

    iget-object v3, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v3}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v3}, Lolb;->u0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v3}, Lolb;->H(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->E(Landroid/content/Context;)I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_inset_left:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v9, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "content.findViewById(R.id.liquid_popview)"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move v10, p2

    invoke-virtual {p0, v9, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n(Landroid/view/View;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getX()F

    move-result v10

    int-to-float v5, v5

    sub-float/2addr v10, v5

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v12, Lcom/transsion/widgetslib/R$dimen;->os_space100:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v10, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getX()F

    move-result v10

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getWidth()F

    move-result v12

    add-float/2addr v10, v12

    int-to-float v12, v4

    sub-float/2addr v10, v12

    int-to-float v5, v5

    add-float/2addr v10, v5

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v12, Lcom/transsion/widgetslib/R$dimen;->os_space100:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v10, v5

    :goto_2
    sub-int/2addr v3, v4

    invoke-static {v3, v8}, Lwn8;->d(II)I

    move-result v3

    const/4 v4, 0x0

    int-to-float v3, v3

    invoke-static {v10, v4, v3}, Lwn8;->j(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v9

    add-int v3, v3, p3

    iget-boolean v5, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    if-eqz v5, :cond_4

    add-int/2addr v4, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getY()F

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    int-to-float v0, v0

    add-float/2addr v4, v0

    float-to-int v4, v4

    :goto_3
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->getPos()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e(Landroid/view/View;[III)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "content.context"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->S()Z

    move-result v5

    move-object v0, p0

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->q(Landroid/content/Context;IIZZ)I

    move-result v0

    iput-boolean v11, v6, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    invoke-virtual {p0, p1, v8, v10, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final R()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_center_scale_center_without_alpha:I

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_center_scale_center:I

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    sget-object v2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_foot_option_without_alpha:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_foot_option:I

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    sget-object v2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->CENTER:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_foot_option_center_without_alpha:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_foot_option_center:I

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_foot_option_normal_no_alpha:I

    goto :goto_0

    :cond_6
    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_foot_option_normal:I

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    sget-object v1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_without_alpha:I

    goto :goto_0

    :cond_8
    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim:I

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->CENTER:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_center_without_alpha:I

    goto :goto_0

    :cond_a
    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_center:I

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_normal_without_alpha:I

    goto :goto_0

    :cond_c
    sget v0, Lcom/transsion/widgetslib/R$style;->popup_anim_normal:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public final S()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_1

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n:I

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dismiss()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o()V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final e(Landroid/view/View;[III)Lkotlin/Pair;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    aget v0, p2, p1

    aget p1, p0, p1

    sub-int/2addr v0, p1

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    aget p2, p2, p3

    aget p0, p0, p3

    sub-int/2addr p2, p0

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lqb9;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    sget-object v1, Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;->AUTO:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lqb9;->a()V

    invoke-virtual {p1}, Lqb9;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;->DARK:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->s(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$color;->os_text_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lqb9;->setTextViewColor(Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lqb9;->setSubTextColor(Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lqb9;->setLeftTextIconColor(Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqb9;->setRightTextIconColor(Ljava/lang/Integer;)V

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weaker:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weaker_hios:I

    invoke-static {p0, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lqb9;->setPressColor(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e:Lqb9;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    instance-of v1, v0, Lqb9;

    if-eqz v1, :cond_3

    check-cast v0, Lqb9;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f(Lqb9;)V

    :cond_5
    return-void
.end method

.method public final getAdpater()Lqb9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqb9;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e:Lqb9;

    return-object p0
.end method

.method public final getContainer()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getList()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    return-object p0
.end method

.method public final h(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->t:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->refreshHasScrollBarSync()V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->hasScrollBar()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->u:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enable()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->disable()V

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->u:Ljava/lang/Boolean;

    return-void
.end method

.method public final i()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->H()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setNightMode(Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->I(Z)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setDefaultBgColor(I)V

    :cond_2
    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-static {v0, p1, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;->a(Lcom/transsion/widgetslib/widget/OSPopupWindow$b;Landroid/view/View;Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->d:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i()V

    return-void
.end method

.method public final k()Z
    .locals 0

    sget-boolean p0, Lolb;->O:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lolb;->X:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lolb;->K:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Landroid/content/Context;Ljava/util/List;)Lqb9;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->p:Z

    new-instance v0, Lqb9;

    invoke-direct {v0, p1, p2}, Lqb9;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f(Lqb9;)V

    return-object v0
.end method

.method public final m(Landroid/view/View;)I
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :cond_3
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->y(Landroid/view/View;I)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->B(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr v2, p1

    iget p1, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    if-lez p1, :cond_5

    add-int/2addr v2, v0

    add-int/2addr v2, p1

    return v2

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_6

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin_bottom:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_6
    add-int/2addr v2, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    return v2
.end method

.method public final n(Landroid/view/View;I)I
    .locals 9

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    instance-of v2, p2, Landroid/widget/ListView;

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    move-object v2, p2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v8, v2

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->y(Landroid/view/View;I)I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-interface {v5, v4, v0, p2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "sample"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->z(ILandroid/view/View;)I

    move-result p0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-interface {v5, v2, v0, p2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x1020014

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_2
    sget v6, Lcom/transsion/widgetslib/R$id;->os_list_popup_sub_text:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, p1, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v7

    :cond_5
    instance-of v0, p2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_6

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin_bottom:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_4

    :cond_6
    move p2, v4

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v6, p2

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->y(Landroid/view/View;I)I

    move-result p0

    iget p1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    move v0, v4

    :goto_5
    if-ge v0, p2, :cond_7

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    const-string v3, "adapter.onCreateViewHolder(parent, vt)"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "vh.itemView"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, p0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    return v5

    :cond_8
    if-nez p2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin_bottom:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    return p2

    :cond_9
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->k:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->w:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->v:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->v:Landroid/view/View$OnLayoutChangeListener;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->w:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->t:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->u:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->s:Z

    return-void
.end method

.method public final p(Landroid/view/View;)Lcom/transsion/widgetslib/widget/OSPopupWindow$a;
    .locals 6

    const/4 p0, 0x2

    new-array v5, p0, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;

    const/4 v0, 0x0

    aget v0, v5, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    const/4 v0, 0x1

    aget v0, v5, v0

    int-to-float v0, v0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;-><init>(FFFF[I)V

    return-object p1
.end method

.method public final q(Landroid/content/Context;IIZZ)I
    .locals 5

    invoke-static {p1}, Lolb;->L(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lolb;->D(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    const/4 v1, -0x2

    if-eqz p4, :cond_4

    add-int/2addr p3, p2

    sub-int p1, p3, v0

    invoke-static {p1, v3}, Lwn8;->d(II)I

    move-result p1

    invoke-static {p2, p1}, Lwn8;->g(II)I

    move-result p1

    if-ge p1, p2, :cond_2

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    invoke-super {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_2

    :cond_3
    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :goto_2
    sub-int/2addr p3, p1

    return p3

    :cond_4
    sub-int p4, p1, p3

    invoke-static {p4, v3}, Lwn8;->d(II)I

    move-result p4

    invoke-static {p2, p4}, Lwn8;->g(II)I

    move-result p4

    if-ge p4, p2, :cond_5

    invoke-super {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_5
    if-eqz p5, :cond_6

    invoke-super {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_6
    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :goto_3
    sub-int/2addr p1, p4

    invoke-static {p3, p1}, Lwn8;->g(II)I

    move-result p0

    return p0
.end method

.method public final r(Landroid/content/Context;)Landroid/widget/ListView;
    .locals 1

    new-instance p0, Landroid/widget/ListView;

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    return-object p0
.end method

.method public final s(Landroid/content/Context;Z)Landroid/content/Context;
    .locals 1

    new-instance p0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    if-eqz p2, :cond_0

    const/16 p2, 0x20

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    :goto_0
    or-int/2addr p2, v0

    iput p2, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "context.createConfigurat\u2026O\n            }\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setAdapter(Lqb9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqb9;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e:Lqb9;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->p:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBlackMode(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;->DARK:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;->LIGHT:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setNightMode(Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->w(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View;IILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    sget-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-static {v0, p1, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;->a(Lcom/transsion/widgetslib/widget/OSPopupWindow$b;Landroid/view/View;Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->d:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i()V

    return-void
.end method

.method public final setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->l(Landroid/content/Context;Ljava/util/List;)Lqb9;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r(Landroid/content/Context;)Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e:Lqb9;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->j(Landroid/view/View;)V

    return-void
.end method

.method public final setDisableAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->j:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n:I

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public final setIcons(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "icons"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->e:Lqb9;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lqb9;->setLeftTextIcon(Ljava/util/List;)V

    return-void
.end method

.method public final setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->r:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$id;->liquid_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    :cond_0
    return-void
.end method

.method public final setList(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setMenu(Landroid/view/Menu;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    const-string v0, "menu"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->A(Landroid/content/Context;Landroid/view/Menu;)V

    return-void
.end method

.method public final setNightMode(Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    const-string v0, "nightMode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->o:Lcom/transsion/widgetslib/widget/OSPopupWindow$NightMode;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->i()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->g()V

    return-void
.end method

.method public setWidth(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->f:Landroid/content/Context;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_popup_window_width_max_weight:I

    invoke-static {v0, v3}, Lolb;->t(Landroid/content/Context;I)F

    move-result v3

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_popup_window_width_max_weight:I

    invoke-static {v0, v3}, Lolb;->t(Landroid/content/Context;I)F

    move-result v3

    :goto_0
    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const/high16 v0, 0x439b0000    # 310.0f

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    int-to-float v0, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    :goto_1
    const/high16 v2, 0x43100000    # 144.0f

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-le p1, v0, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    if-ge p1, v1, :cond_3

    move p1, v1

    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->E(Landroid/view/View;)V

    .line 3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->R()V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->G()V

    .line 8
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 2

    .line 9
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->E(Landroid/view/View;)V

    .line 11
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    .line 13
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->R()V

    .line 14
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 15
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->G()V

    .line 16
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 2

    .line 17
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->E(Landroid/view/View;)V

    .line 19
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 20
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b:Z

    .line 21
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->R()V

    .line 22
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 23
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->G()V

    .line 24
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 10

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->E(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m:Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v5, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    iget v6, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n:I

    invoke-virtual {v5, v6, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;->b(II)I

    move-result v0

    :goto_1
    move v5, v0

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_3
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    instance-of v6, v5, Landroid/widget/ListView;

    if-eqz v6, :cond_5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    instance-of v6, v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_4

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    :goto_2
    if-eqz v0, :cond_8

    const-string v6, "content"

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c:Landroid/view/View;

    instance-of v7, v6, Landroid/widget/ListView;

    if-nez v7, :cond_7

    instance-of v6, v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m(Landroid/view/View;)I

    move-result v0

    goto :goto_4

    :cond_7
    :goto_3
    sget v6, Lcom/transsion/widgetslib/R$id;->liquid_popview:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "it.findViewById(R.id.liquid_popview)"

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n(Landroid/view/View;I)I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    sget-object v5, Lcom/transsion/widgetslib/widget/OSPopupWindow;->x:Lcom/transsion/widgetslib/widget/OSPopupWindow$b;

    iget v6, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->n:I

    invoke-virtual {v5, v6, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow$b;->b(II)I

    move-result v0

    goto :goto_1

    :goto_5
    if-eqz p1, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v0, v3

    goto :goto_6

    :cond_9
    move v0, v2

    :goto_6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->S()Z

    move-result v8

    and-int/lit8 v6, p2, 0x70

    invoke-static {v4}, Lolb;->L(Landroid/content/Context;)I

    move-result v7

    const/16 v9, 0x30

    if-eq v6, v9, :cond_b

    if-gt p4, v7, :cond_a

    goto :goto_7

    :cond_a
    if-ge p4, v0, :cond_b

    move v7, v3

    goto :goto_8

    :cond_b
    :goto_7
    move v7, v2

    :goto_8
    move-object v3, p0

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->q(Landroid/content/Context;IIZZ)I

    move-result p4

    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->G()V

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->h:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->l:Z

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->m:Ljava/lang/Integer;

    return-void
.end method

.method public final t(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/transsion/widgetslib/widget/OSPopupWindow$d;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow$d;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpMiscViewOverScroll(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setVibrateEnable(Z)V

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Lfa7;

    invoke-direct {v0, p2}, Lfa7;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-interface {v1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_4
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->t:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow;->s:Z

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->K(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

.method public final v(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    add-int/2addr p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->v(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final x(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lolb;->x(Landroid/content/res/Resources;)I

    move-result p0

    if-lez p0, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$dimen;->gesture_nav_bar_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final y(Landroid/view/View;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p0

    sub-int p2, p0, v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final z(ILandroid/view/View;)I
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget v0, Lcom/transsion/widgetslib/R$id;->os_list_popup_left_text_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v0, p0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sget v3, Lcom/transsion/widgetslib/R$id;->os_list_popup_right_text_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr p0, v1

    goto :goto_4

    :cond_5
    move p0, v2

    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr v1, p2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    sub-int/2addr p1, p0

    if-lez p1, :cond_6

    move v2, p1

    :cond_6
    return v2
.end method
