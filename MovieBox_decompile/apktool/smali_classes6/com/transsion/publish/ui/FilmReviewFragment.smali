.class public final Lcom/transsion/publish/ui/FilmReviewFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;
.implements Lcom/transsion/publish/adapter/a;
.implements Lmo/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/ui/FilmReviewFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Llo/h;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "Lcom/transsion/publish/adapter/a;",
        "Lmo/b$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00d0\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002\u00d1\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0007J\u000f\u0010\u0013\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0007J\u001f\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010%\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008)\u0010\u0007J\u000f\u0010*\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0007J\u0017\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008/\u0010.J\u0017\u00100\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u00080\u0010.J\u000f\u00101\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00081\u0010\u0007J\u000f\u00102\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00082\u0010\u0007J\u0015\u00104\u001a\u0008\u0012\u0004\u0012\u00020#03H\u0002\u00a2\u0006\u0004\u00084\u00105J\u0015\u00107\u001a\u0008\u0012\u0004\u0012\u00020603H\u0002\u00a2\u0006\u0004\u00087\u00105J\u001f\u00109\u001a\u00020\u00082\u000e\u00108\u001a\n\u0012\u0004\u0012\u000206\u0018\u000103H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010;\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008;\u0010.J\u0017\u0010<\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008<\u0010.J\u0017\u0010=\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008=\u0010.J\u0017\u0010>\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008>\u0010.J\u0017\u0010?\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008?\u0010.J\u0017\u0010B\u001a\u00020\u00082\u0006\u0010A\u001a\u00020@H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010F\u001a\u00020\u00082\u0006\u0010E\u001a\u00020DH\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u0019\u0010J\u001a\u00020\u00082\u0008\u0010I\u001a\u0004\u0018\u00010HH\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010L\u001a\u00020\u00082\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008L\u0010.J\u000f\u0010M\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008M\u0010\u0007J\u0017\u0010O\u001a\u00020\u00082\u0006\u0010N\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008Q\u0010\u0007J\u000f\u0010R\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008R\u0010\u0007J\u000f\u0010S\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008S\u0010\u0007J\u000f\u0010T\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008T\u0010\u0007J\u000f\u0010U\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008U\u0010\u0007J\u0017\u0010X\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0002\u00a2\u0006\u0004\u0008X\u0010YJ\u000f\u0010Z\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008Z\u0010\u0007J\u0017\u0010]\u001a\u00020\u00082\u0006\u0010\\\u001a\u00020[H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008_\u0010\u0007J\u000f\u0010`\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008`\u0010\u0007J\u000f\u0010a\u001a\u00020[H\u0002\u00a2\u0006\u0004\u0008a\u0010bJ\u000f\u0010c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008c\u0010\u0007J\u000f\u0010e\u001a\u00020dH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u0017\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020gH\u0016\u00a2\u0006\u0004\u0008i\u0010jJ!\u0010o\u001a\u00020\u00082\u0006\u0010l\u001a\u00020k2\u0008\u0010n\u001a\u0004\u0018\u00010mH\u0016\u00a2\u0006\u0004\u0008o\u0010pJ!\u0010q\u001a\u00020\u00082\u0006\u0010l\u001a\u00020k2\u0008\u0010n\u001a\u0004\u0018\u00010mH\u0016\u00a2\u0006\u0004\u0008q\u0010pJ\r\u0010r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008r\u0010\u0007J\r\u0010s\u001a\u00020\u0008\u00a2\u0006\u0004\u0008s\u0010\u0007J\u000f\u0010t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008t\u0010\u0007J\u000f\u0010u\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008u\u0010\u0007J\u0017\u0010x\u001a\u00020\u00082\u0006\u0010w\u001a\u00020vH\u0016\u00a2\u0006\u0004\u0008x\u0010yJ\u0017\u0010z\u001a\u00020\u00082\u0006\u0010w\u001a\u00020vH\u0016\u00a2\u0006\u0004\u0008z\u0010yJ\u0017\u0010{\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008{\u0010YJ\u0017\u0010|\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008|\u0010YJ\u0017\u0010}\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008}\u0010YJ\u0017\u0010~\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008~\u0010YJ\u0017\u0010\u007f\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008\u007f\u0010YJ\u0019\u0010\u0080\u0001\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u0010YJ\u0019\u0010\u0081\u0001\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0005\u0008\u0081\u0001\u0010YJ\u0019\u0010\u0082\u0001\u001a\u00020\u00082\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0005\u0008\u0082\u0001\u0010YJ\u0011\u0010\u0083\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0005\u0008\u0083\u0001\u0010\u0007J\u0011\u0010\u0084\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u0007J\u0011\u0010\u0085\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0005\u0008\u0085\u0001\u0010\u0007J\u0011\u0010\u0086\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0005\u0008\u0086\u0001\u0010\u0007J\u000f\u0010\u0087\u0001\u001a\u00020\u000f\u00a2\u0006\u0005\u0008\u0087\u0001\u0010(R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u001b\u0010\u0091\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0019\u0010E\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008E\u0010\u0099\u0001R\u001b\u0010\u009a\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u001b\u0010\u009c\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u001b\u0010\u009e\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009d\u0001R\u001c\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0019\u0010\u00a2\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u0019\u0010\u00a4\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a3\u0001R\u0019\u0010\u00a5\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a3\u0001R\u0017\u0010\u00a6\u0001\u001a\u00020\u00178\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a3\u0001R\u0017\u0010\u00a7\u0001\u001a\u00020\u00178\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a3\u0001R\u0019\u0010\u00a8\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u0019\u0010\u00aa\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u00a3\u0001R\u0019\u0010\u00ab\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00a9\u0001R\u0019\u0010\u00ac\u0001\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u0019\u0010\u00ae\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00a9\u0001R\u0019\u0010\u00af\u0001\u001a\u00020[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R#\u0010\u00b6\u0001\u001a\u0005\u0018\u00010\u00b1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R#\u0010\u00bb\u0001\u001a\u0005\u0018\u00010\u00b7\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b8\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R!\u0010\u00c0\u0001\u001a\u00030\u00bc\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00bd\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R#\u0010\u00c3\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u00c2\u0001\u0018\u00010\u00c1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R\u0019\u0010\u00c5\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u00a9\u0001R\u001c\u0010\u00c7\u0001\u001a\u0005\u0018\u00010\u00c6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u001c\u0010\u00c9\u0001\u001a\u0005\u0018\u00010\u00c6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00c8\u0001R\u0019\u0010\u00ca\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00a9\u0001R#\u0010\u00cc\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u00cb\u0001\u0018\u00010\u00c1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0001\u0010\u00c4\u0001R\u0018\u0010\u00ce\u0001\u001a\u00030\u00cd\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001\u00a8\u0006\u00d2\u0001"
    }
    d2 = {
        "Lcom/transsion/publish/ui/FilmReviewFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Llo/h;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "Lcom/transsion/publish/adapter/a;",
        "Lmo/b$b;",
        "<init>",
        "()V",
        "",
        "getVideoIconView",
        "getImageIconView",
        "showActivityTips",
        "",
        "timestamp1",
        "timestamp2",
        "",
        "isMoreThanADay",
        "(JJ)Z",
        "requestCurrentLocation",
        "userPost",
        "userGrade",
        "Lcom/transsion/publish/api/bean/RequestPostEntity;",
        "request",
        "",
        "source",
        "postService",
        "(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V",
        "buildRequest",
        "()Lcom/transsion/publish/api/bean/RequestPostEntity;",
        "detectionSelect",
        "(Lcom/transsion/publish/api/bean/RequestPostEntity;)V",
        "Lcom/transsion/publish/api/bean/RequestPostMediaEntity;",
        "mediaTypes",
        "checkCover",
        "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V",
        "Lcom/transsion/publish/api/VsMediaInfo;",
        "vsMediaInfo",
        "checkVideoCover",
        "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;Lcom/transsion/publish/api/VsMediaInfo;)V",
        "checkLogin",
        "()Z",
        "initViewModel",
        "observe",
        "Ljo/b;",
        "it",
        "disposeOperate",
        "(Ljo/b;)V",
        "refreshLocation",
        "refreshImage",
        "initImageAdapter",
        "initVideoAdapter",
        "",
        "getAddVideoEntity",
        "()Ljava/util/List;",
        "Lcom/transsion/publish/api/PhotoEntity;",
        "getAddImageEntity",
        "photoEntity",
        "selectPhotosDispose",
        "(Ljava/util/List;)V",
        "refreshAudio",
        "refreshVideo",
        "refreshCover",
        "refreshLink",
        "refreshWork",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "setSubject",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "Lcom/transsion/publish/api/GroupBean;",
        "groupBean",
        "setGroup",
        "(Lcom/transsion/publish/api/GroupBean;)V",
        "Lcom/transsion/room/api/bean/LocationPlace;",
        "location",
        "setLocation",
        "(Lcom/transsion/room/api/bean/LocationPlace;)V",
        "refreshGroup",
        "initManagerAdapter",
        "text",
        "setStarTips",
        "(I)V",
        "deleteAudio",
        "deleteLocation",
        "coverClearDialog",
        "backSaveDialog",
        "initRegisterMediaSelector",
        "Landroid/content/Context;",
        "context",
        "showLinkEditInputDialog",
        "(Landroid/content/Context;)V",
        "checkBottomMargin",
        "",
        "value",
        "clickTrace",
        "(Ljava/lang/String;)V",
        "clickPostTrace",
        "openRoomList",
        "getPageName",
        "()Ljava/lang/String;",
        "hideOpertaionDialog",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Llo/h;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initView",
        "closeAffirm",
        "checkPost",
        "lazyLoadData",
        "onDestroy",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "startPhoto",
        "startVideo",
        "startAudio",
        "startWork",
        "startLink",
        "startLocation",
        "startGroup",
        "put",
        "onPause",
        "completeLoad",
        "onStop",
        "onResume",
        "isPostEnable",
        "Lcom/transsion/publish/adapter/g;",
        "imageAdapter",
        "Lcom/transsion/publish/adapter/g;",
        "Lcom/transsion/publish/adapter/r;",
        "managerAdapter",
        "Lcom/transsion/publish/adapter/r;",
        "Lcom/transsion/publish/adapter/v;",
        "videoAdapter",
        "Lcom/transsion/publish/adapter/v;",
        "operationMenu",
        "Ljo/b;",
        "Lcom/transsion/publish/viewmodel/d;",
        "postViewModel",
        "Lcom/transsion/publish/viewmodel/d;",
        "Lcom/transsion/publish/bean/CoverEntity;",
        "coverPath",
        "Lcom/transsion/publish/bean/CoverEntity;",
        "Lcom/transsion/publish/api/GroupBean;",
        "mSubject",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "locationBean",
        "Lcom/transsion/room/api/bean/LocationPlace;",
        "curLocationBean",
        "Lcom/transsion/publish/api/bean/MediaLinkEntity;",
        "linkEntity",
        "Lcom/transsion/publish/api/bean/MediaLinkEntity;",
        "publishType",
        "I",
        "sourceType",
        "sourceMode",
        "TITLE_MAX",
        "DESC_MAX",
        "requestGroup",
        "Z",
        "postStar",
        "isBold",
        "showTime",
        "J",
        "hasFocus",
        "TAG",
        "Ljava/lang/String;",
        "Lep/f;",
        "mRoomApi$delegate",
        "Lkotlin/Lazy;",
        "getMRoomApi",
        "()Lep/f;",
        "mRoomApi",
        "Lqx/a;",
        "loginApi$delegate",
        "getLoginApi",
        "()Lqx/a;",
        "loginApi",
        "Loo/b;",
        "publishModel$delegate",
        "getPublishModel",
        "()Loo/b;",
        "publishModel",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "loginLaunch",
        "Landroidx/activity/result/b;",
        "isNeedShowLoginActivity",
        "Landroid/widget/ImageView;",
        "videoIcon",
        "Landroid/widget/ImageView;",
        "imageIcon",
        "underOS33",
        "Landroidx/activity/result/e;",
        "videoSelectLauncher",
        "Ljava/lang/Runnable;",
        "mRunnable",
        "Ljava/lang/Runnable;",
        "Companion",
        "a",
        "Publish_psRelease"
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
.field public static final Companion:Lcom/transsion/publish/ui/FilmReviewFragment$a;

.field public static final PAGE_NAME:Ljava/lang/String; = "publish_post"


# instance fields
.field private final DESC_MAX:I

.field private TAG:Ljava/lang/String;

.field private final TITLE_MAX:I

.field private coverPath:Lcom/transsion/publish/bean/CoverEntity;

.field private curLocationBean:Lcom/transsion/room/api/bean/LocationPlace;

.field private groupBean:Lcom/transsion/publish/api/GroupBean;

.field private hasFocus:Z

.field private imageAdapter:Lcom/transsion/publish/adapter/g;

.field private imageIcon:Landroid/widget/ImageView;

.field private isBold:Z

.field private isNeedShowLoginActivity:Z

.field private linkEntity:Lcom/transsion/publish/api/bean/MediaLinkEntity;

.field private locationBean:Lcom/transsion/room/api/bean/LocationPlace;

.field private final loginApi$delegate:Lkotlin/Lazy;

.field private loginLaunch:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation
.end field

.field private final mRoomApi$delegate:Lkotlin/Lazy;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

.field private managerAdapter:Lcom/transsion/publish/adapter/r;

.field private operationMenu:Ljo/b;

.field private postStar:I

.field private postViewModel:Lcom/transsion/publish/viewmodel/d;

.field private final publishModel$delegate:Lkotlin/Lazy;

.field private publishType:I

.field private requestGroup:Z

.field private showTime:J

.field private sourceMode:I

.field private sourceType:I

.field private underOS33:Z

.field private videoAdapter:Lcom/transsion/publish/adapter/v;

.field private videoIcon:Landroid/widget/ImageView;

.field private videoSelectLauncher:Landroidx/activity/result/b;
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
    new-instance v0, Lcom/transsion/publish/ui/FilmReviewFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/ui/FilmReviewFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/ui/FilmReviewFragment;->Companion:Lcom/transsion/publish/ui/FilmReviewFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->TITLE_MAX:I

    .line 7
    .line 8
    const/16 v0, 0x3e8

    .line 9
    .line 10
    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->DESC_MAX:I

    .line 11
    .line 12
    const-string v0, "TNPublish"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lcom/transsion/publish/ui/h;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/transsion/publish/ui/h;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mRoomApi$delegate:Lkotlin/Lazy;

    .line 26
    .line 27
    new-instance v0, Lcom/transsion/publish/ui/s;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/transsion/publish/ui/s;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->loginApi$delegate:Lkotlin/Lazy;

    .line 37
    .line 38
    new-instance v0, Lcom/transsion/publish/ui/w;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/transsion/publish/ui/w;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->publishModel$delegate:Lkotlin/Lazy;

    .line 48
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v1, 0x21

    .line 52
    .line 53
    if-ge v0, v1, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->underOS33:Z

    .line 59
    .line 60
    new-instance v0, Lcom/transsion/publish/ui/x;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/x;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mRunnable:Ljava/lang/Runnable;

    .line 66
    .line 67
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/publish/ui/FilmReviewFragment;Ljo/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->observe$lambda$23(Lcom/transsion/publish/ui/FilmReviewFragment;Ljo/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getDESC_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->DESC_MAX:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTITLE_MAX$p(Lcom/transsion/publish/ui/FilmReviewFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->TITLE_MAX:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->isBold:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$setBold$p(Lcom/transsion/publish/ui/FilmReviewFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->isBold:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->startLink$lambda$32(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final backSaveDialog()V
    .locals 3

    .line 1
    const-string v0, "getString(...)"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/transsion/publish/R$string;->cover_save_des:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/transsion/publish/R$string;->cover_save_right:I

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget v2, Lcom/transsion/publish/R$string;->cover_save_left:I

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v1, Lcom/transsion/publish/R$drawable;->btn_bg_dialog_edit_selector:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget v1, Lcom/transsion/publish/R$drawable;->btn_bg_dialog_edit_selector:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->c(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget v1, Lcom/tn/lib/widget/R$color;->error_50:I

    .line 60
    .line 61
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->i(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "back_save"

    .line 78
    .line 79
    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "module_name"

    .line 88
    .line 89
    const-string v2, "back_save_dialog"

    .line 90
    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getPageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    :catch_0
    return-void
.end method

.method private final buildRequest()Lcom/transsion/publish/api/bean/RequestPostEntity;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Llo/h;->c:Landroid/widget/EditText;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v6, 0x4

    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v3, "\\n"

    .line 27
    .line 28
    const-string v4, ""

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const/4 v12, 0x4

    .line 36
    const/4 v13, 0x0

    .line 37
    const-string v9, "\\t"

    .line 38
    .line 39
    const-string v10, ""

    .line 40
    .line 41
    const/4 v11, 0x0

    .line 42
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/transsion/publish/api/bean/RequestPostEntity;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 52
    .line 53
    const-string v4, "0"

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/transsion/publish/api/GroupBean;->getGroupId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    :cond_1
    move-object v3, v4

    .line 64
    :cond_2
    invoke-virtual {v2, v3}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setGroupId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->postStar:I

    .line 68
    .line 69
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setScore(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->linkEntity:Lcom/transsion/publish/api/bean/MediaLinkEntity;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setLink(Lcom/transsion/publish/api/bean/MediaLinkEntity;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 82
    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move-object v4, v3

    .line 93
    :cond_4
    :goto_1
    invoke-virtual {v2, v4}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setSubjectId(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Llo/h;

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    iget-object v3, v3, Llo/h;->d:Landroid/widget/EditText;

    .line 105
    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v2, v1}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setTitle(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setContent(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setPublishType(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 128
    .line 129
    const-wide/16 v3, 0x0

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    goto :goto_2

    .line 144
    :cond_6
    move-wide v0, v3

    .line 145
    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setLon(D)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 159
    .line 160
    .line 161
    move-result-wide v3

    .line 162
    :cond_7
    invoke-virtual {v2, v3, v4}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setLat(D)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 166
    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    :cond_8
    const-string v0, ""

    .line 176
    .line 177
    :cond_9
    invoke-virtual {v2, v0}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setPoiName(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->detectionSelect(Lcom/transsion/publish/api/bean/RequestPostEntity;)V

    .line 181
    .line 182
    .line 183
    return-object v2
.end method

.method public static synthetic c0(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/ui/FilmReviewFragment$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->showActivityTips$lambda$14$lambda$13(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/ui/FilmReviewFragment$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkBottomMargin()V
    .locals 0

    .line 1
    return-void
.end method

.method private final checkCover(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/publish/api/bean/MediaCoverEntity;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/publish/api/bean/MediaCoverEntity;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/transsion/publish/bean/CoverEntity;->getUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setUrl(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/transsion/publish/bean/CoverEntity;->getSize()Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setSize(J)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/transsion/publish/bean/CoverEntity;->getWidth()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v1, v2

    .line 60
    :goto_2
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setWidth(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/transsion/publish/bean/CoverEntity;->getHeight()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    :cond_3
    invoke-virtual {v0, v2}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setHeight(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setCover(Lcom/transsion/publish/api/bean/MediaCoverEntity;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method private final checkLogin()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Lqx/a;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->loginLaunch:Landroidx/activity/result/b;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->isNeedShowLoginActivity:Z

    .line 19
    .line 20
    :cond_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "requireContext(...)"

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lqx/a;->p(Landroid/content/Context;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v1, Lcom/transsion/publish/R$string;->post_login_title:I

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, "title_name"

    .line 42
    .line 43
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    return v0

    .line 51
    :cond_2
    return v1
.end method

.method private final checkVideoCover(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->d(Ljava/lang/String;)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/transsion/publish/api/bean/MediaCoverEntity;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/transsion/publish/api/bean/MediaCoverEntity;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v1, p2}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    aget v2, v0, p2

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    aget v4, v0, v3

    .line 36
    .line 37
    mul-int/2addr v2, v4

    .line 38
    int-to-long v4, v2

    .line 39
    invoke-virtual {v1, v4, v5}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setSize(J)V

    .line 40
    .line 41
    .line 42
    aget p2, v0, p2

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setWidth(I)V

    .line 45
    .line 46
    .line 47
    aget p2, v0, v3

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setHeight(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setCover(Lcom/transsion/publish/api/bean/MediaCoverEntity;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method private final clickPostTrace()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    const-string v2, "post"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getPageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final clickTrace(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "click"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getPageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final coverClearDialog()V
    .locals 3

    .line 1
    const-string v0, "getString(...)"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/transsion/publish/R$string;->cover_clear_des:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/transsion/publish/R$string;->cover_clear_left:I

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget v2, Lcom/transsion/publish/R$string;->cover_clear_right:I

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v1, Lcom/transsion/publish/R$drawable;->btn_bg_dialog_edit_selector:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget v1, Lcom/transsion/publish/R$drawable;->btn_bg_dialog_edit_selector:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->c(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget v1, Lcom/transsion/baseui/R$color;->base_color_black:I

    .line 60
    .line 61
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog$a;->i(I)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "clear_cover"

    .line 78
    .line 79
    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    :catch_0
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->initRegisterMediaSelector$lambda$31(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final deleteAudio()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Llo/h;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v1, v1, Llo/h;->o:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Llo/h;

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, v1, Llo/h;->o:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    const/4 v4, 0x0

    .line 43
    if-ne v1, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Llo/h;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, v1, Llo/h;->q:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Llo/h;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object v1, v1, Llo/h;->q:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Llo/h;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iget-object v1, v1, Llo/h;->g:Landroid/widget/ImageView;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Llo/h;

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v1, v1, Llo/h;->g:Landroid/widget/ImageView;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Llo/h;

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    iget-object v1, v1, Llo/h;->j:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Llo/h;

    .line 126
    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    iget-object v1, v1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/transsion/publish/view/operation/OperationBarView;->resetItem()V

    .line 134
    .line 135
    .line 136
    :cond_6
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 137
    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    invoke-virtual {v1}, Ljo/b;->a()Lcom/transsion/publish/api/AudioEntity;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_1

    .line 147
    :cond_7
    move-object v1, v0

    .line 148
    :goto_1
    if-eqz v1, :cond_a

    .line 149
    .line 150
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 151
    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 155
    .line 156
    if-eqz v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {v2}, Ljo/b;->a()Lcom/transsion/publish/api/AudioEntity;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    goto :goto_2

    .line 163
    :cond_8
    move-object v2, v0

    .line 164
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Lcom/transsion/publish/adapter/r;->I(Lrm/a;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 171
    .line 172
    :cond_a
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 173
    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/r;->u()V

    .line 177
    .line 178
    .line 179
    :cond_b
    return-void
.end method

.method private final deleteLocation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljo/b;->g()Lcom/transsion/room/api/bean/LocationPlace;

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
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljo/b;->g()Lcom/transsion/room/api/bean/LocationPlace;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/transsion/publish/adapter/r;->I(Lrm/a;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iput-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method private final detectionSelect(Lcom/transsion/publish/api/bean/RequestPostEntity;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBarView;->getSelectItem()Ljava/util/List;

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
    new-instance v1, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/transsion/publish/api/bean/RequestPostEntity;->setMedia(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_14

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_14

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Number;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v2, 0x1

    .line 52
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    if-eqz v0, :cond_e

    .line 55
    .line 56
    const/16 v5, 0x3e8

    .line 57
    .line 58
    if-eq v0, v2, :cond_8

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    if-eq v0, v2, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setMediaType(I)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setAudio(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/r;->v()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    check-cast v0, Ljava/lang/Iterable;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lrm/a;

    .line 102
    .line 103
    instance-of v6, v2, Lcom/transsion/publish/api/AudioEntity;

    .line 104
    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    new-instance v6, Lcom/transsion/publish/api/bean/MediaAudioEntity;

    .line 108
    .line 109
    invoke-direct {v6}, Lcom/transsion/publish/api/bean/MediaAudioEntity;-><init>()V

    .line 110
    .line 111
    .line 112
    check-cast v2, Lcom/transsion/publish/api/AudioEntity;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/transsion/publish/api/AudioEntity;->getLocalPath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaAudioEntity;->setUrl(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/transsion/publish/api/AudioEntity;->getSize()J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    invoke-virtual {v6, v7, v8}, Lcom/transsion/publish/api/bean/MediaAudioEntity;->setSize(J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/transsion/publish/api/AudioEntity;->getDuration()Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-eqz v7, :cond_4

    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move-wide v7, v3

    .line 144
    :goto_3
    cmp-long v7, v7, v3

    .line 145
    .line 146
    if-lez v7, :cond_6

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/transsion/publish/api/AudioEntity;->getDuration()Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    int-to-long v9, v5

    .line 159
    div-long/2addr v7, v9

    .line 160
    goto :goto_4

    .line 161
    :cond_5
    move-wide v7, v3

    .line 162
    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/transsion/publish/api/bean/MediaAudioEntity;->setDuration(J)V

    .line 163
    .line 164
    .line 165
    :cond_6
    invoke-virtual {v6, v3, v4}, Lcom/transsion/publish/api/bean/MediaAudioEntity;->setBitrate(J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getAudio()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_3

    .line 173
    .line 174
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    invoke-direct {p0, v1}, Lcom/transsion/publish/ui/FilmReviewFragment;->checkCover(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_8
    const/4 v0, 0x4

    .line 184
    invoke-virtual {v1, v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setMediaType(I)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setVideo(Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 196
    .line 197
    if-eqz v0, :cond_1

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/v;->m()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_1

    .line 204
    .line 205
    check-cast v0, Ljava/lang/Iterable;

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_1

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->isAdd()Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-nez v6, :cond_9

    .line 228
    .line 229
    new-instance v6, Lcom/transsion/publish/api/bean/MediaVideoEntity;

    .line 230
    .line 231
    invoke-direct {v6}, Lcom/transsion/publish/api/bean/MediaVideoEntity;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setUrl(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setImagePath(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getWidth()I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-lez v7, :cond_a

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getWidth()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setWidth(I)V

    .line 263
    .line 264
    .line 265
    :cond_a
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getHeight()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-lez v7, :cond_b

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getHeight()I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setHeight(I)V

    .line 276
    .line 277
    .line 278
    :cond_b
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    .line 279
    .line 280
    .line 281
    move-result-wide v7

    .line 282
    cmp-long v7, v7, v3

    .line 283
    .line 284
    if-lez v7, :cond_c

    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    .line 287
    .line 288
    .line 289
    move-result-wide v7

    .line 290
    int-to-long v9, v5

    .line 291
    div-long/2addr v7, v9

    .line 292
    invoke-virtual {v6, v7, v8}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setDuration(J)V

    .line 293
    .line 294
    .line 295
    :cond_c
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoSize()J

    .line 296
    .line 297
    .line 298
    move-result-wide v7

    .line 299
    invoke-virtual {v6, v7, v8}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setSize(J)V

    .line 300
    .line 301
    .line 302
    const/4 v7, 0x0

    .line 303
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setFps(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setBitrate(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaVideoEntity;->setDefinition(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getVideo()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    if-eqz v7, :cond_d

    .line 317
    .line 318
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    :cond_d
    invoke-direct {p0, v1, v2}, Lcom/transsion/publish/ui/FilmReviewFragment;->checkVideoCover(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_e
    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setMediaType(I)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 334
    .line 335
    if-eqz v2, :cond_13

    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/transsion/publish/adapter/g;->m()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-eqz v2, :cond_13

    .line 342
    .line 343
    check-cast v2, Ljava/lang/Iterable;

    .line 344
    .line 345
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_13

    .line 354
    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Lcom/transsion/publish/api/PhotoEntity;

    .line 360
    .line 361
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-nez v6, :cond_f

    .line 366
    .line 367
    new-instance v6, Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 368
    .line 369
    invoke-direct {v6}, Lcom/transsion/publish/api/bean/MediaImageEntity;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setUrl(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getWidth()I

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-lez v7, :cond_10

    .line 388
    .line 389
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getWidth()I

    .line 390
    .line 391
    .line 392
    move-result v7

    .line 393
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setWidth(Ljava/lang/Integer;)V

    .line 398
    .line 399
    .line 400
    :cond_10
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getHeight()I

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    if-lez v7, :cond_11

    .line 405
    .line 406
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getHeight()I

    .line 407
    .line 408
    .line 409
    move-result v7

    .line 410
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    invoke-virtual {v6, v7}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setHeight(Ljava/lang/Integer;)V

    .line 415
    .line 416
    .line 417
    :cond_11
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getImageSize()J

    .line 418
    .line 419
    .line 420
    move-result-wide v7

    .line 421
    cmp-long v7, v7, v3

    .line 422
    .line 423
    if-lez v7, :cond_12

    .line 424
    .line 425
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getImageSize()J

    .line 426
    .line 427
    .line 428
    move-result-wide v7

    .line 429
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-virtual {v6, v5}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setSize(Ljava/lang/Long;)V

    .line 434
    .line 435
    .line 436
    :cond_12
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    goto :goto_6

    .line 440
    :cond_13
    invoke-virtual {v1, v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setImage(Ljava/util/List;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_1

    .line 444
    .line 445
    :cond_14
    return-void
.end method

.method private final disposeOperate(Ljo/b;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->hideOpertaionDialog()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljo/b;->e()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x6

    .line 11
    const/4 v2, 0x5

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshImage(Ljo/b;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshVideo(Ljo/b;)V

    .line 37
    .line 38
    .line 39
    goto :goto_7

    .line 40
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x2

    .line 48
    if-ne v3, v4, :cond_5

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshAudio(Ljo/b;)V

    .line 51
    .line 52
    .line 53
    goto :goto_7

    .line 54
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-ne v3, v2, :cond_7

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshCover(Ljo/b;)V

    .line 64
    .line 65
    .line 66
    goto :goto_7

    .line 67
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x3

    .line 75
    if-ne v3, v4, :cond_9

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshWork(Ljo/b;)V

    .line 78
    .line 79
    .line 80
    goto :goto_7

    .line 81
    :cond_9
    :goto_4
    if-nez v0, :cond_a

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ne v3, v1, :cond_b

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshGroup(Ljo/b;)V

    .line 91
    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_b
    :goto_5
    if-nez v0, :cond_c

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/4 v4, 0x4

    .line 102
    if-ne v3, v4, :cond_d

    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshLink(Ljo/b;)V

    .line 105
    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_d
    :goto_6
    if-nez v0, :cond_e

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/16 v3, 0x8

    .line 116
    .line 117
    if-ne v0, v3, :cond_f

    .line 118
    .line 119
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshLocation(Ljo/b;)V

    .line 120
    .line 121
    .line 122
    :cond_f
    :goto_7
    invoke-virtual {p1}, Ljo/b;->e()Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-nez v0, :cond_10

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-ne v0, v2, :cond_12

    .line 134
    .line 135
    invoke-virtual {p1}, Ljo/b;->e()Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-nez p1, :cond_11

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eq p1, v1, :cond_13

    .line 147
    .line 148
    :cond_12
    :goto_8
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->checkBottomMargin()V

    .line 149
    .line 150
    .line 151
    :cond_13
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshVideo$lambda$27(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initView$lambda$8$lambda$7(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Landroid/content/Context;Lcom/transsion/publish/ui/FilmReviewFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/ui/FilmReviewFragment;->startLocation$lambda$33(Landroid/content/Context;Lcom/transsion/publish/ui/FilmReviewFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getAddImageEntity()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/PhotoEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/publish/api/PhotoEntity;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/PhotoEntity;->setAdd(Z)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private final getAddVideoEntity()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/VsMediaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/publish/api/VsMediaInfo;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/transsion/publish/api/VsMediaInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/VsMediaInfo;->setAdd(Z)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private final getImageIconView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/transsion/publish/ui/l;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/l;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private static final getImageIconView$lambda$11(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    instance-of v1, v0, Lso/f;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Lso/f;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 33
    .line 34
    sget v1, Lcom/transsion/publish/R$id;->image:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageIcon:Landroid/widget/ImageView;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private final getLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->loginApi$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mRoomApi$delegate:Lkotlin/Lazy;

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

.method private final getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "publish_post"

    .line 2
    .line 3
    return-object v0
.end method

.method private final getPublishModel()Loo/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->publishModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Loo/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getVideoIconView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/transsion/publish/ui/k;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/k;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private static final getVideoIconView$lambda$10(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    instance-of v1, v0, Lso/f;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Lso/f;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 33
    .line 34
    sget v1, Lcom/transsion/publish/R$id;->image:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoIcon:Landroid/widget/ImageView;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public static synthetic h0(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/ui/FilmReviewFragment;->initView$lambda$8(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final hideOpertaionDialog()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->showActivityTips$lambda$14(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initImageAdapter()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/publish/adapter/g;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/publish/adapter/g;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Llo/h;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Llo/h;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-direct {v1, v2, v3}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Llo/h;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Llo/h;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v1, Ltf/b;

    .line 50
    .line 51
    const/high16 v2, 0x40000000    # 2.0f

    .line 52
    .line 53
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/high16 v4, 0x41000000    # 8.0f

    .line 62
    .line 63
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-direct {v1, v3, v2, v5, v4}, Ltf/b;-><init>(IIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Llo/h;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, v0, Llo/h;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method private final initManagerAdapter()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/publish/adapter/r;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/publish/adapter/r;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Llo/h;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Llo/h;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Llo/h;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v0, Llo/h;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private final initRegisterMediaSelector()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->underOS33:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lf/g;

    .line 11
    .line 12
    invoke-direct {v1}, Lf/g;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/publish/ui/t;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/publish/ui/t;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoSelectLauncher:Landroidx/activity/result/b;

    .line 25
    .line 26
    return-void
.end method

.method private static final initRegisterMediaSelector$lambda$31(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/net/Uri;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljo/b;

    .line 4
    .line 5
    invoke-direct {v0}, Ljo/b;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/transsion/publish/api/VsMediaInfo;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/transsion/publish/api/VsMediaInfo;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v3, Lqo/g;->a:Lqo/g;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "requireContext(...)"

    .line 35
    .line 36
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4, p1}, Lqo/g;->b(Landroid/content/Context;Landroid/net/Uri;)Lko/a;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Lko/a;->c()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v2, v4}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoPath(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lko/a;->e()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v2, v4}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoTitle(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lko/a;->a()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    invoke-virtual {v2, v4, v5}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoDuration(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lko/a;->f()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v2, v4}, Lcom/transsion/publish/api/VsMediaInfo;->setWidth(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lko/a;->b()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v2, v4}, Lcom/transsion/publish/api/VsMediaInfo;->setHeight(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lko/a;->d()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {v2, v3, v4}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoSize(J)V

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {v0, v2}, Ljo/b;->u(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->refreshVideo(Ljo/b;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void
.end method

.method private final initVideoAdapter()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/publish/adapter/v;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/publish/adapter/v;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Llo/h;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Llo/h;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-direct {v1, v2, v3}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Llo/h;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Llo/h;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v1, Ltf/b;

    .line 50
    .line 51
    const/high16 v2, 0x40000000    # 2.0f

    .line 52
    .line 53
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/high16 v4, 0x41000000    # 8.0f

    .line 62
    .line 63
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-direct {v1, v3, v2, v5, v4}, Ltf/b;-><init>(IIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Llo/h;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, v0, Llo/h;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method private static final initView$lambda$3(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/widget/RatingBar;FZ)V
    .locals 0

    .line 1
    float-to-int p1, p2

    .line 2
    iput p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->postStar:I

    .line 3
    .line 4
    return-void
.end method

.method private static final initView$lambda$4(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->m()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    const/4 v1, 0x5

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final initView$lambda$5(Lcom/transsion/publish/ui/FilmReviewFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 7

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
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v2, "loginStatus"

    .line 18
    .line 19
    const-string v3, "\u767b\u5f55\u6210\u529f"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getLoginApi()Lqx/a;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Lqx/a;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 44
    .line 45
    const/4 v4, 0x4

    .line 46
    const/4 v5, 0x0

    .line 47
    const-string v1, "loginStatus"

    .line 48
    .line 49
    const-string v2, "\u767b\u5f55\u5931\u8d25\u6216\u8005\u53d6\u6d88"

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method private static final initView$lambda$6(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->hasFocus:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->hideOpertaionDialog()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final initView$lambda$8(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->hideOpertaionDialog()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Llo/h;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Llo/h;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    new-instance p2, Lcom/transsion/publish/ui/v;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/transsion/publish/ui/v;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private static final initView$lambda$8$lambda$7(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->c:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Llo/h;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Llo/h;->c:Landroid/widget/EditText;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Llo/h;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Llo/h;->c:Landroid/widget/EditText;

    .line 43
    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method private static final initView$lambda$9(I)V
    .locals 0

    .line 1
    return-void
.end method

.method private final initViewModel()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->observe()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final isMoreThanADay(JJ)Z
    .locals 0

    .line 1
    sub-long/2addr p1, p3

    .line 2
    const p3, 0x240c8400

    .line 3
    .line 4
    .line 5
    int-to-long p3, p3

    .line 6
    cmp-long p1, p1, p3

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public static synthetic j0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/publish/ui/FilmReviewFragment;->loginApi_delegate$lambda$1()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->mRunnable$lambda$36(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getImageIconView$lambda$11(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final loginApi_delegate$lambda$1()Lqx/a;
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

.method public static synthetic m0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getVideoIconView$lambda$10(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final mRoomApi_delegate$lambda$0()Lep/f;
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

.method private static final mRunnable$lambda$36(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Llo/h;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Llo/h;->c:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->initView$lambda$4(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/widget/RatingBar;FZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/publish/ui/FilmReviewFragment;->initView$lambda$3(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/widget/RatingBar;FZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final observe()V
    .locals 11

    .line 1
    new-instance v6, Lcom/transsion/publish/ui/n;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/publish/ui/n;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v7, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v8, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Ljo/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v9, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

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
    move-object v3, v10

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    new-instance v6, Lcom/transsion/publish/ui/o;

    .line 44
    .line 45
    invoke-direct {v6, p0}, Lcom/transsion/publish/ui/o;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 53
    .line 54
    const-class v1, Lcom/transsion/publish/bean/BigImageBean;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object v1, p0

    .line 72
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private static final observe$lambda$23(Lcom/transsion/publish/ui/FilmReviewFragment;Ljo/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->disposeOperate(Ljo/b;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final observe$lambda$24(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/bean/BigImageBean;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getFrom()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getOperator()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getSelect()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->selectPhotosDispose(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method private final openRoomList()V
    .locals 4

    .line 1
    const-string v0, "/room/list"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "is_select_room"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "index"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-static {v0, v1, v2, v3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/room/api/bean/LocationPlace;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->requestCurrentLocation$lambda$15(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/room/api/bean/LocationPlace;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final postService(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V
    .locals 2

    .line 1
    sget-object p2, Lcom/transsion/publish/PublishService;->e:Lcom/transsion/publish/PublishService$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 13
    .line 14
    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/publish/PublishService$a;->a(Landroid/content/Context;Lcom/transsion/publish/api/bean/RequestPostEntity;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final publishModel_delegate$lambda$2()Loo/b;
    .locals 1

    .line 1
    new-instance v0, Loo/b;

    .line 2
    .line 3
    invoke-direct {v0}, Loo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic q0(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->selectPhotosDispose$lambda$26(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0()Lep/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/publish/ui/FilmReviewFragment;->mRoomApi_delegate$lambda$0()Lep/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final refreshAudio(Ljo/b;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v2, v3, :cond_7

    .line 15
    .line 16
    invoke-virtual {p1}, Ljo/b;->a()Lcom/transsion/publish/api/AudioEntity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Llo/h;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/publish/view/operation/OperationBarView;->selectItem(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initManagerAdapter()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljo/b;->a()Lcom/transsion/publish/api/AudioEntity;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lrm/a;->setType(I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Ljo/b;->a()Lcom/transsion/publish/api/AudioEntity;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/r;->J(Lrm/a;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Llo/h;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-object p1, p1, Llo/h;->o:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Llo/h;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    iget-object p1, p1, Llo/h;->o:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Llo/h;

    .line 101
    .line 102
    if-eqz p1, :cond_a

    .line 103
    .line 104
    iget-object p1, p1, Llo/h;->q:Landroid/widget/RelativeLayout;

    .line 105
    .line 106
    if-eqz p1, :cond_a

    .line 107
    .line 108
    const/16 v0, 0x8

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    :goto_0
    if-nez v0, :cond_8

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, v1, :cond_a

    .line 122
    .line 123
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 124
    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->coverClearDialog()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_9
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->deleteAudio()V

    .line 132
    .line 133
    .line 134
    :cond_a
    :goto_1
    return-void
.end method

.method private final refreshCover(Ljo/b;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljo/b;->b()Lcom/transsion/publish/api/PhotoEntity;

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
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/publish/bean/CoverEntity;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsion/publish/bean/CoverEntity;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Ljo/b;->b()Lcom/transsion/publish/api/PhotoEntity;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v2, v1

    .line 36
    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/publish/bean/CoverEntity;->setUrl(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    invoke-virtual {p1}, Ljo/b;->b()Lcom/transsion/publish/api/PhotoEntity;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getImageSize()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move-object v2, v1

    .line 59
    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/publish/bean/CoverEntity;->setSize(Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    invoke-virtual {p1}, Ljo/b;->b()Lcom/transsion/publish/api/PhotoEntity;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_6

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    move-object v2, v1

    .line 82
    :goto_2
    invoke-virtual {v0, v2}, Lcom/transsion/publish/bean/CoverEntity;->setWidth(Ljava/lang/Integer;)V

    .line 83
    .line 84
    .line 85
    :cond_7
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    invoke-virtual {p1}, Ljo/b;->b()Lcom/transsion/publish/api/PhotoEntity;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_8

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_3

    .line 104
    :cond_8
    move-object v2, v1

    .line 105
    :goto_3
    invoke-virtual {v0, v2}, Lcom/transsion/publish/bean/CoverEntity;->setHeight(Ljava/lang/Integer;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Llo/h;

    .line 113
    .line 114
    if-eqz v0, :cond_a

    .line 115
    .line 116
    iget-object v0, v0, Llo/h;->g:Landroid/widget/ImageView;

    .line 117
    .line 118
    if-eqz v0, :cond_a

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_a
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const-string v3, "requireContext(...)"

    .line 131
    .line 132
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1}, Ljo/b;->b()Lcom/transsion/publish/api/PhotoEntity;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    goto :goto_4

    .line 150
    :cond_b
    move-object p1, v1

    .line 151
    :goto_4
    invoke-virtual {v0, p1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    sget v0, Lcom/transsion/publish/R$color;->color_ff999999:I

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lni/f$b;->i(I)Lni/f$b;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Llo/h;

    .line 166
    .line 167
    if-eqz v0, :cond_c

    .line 168
    .line 169
    iget-object v1, v0, Llo/h;->g:Landroid/widget/ImageView;

    .line 170
    .line 171
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method private final refreshGroup(Ljo/b;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljo/b;->c()Lcom/transsion/publish/api/GroupBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljo/b;->c()Lcom/transsion/publish/api/GroupBean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_7

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->setGroup(Lcom/transsion/publish/api/GroupBean;)V

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v0, 0x2

    .line 40
    if-ne p1, v0, :cond_7

    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 43
    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Ljo/b;->c()Lcom/transsion/publish/api/GroupBean;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-object p1, v1

    .line 54
    :goto_1
    if-eqz p1, :cond_6

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Ljo/b;->c()Lcom/transsion/publish/api/GroupBean;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move-object v0, v1

    .line 70
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/transsion/publish/adapter/r;->I(Lrm/a;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iput-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->operationMenu:Ljo/b;

    .line 77
    .line 78
    :cond_6
    iput-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 79
    .line 80
    :cond_7
    :goto_3
    new-instance p1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/transsion/publish/api/GroupBean;->getGroupId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "group_id"

    .line 98
    .line 99
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getPageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private final refreshImage(Ljo/b;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v3, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :cond_1
    if-ge v2, v1, :cond_c

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Ljo/b;->h()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljo/b;->r(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p1}, Ljo/b;->h()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->selectPhotosDispose(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/4 v0, 0x2

    .line 83
    if-ne p1, v0, :cond_c

    .line 84
    .line 85
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    move p1, v3

    .line 102
    goto :goto_1

    .line 103
    :cond_6
    move p1, v2

    .line 104
    :goto_1
    if-nez p1, :cond_b

    .line 105
    .line 106
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-ne p1, v3, :cond_7

    .line 121
    .line 122
    move p1, v3

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    move p1, v2

    .line 125
    :goto_2
    if-eqz p1, :cond_9

    .line 126
    .line 127
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 128
    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 142
    .line 143
    if-eqz p1, :cond_8

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-ne p1, v3, :cond_8

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_8
    move v3, v2

    .line 153
    :goto_3
    if-eqz v3, :cond_9

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_9
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    goto :goto_4

    .line 171
    :cond_a
    move p1, v2

    .line 172
    :goto_4
    if-ge p1, v1, :cond_c

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Llo/h;

    .line 179
    .line 180
    if-eqz p1, :cond_c

    .line 181
    .line 182
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 183
    .line 184
    if-eqz p1, :cond_c

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Lcom/transsion/publish/view/operation/OperationBarView;->selectItem(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Llo/h;

    .line 195
    .line 196
    if-eqz p1, :cond_c

    .line 197
    .line 198
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 199
    .line 200
    if-eqz p1, :cond_c

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->resetItem()V

    .line 203
    .line 204
    .line 205
    :cond_c
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity"

    .line 210
    .line 211
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    check-cast p1, Lcom/transsion/publish/ui/FilmReviewActivity;

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->isPostEnable()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {p1, v0}, Lcom/transsion/publish/ui/FilmReviewActivity;->j0(Z)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method private final refreshLink(Ljo/b;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v2, v1, :cond_7

    .line 14
    .line 15
    invoke-virtual {p1}, Ljo/b;->f()Lcom/transsion/publish/api/LinkEntity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Llo/h;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v0, v2}, Lcom/transsion/publish/view/operation/OperationBarView;->selectItem(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initManagerAdapter()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1}, Ljo/b;->f()Lcom/transsion/publish/api/LinkEntity;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lcom/transsion/publish/adapter/r;->J(Lrm/a;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1}, Ljo/b;->f()Lcom/transsion/publish/api/LinkEntity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v2, Lcom/transsion/publish/api/bean/MediaLinkEntity;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/transsion/publish/api/LinkEntity;->getUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move-object v4, v3

    .line 67
    :goto_0
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/publish/api/LinkEntity;->getTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    move-object v5, v3

    .line 75
    :goto_1
    if-eqz v0, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/publish/api/LinkEntity;->getCover()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :cond_6
    invoke-direct {v2, v4, v5, v3}, Lcom/transsion/publish/api/bean/MediaLinkEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->linkEntity:Lcom/transsion/publish/api/bean/MediaLinkEntity;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljo/b;->f()Lcom/transsion/publish/api/LinkEntity;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_9

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/transsion/publish/api/LinkEntity;->getLoading()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-ne p1, v1, :cond_9

    .line 97
    .line 98
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 99
    .line 100
    sget v0, Lcom/transsion/publish/R$string;->postint_state_added:I

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_7
    :goto_2
    if-nez v0, :cond_8

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const/4 v0, 0x2

    .line 114
    if-ne p1, v0, :cond_9

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Llo/h;

    .line 121
    .line 122
    if-eqz p1, :cond_9

    .line 123
    .line 124
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 125
    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Lcom/transsion/publish/view/operation/OperationBarView;->resetItem(Z)V

    .line 129
    .line 130
    .line 131
    :cond_9
    :goto_3
    return-void
.end method

.method private final refreshLocation(Ljo/b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljo/b;->g()Lcom/transsion/room/api/bean/LocationPlace;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Ljo/b;->g()Lcom/transsion/room/api/bean/LocationPlace;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Llo/h;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/publish/view/operation/OperationBarView;->selectItem(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initManagerAdapter()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljo/b;->g()Lcom/transsion/room/api/bean/LocationPlace;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lrm/a;->setType(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {p1}, Ljo/b;->g()Lcom/transsion/room/api/bean/LocationPlace;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/r;->J(Lrm/a;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v0, 0x2

    .line 77
    if-ne p1, v0, :cond_6

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->deleteLocation()V

    .line 80
    .line 81
    .line 82
    :cond_6
    :goto_1
    return-void
.end method

.method private final refreshVideo(Ljo/b;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_7

    .line 15
    .line 16
    invoke-virtual {p1}, Ljo/b;->j()Lcom/transsion/publish/api/VsMediaInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljo/b;->j()Lcom/transsion/publish/api/VsMediaInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    :goto_0
    const-wide/32 v3, 0x927c0

    .line 37
    .line 38
    .line 39
    cmp-long v0, v0, v3

    .line 40
    .line 41
    if-lez v0, :cond_3

    .line 42
    .line 43
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 44
    .line 45
    sget v0, Lcom/transsion/publish/R$string;->publish_video_limit:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initVideoAdapter()V

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljo/b;->j()Lcom/transsion/publish/api/VsMediaInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/transsion/publish/adapter/v;->setData(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Llo/h;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Lcom/transsion/publish/view/operation/OperationBarView;->selectItem(I)V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/v;->l()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    const/4 p1, 0x0

    .line 111
    :goto_1
    if-lt p1, v2, :cond_a

    .line 112
    .line 113
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoIcon:Landroid/widget/ImageView;

    .line 114
    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    new-instance v0, Lcom/transsion/publish/ui/p;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/p;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v1, 0xc8

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    :goto_2
    if-nez v0, :cond_8

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    const/4 v0, 0x2

    .line 136
    if-ne p1, v0, :cond_a

    .line 137
    .line 138
    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 140
    .line 141
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 142
    .line 143
    if-eqz p1, :cond_9

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/v;->t()V

    .line 146
    .line 147
    .line 148
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Llo/h;

    .line 153
    .line 154
    if-eqz p1, :cond_a

    .line 155
    .line 156
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->resetItem()V

    .line 161
    .line 162
    .line 163
    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity"

    .line 168
    .line 169
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    check-cast p1, Lcom/transsion/publish/ui/FilmReviewActivity;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->isPostEnable()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p1, v0}, Lcom/transsion/publish/ui/FilmReviewActivity;->j0(Z)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method private static final refreshVideo$lambda$27(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/transsion/publish/R$drawable;->icon_post_video_unable:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final refreshWork(Ljo/b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljo/b;->i()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljo/b;->d()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v2, v1, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Ljo/b;->i()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljo/b;->i()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    :cond_2
    const-string p1, ""

    .line 48
    .line 49
    :cond_3
    const-string v1, "subject_id"

    .line 50
    .line 51
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getPageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x2

    .line 72
    if-ne p1, v0, :cond_6

    .line 73
    .line 74
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->n()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-ne p1, v1, :cond_6

    .line 83
    .line 84
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/v;->n()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-ne p1, v1, :cond_6

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Llo/h;

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->resetItem()V

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_1
    return-void
.end method

.method private final requestCurrentLocation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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
    sget-object v1, Lcf/c;->a:Lcf/c;

    .line 9
    .line 10
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getMRoomApi()Lep/f;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v2, Lcom/transsion/publish/ui/z;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/transsion/publish/ui/z;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0, v2}, Lep/f;->b(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private static final requestCurrentLocation$lambda$15(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/room/api/bean/LocationPlace;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->setLocation(Lcom/transsion/room/api/bean/LocationPlace;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/publish/ui/FilmReviewFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->initView$lambda$5(Lcom/transsion/publish/ui/FilmReviewFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final selectPhotosDispose(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/PhotoEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_8

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
    goto :goto_2

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initImageAdapter()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/g;->setData(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move p1, v0

    .line 41
    :goto_0
    const/16 v1, 0x9

    .line 42
    .line 43
    if-ge p1, v1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getAddImageEntity()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v2}, Lcom/transsion/publish/adapter/g;->addData(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Llo/h;

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/transsion/publish/view/operation/OperationBarView;->selectItem(I)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/4 p1, 0x0

    .line 91
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-lt p1, v1, :cond_7

    .line 99
    .line 100
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageIcon:Landroid/widget/ImageView;

    .line 101
    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    new-instance v0, Lcom/transsion/publish/ui/u;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/u;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 107
    .line 108
    .line 109
    const-wide/16 v1, 0xc8

    .line 110
    .line 111
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    :cond_7
    return-void

    .line 115
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 116
    .line 117
    if-nez p1, :cond_9

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initImageAdapter()V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_9
    if-eqz p1, :cond_a

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->u()V

    .line 126
    .line 127
    .line 128
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Llo/h;

    .line 133
    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 137
    .line 138
    if-eqz p1, :cond_b

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->resetItem()V

    .line 141
    .line 142
    .line 143
    :cond_b
    :goto_3
    return-void
.end method

.method private static final selectPhotosDispose$lambda$26(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/transsion/publish/R$drawable;->icon_post_select_image_unable:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final setGroup(Lcom/transsion/publish/api/GroupBean;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initManagerAdapter()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-virtual {p1, v0}, Lrm/a;->setType(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/r;->J(Lrm/a;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private final setLocation(Lcom/transsion/room/api/bean/LocationPlace;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->curLocationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initManagerAdapter()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lrm/a;->setType(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/r;->J(Lrm/a;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private final setStarTips(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->v:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initManagerAdapter()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p1, v0}, Lrm/a;->setType(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Subject;->setCorrelation(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/r;->J(Lrm/a;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method private final showActivityTips()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/publish/ui/r;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/r;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x320

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static final showActivityTips$lambda$14(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "publish_show_guide_time"

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/publish/ui/FilmReviewFragment;->isMoreThanADay(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->locationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    new-instance v0, Lcom/transsion/publish/ui/FilmReviewFragment$d;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/FilmReviewFragment$d;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Llo/h;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object v1, v1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    new-instance v2, Lcom/transsion/publish/ui/m;

    .line 71
    .line 72
    invoke-direct {v2, p0, v0}, Lcom/transsion/publish/ui/m;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/ui/FilmReviewFragment$d;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method private static final showActivityTips$lambda$14$lambda$13(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/ui/FilmReviewFragment$d;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_6

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
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    sget v0, Lcom/transsion/publish/R$string;->publish_tip_text:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "getString(...)"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x3

    .line 36
    const/4 v5, 0x0

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iget-object v6, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    sget v0, Lcom/transsion/publish/R$string;->publish_tip_text:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/high16 v1, 0x41f00000    # 30.0f

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v6, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 56
    .line 57
    const/high16 v7, 0x40c00000    # 6.0f

    .line 58
    .line 59
    if-nez v6, :cond_2

    .line 60
    .line 61
    sget v0, Lcom/transsion/publish/R$string;->publish_tip_text_no_subject:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    move v1, v7

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    if-nez v2, :cond_3

    .line 73
    .line 74
    sget v0, Lcom/transsion/publish/R$string;->publish_tip_text_no_group:I

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move v4, v3

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 v1, 0x0

    .line 86
    move v4, v5

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Llo/h;

    .line 92
    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    iget-object v2, v2, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/4 v2, 0x0

    .line 111
    :goto_2
    new-array v3, v3, [I

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Llo/h;

    .line 123
    .line 124
    if-eqz p0, :cond_6

    .line 125
    .line 126
    iget-object p0, p0, Llo/h;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 127
    .line 128
    if-eqz p0, :cond_6

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v2, "publish_show_guide_time"

    .line 143
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    invoke-virtual {p1, v2, v6, v7}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    aget p1, v3, v5

    .line 155
    .line 156
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v3, "getContext(...)"

    .line 163
    .line 164
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v2, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    add-int/2addr p1, v0

    .line 172
    int-to-float p1, p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->setArrowPosition(F)V

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_3
    return-void
.end method

.method private final showLinkEditInputDialog(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->clickTrace(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lmo/b$a;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lmo/b$a;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Llo/h;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Llo/h;->p:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, p0, p1}, Lmo/b$a;->a(Lmo/b$b;Landroid/view/View;)Lmo/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static final startLink$lambda$32(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->completeLoad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final startLocation$lambda$33(Landroid/content/Context;Lcom/transsion/publish/ui/FilmReviewFragment;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    new-instance p2, Landroid/content/Intent;

    .line 4
    .line 5
    const-class v0, Lcom/transsion/publish/ui/SelectLocationActivity;

    .line 6
    .line 7
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/transsion/publish/ui/FilmReviewFragment;->curLocationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v0, "location_data"

    .line 15
    .line 16
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    :cond_0
    const/high16 p1, 0x10000000

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static synthetic t0(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initView$lambda$9(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u0(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/ui/FilmReviewFragment;->initView$lambda$6(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final userGrade()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->publishType:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Llo/h;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Llo/h;->c:Landroid/widget/EditText;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v1, v2

    .line 29
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/publish/adapter/r;->B()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v3, 0x1

    .line 44
    if-ne v1, v3, :cond_5

    .line 45
    .line 46
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/transsion/publish/adapter/g;->n()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ne v1, v3, :cond_5

    .line 57
    .line 58
    :cond_1
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/transsion/publish/adapter/v;->n()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ne v1, v3, :cond_5

    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Llo/h;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-object v1, v1, Llo/h;->n:Landroid/widget/RatingBar;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/4 v2, 0x0

    .line 98
    cmpl-float v1, v1, v2

    .line 99
    .line 100
    if-lez v1, :cond_5

    .line 101
    .line 102
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->coverPath:Lcom/transsion/publish/bean/CoverEntity;

    .line 103
    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->buildRequest()Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {p0, v1, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->postService(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void

    .line 123
    :cond_5
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->checkLogin()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->buildRequest()Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {p0, v1, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->postService(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 144
    .line 145
    .line 146
    :cond_7
    return-void
.end method

.method private final userPost()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->publishType:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->checkLogin()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->buildRequest()Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0, v1, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->postService(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static synthetic v0(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/bean/BigImageBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->observe$lambda$24(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/bean/BigImageBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0()Loo/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/publish/ui/FilmReviewFragment;->publishModel_delegate$lambda$2()Loo/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final checkPost()V
    .locals 3

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
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 10
    .line 11
    sget v1, Lcom/transsion/baseui/R$string;->base_network_fail:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->clickPostTrace()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/r;->w()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget-object v2, Lgx/b;->a:Lgx/b$a;

    .line 39
    .line 40
    invoke-virtual {v2}, Lgx/b$a;->a()Lgx/b;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v1, v0}, Lgx/b;->i(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 48
    .line 49
    if-eq v0, v1, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->userPost()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->userGrade()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public final closeAffirm()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->c:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/publish/adapter/r;->A()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    move v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, v3

    .line 44
    :goto_1
    iget-object v4, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/transsion/publish/adapter/g;->n()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    move v4, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v4, v3

    .line 57
    :goto_2
    iget-object v5, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/transsion/publish/adapter/v;->n()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v2, v3

    .line 69
    :goto_3
    if-eqz v0, :cond_6

    .line 70
    .line 71
    if-nez v1, :cond_6

    .line 72
    .line 73
    if-nez v4, :cond_6

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void

    .line 95
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->backSaveDialog()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public completeLoad()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Llo/h;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->getViewBinding(Landroid/view/LayoutInflater;)Llo/h;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Llo/h;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Llo/h;->c(Landroid/view/LayoutInflater;)Llo/h;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eq p1, p2, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Llo/h;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Llo/h;->u:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Llo/h;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p1, Llo/h;->n:Landroid/widget/RatingBar;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Llo/h;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p1, Llo/h;->q:Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Llo/h;

    .line 69
    .line 70
    if-eqz p1, :cond_8

    .line 71
    .line 72
    iget-object p1, p1, Llo/h;->o:Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    if-eqz p1, :cond_8

    .line 75
    .line 76
    new-instance v1, Lcom/transsion/publish/ui/b0;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/b0;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Llo/h;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-object p1, p1, Llo/h;->n:Landroid/widget/RatingBar;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    new-instance v1, Lcom/transsion/publish/ui/a0;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/a0;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Llo/h;

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    iget-object p1, p1, Llo/h;->u:Landroid/widget/TextView;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Llo/h;

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    iget-object p1, p1, Llo/h;->n:Landroid/widget/RatingBar;

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Llo/h;

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    iget-object p1, p1, Llo/h;->q:Landroid/widget/RelativeLayout;

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Llo/h;

    .line 155
    .line 156
    if-eqz p1, :cond_9

    .line 157
    .line 158
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 159
    .line 160
    if-eqz p1, :cond_9

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Lcom/transsion/publish/view/operation/OperationBarView;->setClickListener(Lcom/transsion/publish/adapter/a;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Llo/h;

    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    iget-object p1, p1, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 174
    .line 175
    if-eqz p1, :cond_a

    .line 176
    .line 177
    iget v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 178
    .line 179
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 180
    .line 181
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 182
    .line 183
    invoke-virtual {p1, v1, v2, v3}, Lcom/transsion/publish/view/operation/OperationBarView;->init(ILcom/transsion/publish/api/GroupBean;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 184
    .line 185
    .line 186
    :cond_a
    new-instance p1, Lf/j;

    .line 187
    .line 188
    invoke-direct {p1}, Lf/j;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lcom/transsion/publish/ui/c0;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/c0;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->loginLaunch:Landroidx/activity/result/b;

    .line 201
    .line 202
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 203
    .line 204
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Llo/h;

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    if-eqz v1, :cond_b

    .line 215
    .line 216
    iget-object v1, v1, Llo/h;->d:Landroid/widget/EditText;

    .line 217
    .line 218
    if-eqz v1, :cond_b

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    goto :goto_1

    .line 225
    :cond_b
    move-object v1, v2

    .line 226
    :goto_1
    invoke-static {v1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 231
    .line 232
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 233
    .line 234
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Llo/h;

    .line 242
    .line 243
    if-eqz v1, :cond_c

    .line 244
    .line 245
    iget-object v1, v1, Llo/h;->d:Landroid/widget/EditText;

    .line 246
    .line 247
    if-eqz v1, :cond_c

    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :cond_c
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Llo/h;

    .line 264
    .line 265
    if-eqz v0, :cond_d

    .line 266
    .line 267
    iget-object v0, v0, Llo/h;->d:Landroid/widget/EditText;

    .line 268
    .line 269
    if-eqz v0, :cond_d

    .line 270
    .line 271
    new-instance v1, Lcom/transsion/publish/ui/FilmReviewFragment$b;

    .line 272
    .line 273
    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/publish/ui/FilmReviewFragment$b;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    .line 278
    .line 279
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Llo/h;

    .line 284
    .line 285
    if-eqz p1, :cond_e

    .line 286
    .line 287
    iget-object p1, p1, Llo/h;->d:Landroid/widget/EditText;

    .line 288
    .line 289
    if-eqz p1, :cond_e

    .line 290
    .line 291
    new-instance p2, Lcom/transsion/publish/ui/d0;

    .line 292
    .line 293
    invoke-direct {p2, p0}, Lcom/transsion/publish/ui/d0;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 297
    .line 298
    .line 299
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Llo/h;

    .line 304
    .line 305
    if-eqz p1, :cond_f

    .line 306
    .line 307
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 308
    .line 309
    if-eqz p1, :cond_f

    .line 310
    .line 311
    new-instance p2, Lcom/transsion/publish/ui/FilmReviewFragment$c;

    .line 312
    .line 313
    invoke-direct {p2, p0}, Lcom/transsion/publish/ui/FilmReviewFragment$c;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 317
    .line 318
    .line 319
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Llo/h;

    .line 324
    .line 325
    if-eqz p1, :cond_10

    .line 326
    .line 327
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 328
    .line 329
    if-eqz p1, :cond_10

    .line 330
    .line 331
    new-instance p2, Lcom/transsion/publish/ui/i;

    .line 332
    .line 333
    invoke-direct {p2, p0}, Lcom/transsion/publish/ui/i;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 337
    .line 338
    .line 339
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Llo/h;

    .line 344
    .line 345
    if-eqz p1, :cond_11

    .line 346
    .line 347
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 348
    .line 349
    if-eqz p1, :cond_11

    .line 350
    .line 351
    iget-object p2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mRunnable:Ljava/lang/Runnable;

    .line 352
    .line 353
    const-wide/16 v0, 0x1f4

    .line 354
    .line 355
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    .line 357
    .line 358
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    check-cast p1, Llo/h;

    .line 363
    .line 364
    if-eqz p1, :cond_12

    .line 365
    .line 366
    iget-object p1, p1, Llo/h;->t:Lcom/transsion/publish/view/ObservableScrollView;

    .line 367
    .line 368
    if-eqz p1, :cond_12

    .line 369
    .line 370
    new-instance p2, Lcom/transsion/publish/ui/j;

    .line 371
    .line 372
    invoke-direct {p2}, Lcom/transsion/publish/ui/j;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, p2}, Lcom/transsion/publish/view/ObservableScrollView;->setScrollListener(Lcom/transsion/publish/view/ObservableScrollView$a;)V

    .line 376
    .line 377
    .line 378
    :cond_12
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->requestCurrentLocation()V

    .line 379
    .line 380
    .line 381
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->showActivityTips()V

    .line 382
    .line 383
    .line 384
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getVideoIconView()V

    .line 385
    .line 386
    .line 387
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getImageIconView()V

    .line 388
    .line 389
    .line 390
    return-void
.end method

.method public final isPostEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/g;->n()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/v;->n()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Llo/h;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, v0, Llo/h;->c:Landroid/widget/EditText;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 51
    :goto_2
    return v0
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
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
    const-string v3, "publish_post"

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

.method public onDestroy()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/r;->u()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string v0, "kv_link_record"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "mmkvWithID(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "link"

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    const/4 v8, 0x0

    .line 35
    const-string v5, "FilmReviewFragment onDestroy"

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
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
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const v1, -0x4af740bb

    .line 17
    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const v1, 0x4f946dd5    # 4.9804518E9f

    .line 22
    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "back_save"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "clear_cover"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->deleteAudio()V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->managerAdapter:Lcom/transsion/publish/adapter/r;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/r;->H()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v2, "sourceType"

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceType:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v2, "sourceMode"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v0, v1

    .line 54
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->sourceMode:I

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const-string v3, "subject"

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ne v0, v2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move-object v0, v1

    .line 90
    :goto_2
    if-eqz v0, :cond_3

    .line 91
    .line 92
    instance-of v3, v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 93
    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    const-string v3, "group"

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ne v0, v2, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_4
    if-eqz v1, :cond_5

    .line 125
    .line 126
    instance-of v0, v1, Lcom/transsion/publish/api/GroupBean;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    check-cast v1, Lcom/transsion/publish/api/GroupBean;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->groupBean:Lcom/transsion/publish/api/GroupBean;

    .line 133
    .line 134
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initViewModel()V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->initRegisterMediaSelector()V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide p1

    .line 147
    iput-wide p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->showTime:J

    .line 148
    .line 149
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->TAG:Ljava/lang/String;

    .line 152
    .line 153
    const/4 v4, 0x4

    .line 154
    const/4 v5, 0x0

    .line 155
    const-string v2, "FilmReviewFragment onViewCreated"

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public put(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Llo/h;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public startAudio(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "audio"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->clickTrace(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/publish/ui/SelectMusicActivity;->k:Lcom/transsion/publish/ui/SelectMusicActivity$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/transsion/publish/ui/SelectMusicActivity$a;->a(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public startGroup(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->openRoomList()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public startLink(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Llo/h;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Llo/h;->l:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Llo/h;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, v0, Llo/h;->m:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->hideOpertaionDialog()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->showLinkEditInputDialog(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Llo/h;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p1, Llo/h;->c:Landroid/widget/EditText;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    new-instance v0, Lcom/transsion/publish/ui/y;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/y;-><init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v1, 0x7d0

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->showLinkEditInputDialog(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public startLocation(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcf/c;->a:Lcf/c;

    .line 33
    .line 34
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    new-instance v0, Landroid/content/Intent;

    .line 43
    .line 44
    const-class v1, Lcom/transsion/publish/ui/SelectLocationActivity;

    .line 45
    .line 46
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->curLocationBean:Lcom/transsion/room/api/bean/LocationPlace;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v2, "location_data"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    :cond_2
    const/high16 v1, 0x10000000

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->getMRoomApi()Lep/f;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    new-instance v2, Lcom/transsion/publish/ui/q;

    .line 74
    .line 75
    invoke-direct {v2, p1, p0}, Lcom/transsion/publish/ui/q;-><init>(Landroid/content/Context;Lcom/transsion/publish/ui/FilmReviewFragment;)V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    invoke-interface {v1, v0, p1, v2}, Lep/f;->a(Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    return-void
.end method

.method public startPhoto(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    const/16 v3, 0x9

    .line 25
    .line 26
    if-lt v1, v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sget v1, Lcom/transsion/publish/R$string;->add_img_max_tips:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    :cond_1
    const-string p1, ""

    .line 43
    .line 44
    :cond_2
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-array v3, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v1, v3, v2

    .line 53
    .line 54
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "format(...)"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-string v0, "image"

    .line 74
    .line 75
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->clickTrace(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->imageAdapter:Lcom/transsion/publish/adapter/g;

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move v1, v2

    .line 96
    :goto_1
    sub-int/2addr v3, v1

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public startVideo(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "context"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoAdapter:Lcom/transsion/publish/adapter/v;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/transsion/publish/adapter/v;->l()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v1

    .line 24
    :goto_0
    if-lt v2, v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    sget v2, Lcom/transsion/publish/R$string;->add_video_max_tips:I

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    :cond_1
    const-string p1, ""

    .line 41
    .line 42
    :cond_2
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-array v3, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v2, v3, v1

    .line 51
    .line 52
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "format(...)"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const-string v0, "vidio"

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->clickTrace(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->underOS33:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    new-instance v0, Landroid/content/Intent;

    .line 81
    .line 82
    const-class v1, Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 83
    .line 84
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    const/high16 p1, 0x10000000

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment;->videoSelectLauncher:Landroidx/activity/result/b;

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    sget-object v0, Lf/g$e;->a:Lf/g$e;

    .line 101
    .line 102
    const/16 v4, 0xe

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-static/range {v0 .. v5}, Landroidx/activity/result/f;->b(Lf/g$f;IZLf/g$b;ILjava/lang/Object;)Landroidx/activity/result/e;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    return-void
.end method

.method public startWork(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "choose a subject"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->clickTrace(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lgj/a;->a:Lgj/a$a;

    .line 12
    .line 13
    const-class v0, Lgj/b;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lgj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lgj/b;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "requireContext(...)"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lgj/b;->e(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
