.class public Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008v\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0016\u0018\u0000 \u0092\u00022\u00020\u0001:\u0004\u0093\u0002wzB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u001b\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010&\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u0006\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010)\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u0006\u00a2\u0006\u0004\u0008)\u0010\'J\u0015\u0010+\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u0006\u00a2\u0006\u0004\u0008+\u0010\'J\u0015\u0010,\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u0006\u00a2\u0006\u0004\u0008,\u0010\'J\u0017\u0010.\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008.\u0010\'J3\u00103\u001a\u00020\u000c2$\u00102\u001a \u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020100\u0012\n\u0012\u0008\u0012\u0004\u0012\u000201000/\u00a2\u0006\u0004\u00083\u00104J\u000f\u00106\u001a\u000205H\u0014\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u000c2\u0006\u00108\u001a\u000205H\u0014\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010?\u001a\u00020\u000c2\u0006\u0010>\u001a\u00020;\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008A\u0010BJ\u000f\u0010C\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008C\u0010BJ\u0015\u0010E\u001a\u00020\u000c2\u0006\u0010D\u001a\u00020\u001b\u00a2\u0006\u0004\u0008E\u0010$J\u000f\u0010F\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008F\u0010BJ\u000f\u0010G\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008G\u0010BJ\u000f\u0010H\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008H\u0010IJ\u0017\u0010K\u001a\u00020\u00062\u0006\u0010J\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008K\u0010LJ\u0017\u0010N\u001a\u00020\u000c2\u0006\u0010M\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008N\u0010!J\u0017\u0010P\u001a\u00020\u000c2\u0006\u0010O\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008P\u0010!J\'\u0010S\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008S\u0010TJ\u0017\u0010U\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008U\u0010\u0012J\u0017\u0010V\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008V\u0010\u0012J\u000f\u0010W\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u0017\u0010Z\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008Z\u0010LJ\u000f\u0010[\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008[\u0010XJ\u000f\u0010\\\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\\\u0010XJ\u000f\u0010]\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008]\u0010XJ\u0017\u0010^\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008^\u0010_J\u0017\u0010`\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008`\u0010_J\u0017\u0010a\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008a\u0010_J\u000f\u0010b\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008b\u0010BJ\u0017\u0010d\u001a\u00020\u000c2\u0006\u0010c\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008d\u0010!J\u0017\u0010e\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008e\u0010_J\u0017\u0010g\u001a\u00020\u001e2\u0006\u0010f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008g\u0010hJ\u0017\u0010j\u001a\u0002012\u0006\u0010i\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008j\u0010kJ\u0017\u0010l\u001a\u00020\u001e2\u0006\u0010i\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008l\u0010hJ\'\u0010o\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010m\u001a\u00020\u001e2\u0006\u0010n\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\u0019\u0010r\u001a\u00020\u001e2\u0008\u0008\u0002\u0010q\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008r\u0010hJ\u0019\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010sJ\u000f\u0010t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008t\u0010XJ\u000f\u0010u\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008u\u0010BJ\u000f\u0010v\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008v\u0010BR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u001c\u0010|\u001a\n y*\u0004\u0018\u000101018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R%\u0010\u0080\u0001\u001a\u00020\u001e2\u0006\u0010}\u001a\u00020\u001e8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008~\u0010N\u001a\u0004\u0008\u007f\u0010IR\'\u0010\u0083\u0001\u001a\u00020\u001e2\u0006\u0010}\u001a\u00020\u001e8\u0006@BX\u0086\u000e\u00a2\u0006\u000e\n\u0005\u0008\u0081\u0001\u0010N\u001a\u0005\u0008\u0082\u0001\u0010IR\'\u0010\u0086\u0001\u001a\u00020\u001e2\u0006\u0010}\u001a\u00020\u001e8\u0006@BX\u0086\u000e\u00a2\u0006\u000e\n\u0005\u0008\u0084\u0001\u0010N\u001a\u0005\u0008\u0085\u0001\u0010IR&\u0010\u008a\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008g\u0010\u0087\u0001\u001a\u0005\u0008\u0088\u0001\u0010X\"\u0005\u0008\u0089\u0001\u0010\'R\u0018\u0010\u008c\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0014\u0010\u008b\u0001R\u0019\u0010\u008e\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u0087\u0001R\u0018\u0010\u008f\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008H\u0010\u0087\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008r\u0010\u0087\u0001R\u0019\u0010\u0092\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0087\u0001R\u0018\u0010\u0093\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008b\u0010\u0087\u0001R\u0018\u0010\u0094\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008V\u0010\u0087\u0001R\u0018\u0010\u0095\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008S\u0010\u0087\u0001R\u0018\u0010\u0096\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008U\u0010\u0087\u0001R\u0018\u0010\u0097\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008j\u0010\u0087\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008l\u0010\u0087\u0001R\u0018\u0010\u0099\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008Z\u0010\u0087\u0001R\u0018\u0010\u009a\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008K\u0010\u0087\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008F\u0010\u0087\u0001R\u0018\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008G\u0010\u0087\u0001R\u0018\u0010\u009d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u0087\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u0087\u0001R\u0018\u0010\u00a0\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008a\u0010\u0087\u0001R\u0018\u0010\u00a1\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008e\u0010\u0087\u0001R\u0018\u0010\u00a2\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008^\u0010\u008b\u0001R\u0017\u0010\u00a3\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010NR\u0017\u0010\u00a4\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010NR\u0018\u0010\u00a5\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008o\u0010\u0087\u0001R\u0017\u0010\u00a6\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010NR\u0017\u0010\u00a7\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010NR\u0018\u0010\u00a9\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a8\u0001\u0010NR\u0017\u0010\u00aa\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010NR\u0019\u0010\u00ab\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u008b\u0001R\u0016\u0010\u00ac\u0001\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008d\u0010\u0087\u0001R\u001f\u0010\u00af\u0001\u001a\u0008\u0012\u0004\u0012\u000201008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u0018\u0010\u00b1\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b0\u0001\u0010NR+\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u00b2\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008t\u0010\u00b3\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001\"\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R\u0018\u0010\u00ba\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b9\u0001\u0010NR\u0018\u0010\u00bc\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00bb\u0001\u0010NR\u0018\u0010\u00c0\u0001\u001a\u00030\u00bd\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\u0018\u0010\u00c2\u0001\u001a\u00030\u00bd\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00bf\u0001R\u0018\u0010\u00c6\u0001\u001a\u00030\u00c3\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u0018\u0010\u00c8\u0001\u001a\u00030\u00c3\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00c5\u0001R\u001b\u0010\u00cb\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R\u0019\u0010\u00cd\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0001\u0010\u0087\u0001R\u0019\u0010\u00cf\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u0087\u0001R\u0019\u0010\u00d1\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0001\u0010\u0087\u0001R\u0019\u0010\u00d3\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u0087\u0001R\u0019\u0010\u00d5\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u008b\u0001R\u0019\u0010\u00d7\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d6\u0001\u0010\u008b\u0001R\u001c\u0010\u00db\u0001\u001a\u0005\u0018\u00010\u00d8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u00da\u0001R\u001c\u0010\u00df\u0001\u001a\u0005\u0018\u00010\u00dc\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u00de\u0001R\u0018\u0010\u00e1\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e0\u0001\u0010NR\u0018\u0010\u00e3\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e2\u0001\u0010NR\u0018\u0010\u00e5\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e4\u0001\u0010NR\u0018\u0010\u00e7\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e6\u0001\u0010NR\u0018\u0010\u00e9\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e8\u0001\u0010NR\u0018\u0010\u00eb\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ea\u0001\u0010NR\u0018\u0010\u00ed\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ec\u0001\u0010NR\u0019\u0010\u00ef\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u008b\u0001R\u0018\u0010\u00f3\u0001\u001a\u00030\u00f0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f1\u0001\u0010\u00f2\u0001R\u0019\u0010\u00f5\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f4\u0001\u0010\u008b\u0001R(\u0010\u00fa\u0001\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00f6\u0001\u0010\u008b\u0001\u001a\u0006\u0008\u00f7\u0001\u0010\u00f8\u0001\"\u0005\u0008\u00f9\u0001\u0010$R\u001c\u0010\u00fe\u0001\u001a\u0005\u0018\u00010\u00fb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00fd\u0001R\u0019\u0010\u0080\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ff\u0001\u0010\u0087\u0001R\u0019\u0010\u0082\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0002\u0010\u0087\u0001R\u0019\u0010\u0084\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0002\u0010\u0087\u0001R\u0018\u0010\u0088\u0002\u001a\u00030\u0085\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0002\u0010\u0087\u0002R\u0018\u0010\u008a\u0002\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0002\u0010NR\u001c\u0010\u008c\u0002\u001a\u0005\u0018\u00010\u00d8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0002\u0010\u00da\u0001R\u001c\u0010\u008e\u0002\u001a\u0005\u0018\u00010\u00dc\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0002\u0010\u00de\u0001R\u0018\u0010\u0090\u0002\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008f\u0002\u0010NR\u0012\u0010\u001f\u001a\u00020\u00068F\u00a2\u0006\u0007\u001a\u0005\u0008\u0091\u0002\u0010X\u00a8\u0006\u0094\u0002"
    }
    d2 = {
        "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "mContext",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "Lzfb;",
        "onMeasure",
        "(II)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "",
        "progress",
        "setProgress",
        "(F)V",
        "force",
        "setForceHios",
        "(Z)V",
        "trackColor",
        "setTrackColor",
        "(I)V",
        "secondTrackColor",
        "setSecondTrackColor",
        "thumbColor",
        "setThumbOutColor",
        "setThumbInsideColor",
        "thumbInsideUnAbleColorHios",
        "setThumbInsideUnAbleColorHios",
        "Lkotlin/Function2;",
        "Landroid/util/SparseArray;",
        "",
        "onCustomize",
        "setCustomSectionTextArray",
        "(Ls74;)V",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "state",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;",
        "getConfigBuilder",
        "()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;",
        "builder",
        "config",
        "(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;)V",
        "onDetachedFromWindow",
        "()V",
        "onAttachedToWindow",
        "vibrateAble",
        "setVibrateAble",
        "u",
        "v",
        "j",
        "()F",
        "height",
        "t",
        "(I)I",
        "toAlpha",
        "F",
        "toScale",
        "H",
        "centerX",
        "centerY",
        "o",
        "(Landroid/graphics/Canvas;FF)V",
        "p",
        "n",
        "getDotColor",
        "()I",
        "thumbInsideColor",
        "s",
        "getThumbInsideColor",
        "getThumbOutColor",
        "getSecondTrackColor",
        "A",
        "(Landroid/view/MotionEvent;)V",
        "B",
        "y",
        "m",
        "toCenterX",
        "J",
        "z",
        "touchedX",
        "g",
        "(F)F",
        "value",
        "q",
        "(F)Ljava/lang/String;",
        "r",
        "leftBase",
        "rightBase",
        "D",
        "(FFF)F",
        "positionX",
        "k",
        "(F)I",
        "M",
        "E",
        "C",
        "b",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "c",
        "Ljava/lang/String;",
        "TAG",
        "<set-?>",
        "d",
        "getMin",
        "min",
        "e",
        "getMax",
        "max",
        "f",
        "getProgressFloat",
        "progressFloat",
        "I",
        "getMFinalProgress",
        "setMFinalProgress",
        "mFinalProgress",
        "Z",
        "isFloatType",
        "i",
        "mTrackSize",
        "mSecondTrackSize",
        "mSectionTextSize",
        "l",
        "mSectionCount",
        "mThumbInWidth",
        "mThumbOutWidth",
        "mTextTopMargin",
        "mTextBottomMargin",
        "mDotsSize",
        "mTrackColor",
        "mSecondTrackColor",
        "mThumbOutColor",
        "mThumbInsideColor",
        "mDotsColor",
        "mDotsSelectedColor",
        "x",
        "mSectionTextColor",
        "mSectionTextInterval",
        "mProcessMarginTopBottow",
        "mDisplayCharacters",
        "mDelta",
        "mSectionValue",
        "mCurrentSection",
        "mThumbCenterX",
        "mThumbCenterY",
        "G",
        "mTrackLength",
        "mSectionOffset",
        "isThumbOnDragging",
        "mTextSpace",
        "K",
        "Landroid/util/SparseArray;",
        "mSectionTextArray",
        "L",
        "mPreThumbCenterX",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;",
        "getOnProgressChangedListener",
        "()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;",
        "setOnProgressChangedListener",
        "(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;)V",
        "onProgressChangedListener",
        "N",
        "mLeft",
        "O",
        "mRight",
        "Landroid/graphics/Paint;",
        "P",
        "Landroid/graphics/Paint;",
        "mPaint",
        "Q",
        "mCirclePaint",
        "Landroid/graphics/Rect;",
        "R",
        "Landroid/graphics/Rect;",
        "mRectText",
        "S",
        "mRectHeightText",
        "T",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;",
        "mOSSectionSeekBarBuilder",
        "U",
        "mSecondTrackColorDisable",
        "V",
        "mThumbOutColorDisable",
        "W",
        "mThumbInsideColorDisable",
        "a0",
        "mDotsSelectedColorDisable",
        "b0",
        "isTouchOnThumb",
        "c0",
        "isCenterXAnimation",
        "Landroid/animation/ValueAnimator;",
        "d0",
        "Landroid/animation/ValueAnimator;",
        "mThumbIntervalAnimator",
        "Ljv9;",
        "e0",
        "Ljv9;",
        "mThumbIntervalSpringAnimation",
        "f0",
        "mCurrentSourceTrackWidth",
        "g0",
        "mCurrentScaleFactor",
        "h0",
        "mFromScaleFactor",
        "i0",
        "mTrackWidthMax",
        "j0",
        "mCurrentPointerPosition",
        "k0",
        "mLastPointerPosition",
        "l0",
        "mTouchDownPosition",
        "m0",
        "isTouchMove",
        "Ljava/lang/Runnable;",
        "n0",
        "Ljava/lang/Runnable;",
        "mVibrateRunnable",
        "o0",
        "mVibrateAble",
        "p0",
        "isForceHios$widgetsLib_release",
        "()Z",
        "setForceHios$widgetsLib_release",
        "isForceHios",
        "La67;",
        "q0",
        "La67;",
        "mLiquidDrawable",
        "r0",
        "mLiquidWidth",
        "s0",
        "mLiquidHeight",
        "t0",
        "mLiquidRadius",
        "Landroid/graphics/drawable/GradientDrawable;",
        "u0",
        "Landroid/graphics/drawable/GradientDrawable;",
        "mWhiteBackDrawable",
        "v0",
        "mCurrentAlpha",
        "w0",
        "mAlphaAnimator",
        "x0",
        "mSpringAnimation",
        "y0",
        "mThumbHalfWidth",
        "getProgress",
        "Companion",
        "a",
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
.field public static final A0:I

.field public static final B0:I

.field public static final Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

.field public static final z0:I


# instance fields
.field public A:Z

.field public B:F

.field public C:F

.field public D:I

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:Z

.field public final J:I

.field public K:Landroid/util/SparseArray;

.field public L:F

.field public M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

.field public N:F

.field public O:F

.field public final P:Landroid/graphics/Paint;

.field public final Q:Landroid/graphics/Paint;

.field public final R:Landroid/graphics/Rect;

.field public final S:Landroid/graphics/Rect;

.field public T:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public final b:Landroid/content/Context;

.field public b0:Z

.field public final c:Ljava/lang/String;

.field public c0:Z

.field public d:F

.field public d0:Landroid/animation/ValueAnimator;

.field public e:F

.field public e0:Ljv9;

.field public f:F

.field public f0:F

.field public g:I

.field public g0:F

.field public h:Z

.field public h0:F

.field public i:I

.field public i0:F

.field public j:I

.field public j0:F

.field public k:I

.field public k0:F

.field public l:I

.field public l0:F

.field public m:I

.field public m0:Z

.field public n:I

.field public final n0:Ljava/lang/Runnable;

.field public o:I

.field public o0:Z

.field public p:I

.field public p0:Z

.field public q:I

.field public q0:La67;

.field public r:I

.field public r0:I

.field public s:I

.field public s0:I

.field public t:I

.field public t0:I

.field public u:I

.field public final u0:Landroid/graphics/drawable/GradientDrawable;

.field public v:I

.field public v0:F

.field public w:I

.field public w0:Landroid/animation/ValueAnimator;

.field public x:I

.field public x0:Ljv9;

.field public y:I

.field public y0:F

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/16 v0, 0xfa

    sput v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->z0:I

    const/16 v1, 0xc8

    sput v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A0:I

    sput v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "mContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "mContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    .line 6
    const-class v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c:Ljava/lang/String;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g0:F

    .line 9
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->h0:F

    .line 10
    new-instance v0, Lna7;

    invoke-direct {v0, p0}, Lna7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n0:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o0:Z

    .line 12
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_thumb_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r0:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s0:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_liquid_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t0:I

    .line 16
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v3, -0x1

    .line 18
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 19
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u0:Landroid/graphics/drawable/GradientDrawable;

    .line 20
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->a()V

    .line 21
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "mContext.obtainStyledAtt\u2026Seekbar, defStyleAttr, 0)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    .line 23
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarMax:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    .line 24
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarProgress:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    const/4 p2, 0x0

    .line 25
    invoke-static {p0, p3, v0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    .line 26
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarSectionCount:I

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    .line 27
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarDisplayCharacters:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 28
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A:Z

    .line 29
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 34
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 38
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->R:Landroid/graphics/Rect;

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->S:Landroid/graphics/Rect;

    .line 41
    sget-object p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->J:I

    .line 42
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final G(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final I(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;FF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final K(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;FF)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p2, p3, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {p1, p0, p2, v0, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->b(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final L(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;ZFF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c0:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->L(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;ZFF)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c0:Z

    return-void
.end method

.method public static final synthetic access$thumbOutColor(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M()I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->w(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;FF)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Lf43;FF)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->G(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getDotColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->w:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->a0:I

    :goto_0
    return p0
.end method

.method private final getSecondTrackColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->U:I

    :goto_0
    return p0
.end method

.method private final getThumbInsideColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->W:I

    :goto_0
    return p0
.end method

.method private final getThumbOutColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->V:I

    :goto_0
    return p0
.end method

.method public static synthetic i(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->h(F)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: calculateCurrentSection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic l(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k(F)F

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: calculateProgress"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final w(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    invoke-static {p0}, Lvob;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static final x(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l0:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget-object v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->h(F)I

    move-result p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b0:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H(F)V

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->F(F)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k(F)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m()V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->J(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz p1, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->C()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m0:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b0:Z

    if-nez p1, :cond_3

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H(F)V

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->F(F)V

    :cond_3
    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j0:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k0:F

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m0:Z

    :cond_4
    return-void
.end method

.method public final B(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->L:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->L:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->b(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->C()V

    :goto_0
    return-void
.end method

.method public final C()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o0:Z

    if-nez v0, :cond_0

    const-string p0, "vibrate Able is false"

    invoke-static {p0}, Lbq5;->o(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v0, Lolb;->Z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lolb;->J:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final D(FFF)F
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-static {}, Lolb;->l0()Z

    move-result p0

    if-eqz p0, :cond_0

    move p2, p3

    :cond_0
    return p2

    :cond_1
    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->G:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    div-float/2addr p2, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    sub-float/2addr p3, p2

    goto :goto_0

    :cond_2
    iget p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->G:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    div-float/2addr p3, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    sub-float/2addr p1, p0

    mul-float/2addr p3, p1

    add-float/2addr p3, p2

    :goto_0
    return p3
.end method

.method public final E()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final F(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->w0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v0:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Loa7;

    invoke-direct {v0, p0}, Loa7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->w0:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final H(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-nez v0, :cond_1

    new-instance v0, Lfz3;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g0:F

    invoke-direct {v0, v1}, Lfz3;-><init>(F)V

    new-instance v1, Ljv9;

    invoke-direct {v1, v0}, Ljv9;-><init>(Lfz3;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    new-instance v0, Lkv9;

    invoke-direct {v0}, Lkv9;-><init>()V

    invoke-virtual {v1, v0}, Ljv9;->z(Lkv9;)Ljv9;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Lf43;->k(F)Lf43;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-eqz v0, :cond_1

    new-instance v1, Lja7;

    invoke-direct {v1, p0}, Lja7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {v0, v1}, Lf43;->b(Lf43$r;)Lf43;

    move-result-object v0

    check-cast v0, Ljv9;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g0:F

    invoke-virtual {v0, v1}, Lf43;->m(F)Lf43;

    move-result-object v0

    check-cast v0, Ljv9;

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljv9;->v()Lkv9;

    move-result-object v0

    if-eqz v0, :cond_4

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Lkv9;->i(F)Lkv9;

    const v1, 0x3f4a3d71    # 0.79f

    invoke-virtual {v0, v1}, Lkv9;->g(F)Lkv9;

    invoke-virtual {v0, p1}, Lkv9;->h(F)Lkv9;

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljv9;->p()V

    :cond_5
    return-void
.end method

.method public final J(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-nez v0, :cond_2

    new-instance v0, Lfz3;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    invoke-direct {v0, v1}, Lfz3;-><init>(F)V

    new-instance v1, Ljv9;

    invoke-direct {v1, v0}, Ljv9;-><init>(Lfz3;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    new-instance v0, Lkv9;

    invoke-direct {v0}, Lkv9;-><init>()V

    invoke-virtual {v1, v0}, Ljv9;->z(Lkv9;)Ljv9;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Lf43;->k(F)Lf43;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz v0, :cond_1

    new-instance v1, Lla7;

    invoke-direct {v1, p0}, Lla7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {v0, v1}, Lf43;->b(Lf43$r;)Lf43;

    move-result-object v0

    check-cast v0, Ljv9;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz v0, :cond_2

    new-instance v1, Lma7;

    invoke-direct {v1, p0}, Lma7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {v0, v1}, Lf43;->a(Lf43$q;)Lf43;

    move-result-object v0

    check-cast v0, Ljv9;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c0:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    invoke-virtual {v0, v1}, Lf43;->m(F)Lf43;

    move-result-object v0

    check-cast v0, Ljv9;

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljv9;->v()Lkv9;

    move-result-object v0

    if-eqz v0, :cond_5

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Lkv9;->i(F)Lkv9;

    const v1, 0x3f4a3d71    # 0.79f

    invoke-virtual {v0, v1}, Lkv9;->g(F)Lkv9;

    invoke-virtual {v0, p1}, Lkv9;->h(F)Lkv9;

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljv9;->p()V

    :cond_6
    return-void
.end method

.method public final M()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final config(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;)V
    .locals 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getMin()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getMax()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getFloatType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->h:Z

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getTrackSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getTrackSize()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f0:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getTrackSizeMax()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i0:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getSecondTrackSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getThumbInWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getThumbOutWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getDotsSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getTextTopMargin()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getTextBottomMargin()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getProcessMarginTopBottow()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->z:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getSecondTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getThumbOutColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getThumbInsideColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getDotsColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getDotsSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->w:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getSectionCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getSectionTextSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getSectionTextColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getSectionTextInterval()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getDisplayCharacters()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->b(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->T:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getSecondTrackColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->U:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getThumbOutColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->V:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getThumbInsideColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->W:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->getDotsSelectedColorDisable()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->a0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final g(F)F
    .locals 4

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    if-gt v1, v2, :cond_3

    int-to-float v0, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H:F

    mul-float/2addr v0, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    add-float/2addr v0, v3

    cmpg-float v3, v0, p1

    if-gtz v3, :cond_2

    sub-float v3, p1, v0

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sub-float/2addr p1, v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    add-float v0, p1, p0

    :goto_2
    return v0
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->T:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->T:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->T:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getMFinalProgress()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g:I

    return p0
.end method

.method public final getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    return p0
.end method

.method public final getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    return p0
.end method

.method public final getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    return-object p0
.end method

.method public final getProgress()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final getProgressFloat()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    return p0
.end method

.method public final h(F)I
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final isForceHios$widgetsLib_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    return p0
.end method

.method public final j()F
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->S:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->S:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final k(F)F
    .locals 1

    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->G:F

    div-float/2addr v0, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    add-float/2addr v0, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->G:F

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    add-float v0, p1, p0

    :goto_0
    return v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c0:Z

    return-void
.end method

.method public final n(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    iget v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->F:F

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v9, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    iget v10, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v11, v1, v2

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c0:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D(FFF)F

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    :cond_0
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f0:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v8

    move v4, v10

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getSecondTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f0:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {}, Lolb;->l0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v8

    move v4, v10

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v8

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    const/4 v2, 0x0

    const/4 v9, 0x2

    if-ltz v1, :cond_9

    move v3, v2

    :goto_1
    invoke-static {}, Lolb;->l0()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    int-to-float v5, v3

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    goto :goto_2

    :cond_2
    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    int-to-float v5, v3

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    :goto_2
    invoke-static {}, Lolb;->l0()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    div-int/2addr v6, v9

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    goto :goto_3

    :cond_3
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_4

    :goto_3
    iget-object v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_4
    iget-object v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getDotColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v8, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v10, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lolb;->l0()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    sub-int/2addr v5, v3

    goto :goto_5

    :cond_5
    move v5, v3

    :goto_5
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-boolean v12, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A:Z

    if-eqz v12, :cond_8

    if-nez v5, :cond_6

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f0:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v4, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_6

    :cond_6
    iget v12, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    if-ne v5, v12, :cond_7

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f0:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v4, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_6

    :cond_7
    iget-object v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v4, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    :goto_6
    if-eq v3, v1, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b0:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c0:Z

    if-eqz v1, :cond_b

    :cond_a
    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    invoke-virtual {p0, v7, v1, v8}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o(Landroid/graphics/Canvas;FF)V

    :cond_b
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbOutColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v0:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/16 v5, 0xff

    int-to-float v6, v5

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v3, v2, v5}, Lwn8;->k(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r0:I

    int-to-float v10, v1

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s0:I

    int-to-float v11, v1

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g0:F

    sub-float v12, v4, v2

    sub-float v3, v10, v1

    mul-float/2addr v3, v12

    add-float/2addr v3, v1

    sub-float v4, v11, v1

    mul-float/2addr v4, v12

    add-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    int-to-float v4, v9

    div-float/2addr v3, v4

    sub-float v5, v2, v3

    div-float/2addr v1, v4

    sub-float v4, v8, v1

    add-float v6, v2, v3

    add-float v13, v8, v1

    iget-object v14, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v5

    move v3, v4

    move v4, v6

    move v5, v13

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_c
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbInsideColor()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m:I

    int-to-float v2, v1

    int-to-float v3, v1

    sub-float/2addr v10, v3

    mul-float/2addr v10, v12

    add-float/2addr v2, v10

    int-to-float v3, v1

    int-to-float v1, v1

    sub-float/2addr v11, v1

    mul-float/2addr v11, v12

    add-float/2addr v3, v11

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    int-to-float v4, v9

    div-float/2addr v2, v4

    sub-float v5, v1, v2

    div-float/2addr v3, v4

    sub-float v4, v8, v3

    add-float v6, v1, v2

    add-float/2addr v8, v3

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v5

    move v2, v4

    move v3, v6

    move v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final o(Landroid/graphics/Canvas;FF)V
    .locals 10

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r0:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s0:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y0:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g0:F

    sub-float/2addr v4, v5

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q0:La67;

    const/4 v6, 0x1

    if-nez v5, :cond_0

    new-instance v5, La67;

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t0:I

    int-to-float v8, v8

    invoke-direct {v5, v7, v8}, La67;-><init>(Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q0:La67;

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    invoke-static {v7, v6}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, La67;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q0:La67;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, La67;->h(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/widgetslib/R$color;->os_liquid_thumb_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u0:Landroid/graphics/drawable/GradientDrawable;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t0:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lolb;->e0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_0
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v0:F

    const/16 v7, 0xff

    int-to-float v8, v7

    mul-float/2addr v5, v8

    float-to-int v5, v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v7}, Lwn8;->k(III)I

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u0:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v9, v5

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-static {v4, v8, v7}, Lwn8;->k(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u0:Landroid/graphics/drawable/GradientDrawable;

    float-to-int v4, v0

    float-to-int v7, v1

    invoke-virtual {v2, v8, v8, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float v2, v0, v3

    sub-float/2addr p2, v2

    div-float v2, v1, v3

    sub-float/2addr p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q0:La67;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v5}, La67;->setAlpha(I)V

    :cond_3
    const p2, 0x4379e667    # 249.90001f

    cmpl-float p2, v9, p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q0:La67;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v6}, La67;->setShowOutline(Z)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q0:La67;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v8}, La67;->setShowOutline(Z)V

    :cond_5
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1e

    if-lt p2, p3, :cond_6

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q0:La67;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1, v0, v1, v8}, La67;->c(Landroid/graphics/Canvas;FFZ)V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g0:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v0:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->c0:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D(FFF)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->w0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d0:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->w0:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x0:Ljv9;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e0:Ljv9;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lolb;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j()F

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->z:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o:I

    add-int/2addr v1, v2

    float-to-int v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p:I

    add-int/2addr v1, v2

    add-int/2addr p2, v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t(I)I

    move-result p2

    sget-object v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A:Z

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->F:F

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y0:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, p1

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->R:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-int v0, v0

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->G:F

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H:F

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "save_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "progress"

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lka7;

    invoke-direct {p1, p0}, Lka7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lolb;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    sget-boolean v0, Lolb;->c:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->b(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->C()V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->h(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g(F)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k(F)F

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    if-eq v4, v0, :cond_8

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->C()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {v0, p0, v4, v5, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->F(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m()V

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->J(F)V

    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->a(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m0:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lolb;->c:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->z(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_b
    :goto_3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y(Landroid/view/MotionEvent;)V

    :cond_c
    :goto_4
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    move v1, v2

    :cond_e
    return v1
.end method

.method public final p(Landroid/graphics/Canvas;)V
    .locals 11

    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->F:F

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->N:F

    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->O:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->R:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v9, v0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->I:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-virtual {p0, v0, v7, v8}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D(FFF)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getSecondTrackColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v3, v8

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v2, v6

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v2, v6

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v3, v8

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    const/high16 v1, 0x3f000000    # 0.5f

    if-ltz v0, :cond_9

    const/4 v2, 0x0

    :goto_2
    invoke-static {}, Lolb;->l0()Z

    move-result v3

    if-eqz v3, :cond_3

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H:F

    mul-float/2addr v3, v4

    sub-float v3, v8, v3

    goto :goto_3

    :cond_3
    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    :goto_3
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    if-le v2, v4, :cond_4

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getDotColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->x:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lolb;->l0()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    sub-int/2addr v4, v2

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-boolean v10, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A:Z

    if-eqz v10, :cond_8

    if-nez v4, :cond_6

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v3, v7, v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_6

    :cond_6
    iget v10, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    if-ne v4, v10, :cond_7

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v8

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_6

    :cond_7
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    :goto_6
    if-eq v2, v0, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbOutColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbInsideColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final q(F)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r(F)F
    .locals 1

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public final s(I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v0:F

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    float-to-int p0, v0

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lwn8;->k(III)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public final setCustomSectionTextArray(Ls74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls74;",
            ")V"
        }
    .end annotation

    const-string v0, "onCustomize"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    invoke-interface {p1, v0, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-eq v0, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setForceHios(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setForceHios$widgetsLib_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    return-void
.end method

.method public final setMFinalProgress(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g:I

    return-void
.end method

.method public final setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    return-void
.end method

.method public final setProgress(F)V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->b(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->s:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setThumbInsideColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->u:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setThumbInsideUnAbleColorHios(I)V
    .locals 0

    return-void
.end method

.method public final setThumbOutColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->t:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->r:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setVibrateAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->o0:Z

    return-void
.end method

.method public final t(I)I
    .locals 2

    int-to-double v0, p1

    sget-boolean p1, Lolb;->c:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->p0:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    const/16 p1, 0x14

    invoke-static {p0, p1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b:Landroid/content/Context;

    const/16 p1, 0x1e

    invoke-static {p0, p1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    :goto_1
    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final u()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    :cond_3
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i:I

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j:I

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->j:I

    if-gt v0, v1, :cond_5

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m:I

    :cond_5
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m:I

    if-ge v0, v1, :cond_6

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    if-gtz v0, :cond_7

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    :cond_7
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->e:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->B:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->C:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_8

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->h:Z

    :cond_8
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y:I

    if-ge v0, v1, :cond_9

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y:I

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->v()V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    return-void
.end method

.method public final v()V
    .locals 7

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->A:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l:I

    if-ltz v0, :cond_4

    :goto_1
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->d:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->C:F

    int-to-float v5, v1

    mul-float v6, v4, v5

    add-float/2addr v6, v3

    if-eqz v2, :cond_1

    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->y:I

    rem-int v6, v1, v6

    if-nez v6, :cond_3

    mul-float/2addr v4, v5

    add-float v6, v3, v4

    :cond_1
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->K:Landroid/util/SparseArray;

    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->h:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->q(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    float-to-int v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    if-eq v1, v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final y(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->k0:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->n:I

    int-to-float p1, p1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b0:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->m()V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->b0:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->H(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->F(F)V

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-static {p0, v1, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->c(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    :cond_2
    return-void
.end method

.method public final z(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->g(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->L:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->E:F

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->l(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f:F

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->i(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->D:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->M:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;->c(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    :cond_0
    return-void
.end method
