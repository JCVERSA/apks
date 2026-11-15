.class public Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u00086\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008O\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0016\u0018\u0000 \u0091\u00032\u00020\u0001:\u0006\u0092\u0003\u00c9\u0001\u00cc\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ7\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ/\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010)\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*J\u0015\u0010,\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000f\u00a2\u0006\u0004\u0008,\u0010-J\u0011\u0010/\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0019\u00102\u001a\u00020\u000c2\u0008\u00101\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0015\u00105\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u0006\u00a2\u0006\u0004\u00085\u00106J\u0015\u00108\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\u0006\u00a2\u0006\u0004\u00088\u00106J\u0015\u0010;\u001a\u00020\u000c2\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008;\u0010<J\u0015\u0010?\u001a\u00020\u000c2\u0006\u0010>\u001a\u00020=\u00a2\u0006\u0004\u0008?\u0010@J\u0015\u0010B\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020=\u00a2\u0006\u0004\u0008B\u0010@J\u0015\u0010D\u001a\u00020\u000c2\u0006\u0010C\u001a\u00020\u0006\u00a2\u0006\u0004\u0008D\u00106J\u0011\u0010F\u001a\u0004\u0018\u00010EH\u0014\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010I\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020EH\u0014\u00a2\u0006\u0004\u0008I\u0010JJ\u0015\u0010L\u001a\u00020\u000c2\u0006\u0010K\u001a\u00020\u0006\u00a2\u0006\u0004\u0008L\u00106J\u0015\u0010M\u001a\u00020\u000c2\u0006\u0010K\u001a\u00020\u0006\u00a2\u0006\u0004\u0008M\u00106J\u0015\u0010P\u001a\u00020\u000c2\u0006\u0010O\u001a\u00020N\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010S\u001a\u0004\u0018\u00010R\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010U\u001a\u0004\u0018\u00010R\u00a2\u0006\u0004\u0008U\u0010TJ\u0011\u0010W\u001a\u0004\u0018\u00010VH\u0007\u00a2\u0006\u0004\u0008W\u0010XJ\u0019\u0010Z\u001a\u00020\u000c2\u0008\u0010Y\u001a\u0004\u0018\u00010VH\u0007\u00a2\u0006\u0004\u0008Z\u0010[J\r\u0010\\\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\\\u0010\"J\u0015\u0010^\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000f\u00a2\u0006\u0004\u0008^\u0010-J\u000f\u0010_\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008_\u0010`J\u000f\u0010a\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008a\u0010`J\u000f\u0010b\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008b\u0010`J\u0017\u0010d\u001a\u00020\u00062\u0006\u0010c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008d\u0010eJ\u000f\u0010f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008f\u0010`J\u0017\u0010g\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008g\u0010\u001aJ\'\u0010j\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010h\u001a\u00020\'2\u0006\u0010i\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008j\u0010kJ\'\u0010\u001b\u001a\u00020\u000c2\u0006\u0010l\u001a\u00020\'2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010m\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010nJ\u000f\u0010o\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010r\u001a\u00020\u00062\u0006\u0010q\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008r\u0010eJ\u0017\u0010s\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008s\u0010\u001aJ\'\u0010t\u001a\u00020\u000c2\u0006\u0010l\u001a\u00020\'2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010m\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008t\u0010nJ\u000f\u0010u\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008u\u0010pJ\u000f\u0010v\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008v\u0010pJ\u000f\u0010w\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008w\u0010pJ\u0017\u0010x\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008x\u0010yJ\u0017\u0010z\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008z\u0010yJ\u0017\u0010|\u001a\u00020\u000c2\u0006\u0010{\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008|\u0010*J\u0017\u0010}\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008}\u0010yJ\u0017\u0010~\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008~\u0010yJ#\u0010\u0081\u0001\u001a\u00020\u000c2\u0006\u0010\u007f\u001a\u00020\'2\u0007\u0010\u0080\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J#\u0010\u0083\u0001\u001a\u00020\u000c2\u0006\u0010\u007f\u001a\u00020\'2\u0007\u0010\u0080\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0082\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u000fH\u0002\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\"J$\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u0085\u0001\u001a\u00020\'2\u0007\u0010\u0086\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0082\u0001J$\u0010\u008a\u0001\u001a\u00020\u000c2\u0007\u0010\u0088\u0001\u001a\u00020\'2\u0007\u0010\u0089\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u0082\u0001J.\u0010\u008f\u0001\u001a\u00020\u000c2\u0007\u0010\u008b\u0001\u001a\u00020\'2\u0007\u0010\u008c\u0001\u001a\u00020\'2\u0008\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0002\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J9\u0010\u0092\u0001\u001a\u00020\u000c2\u0007\u0010\u008b\u0001\u001a\u00020\'2\u0007\u0010\u008c\u0001\u001a\u00020\'2\u0008\u0010\u008e\u0001\u001a\u00030\u008d\u00012\t\u0008\u0002\u0010\u0091\u0001\u001a\u00020\u000fH\u0002\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\u001a\u0010\u0094\u0001\u001a\u00020\u00062\u0006\u0010{\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001J%\u0010\u0097\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0088\u0001\u001a\u00020\'2\u0007\u0010\u0089\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0098\u0001J%\u0010\u0099\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0085\u0001\u001a\u00020\'2\u0007\u0010\u0086\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u0098\u0001J\u001a\u0010\u009b\u0001\u001a\u00020\u000c2\u0007\u0010\u009a\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0005\u0008\u009b\u0001\u0010*J\u001a\u0010\u009d\u0001\u001a\u00020\u000c2\u0007\u0010\u009c\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0005\u0008\u009d\u0001\u0010*J\u0013\u0010\u009e\u0001\u001a\u00030\u0096\u0001H\u0002\u00a2\u0006\u0006\u0008\u009e\u0001\u0010\u009f\u0001J\u0013\u0010\u00a0\u0001\u001a\u00030\u0096\u0001H\u0002\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u009f\u0001J\u001b\u0010\u00a2\u0001\u001a\u00020\'2\u0007\u0010\u00a1\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001J%\u0010\u00a5\u0001\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'2\t\u0008\u0002\u0010\u00a4\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001J\u001b\u0010\u00a8\u0001\u001a\u00020\'2\u0007\u0010\u00a7\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a3\u0001J\u001a\u0010\u00a9\u0001\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00a9\u0001\u0010\u00a3\u0001J\u0012\u0010\u00aa\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001J\u0012\u0010\u00ac\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ab\u0001J\u0019\u0010\u00ad\u0001\u001a\u00020\u000c2\u0006\u0010{\u001a\u00020\'H\u0002\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010*J\u0011\u0010\u00ae\u0001\u001a\u00020\u000fH\u0002\u00a2\u0006\u0005\u0008\u00ae\u0001\u0010\"J\u001a\u0010\u00b0\u0001\u001a\u00020\u000c2\u0007\u0010\u00af\u0001\u001a\u00020\u000fH\u0002\u00a2\u0006\u0005\u0008\u00b0\u0001\u0010-J\u0011\u0010\u00b1\u0001\u001a\u00020\u000cH\u0002\u00a2\u0006\u0005\u0008\u00b1\u0001\u0010`J-\u0010\u00b5\u0001\u001a\u00020\u00062\u0007\u0010\u00b2\u0001\u001a\u00020\u00062\u0007\u0010\u00b3\u0001\u001a\u00020\u00062\u0007\u0010\u00b4\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001J\u001b\u0010\u00b8\u0001\u001a\u00020\u00062\u0007\u0010\u00b7\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00b8\u0001\u0010\u0095\u0001J#\u0010\u00b9\u0001\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=2\u0007\u0010\u00b7\u0001\u001a\u00020\'H\u0002\u00a2\u0006\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001J%\u0010\u00bc\u0001\u001a\u00020\u000c2\u0007\u0010\u00bb\u0001\u001a\u00020\u00062\u0008\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0002\u00a2\u0006\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001J\u0011\u0010\u00be\u0001\u001a\u00020\u000cH\u0002\u00a2\u0006\u0005\u0008\u00be\u0001\u0010`J\u0019\u0010\u00bf\u0001\u001a\u00020\u000c2\u0006\u0010O\u001a\u00020NH\u0002\u00a2\u0006\u0005\u0008\u00bf\u0001\u0010QJ\u0011\u0010\u00c0\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00c0\u0001\u0010pJ\u001d\u0010\u00c2\u0001\u001a\u00020R2\t\u0008\u0001\u0010\u00c1\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001J\u0013\u0010\u00c5\u0001\u001a\u00030\u00c4\u0001H\u0002\u00a2\u0006\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001J\u0013\u0010\u00c7\u0001\u001a\u00030\u00c4\u0001H\u0002\u00a2\u0006\u0006\u0008\u00c7\u0001\u0010\u00c6\u0001J\u0011\u0010\u00c8\u0001\u001a\u00020\u000cH\u0002\u00a2\u0006\u0005\u0008\u00c8\u0001\u0010`R\u0016\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R)\u0010\u00ce\u0001\u001a\u00020\'2\u0007\u0010\u00cb\u0001\u001a\u00020\'8\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0005\u0008\u00cc\u0001\u0010b\u001a\u0006\u0008\u00cd\u0001\u0010\u00ab\u0001R)\u0010\u00d1\u0001\u001a\u00020\'2\u0007\u0010\u00cb\u0001\u001a\u00020\'8\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0005\u0008\u00cf\u0001\u0010b\u001a\u0006\u0008\u00d0\u0001\u0010\u00ab\u0001R\u0018\u0010\u00d3\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00d2\u0001\u0010bR\u0018\u0010\u00d5\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00d4\u0001\u0010bR\u0018\u0010\u00d7\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00d6\u0001\u0010bR\u0017\u0010\u00d8\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010bR\u0018\u0010\u00da\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00d9\u0001\u0010bR\u0018\u0010\u00db\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b5\u0001\u0010bR\u0018\u0010\u00dc\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a2\u0001\u0010bR\u0018\u0010\u00dd\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a8\u0001\u0010bR\u0018\u0010\u00de\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ae\u0001\u0010bR\u0018\u0010\u00df\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0099\u0001\u0010bR\u0018\u0010\u00e1\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e0\u0001\u0010bR\u0018\u0010\u00e2\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009e\u0001\u0010bR\u0018\u0010\u00e3\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a0\u0001\u0010bR\u0018\u0010\u00e5\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e4\u0001\u0010bR\u0018\u0010\u00e6\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0097\u0001\u0010bR\u0018\u0010\u00e8\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e7\u0001\u0010bR\u0019\u0010\u00e9\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u009d\u0001R\u0017\u0010\u00ea\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010bR\u0017\u0010\u00eb\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010bR\u0017\u0010\u00ec\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010bR\u0017\u0010\u00ed\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010bR\u0018\u0010\u00ee\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00be\u0001\u0010bR\u0018\u0010\u00ef\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00c5\u0001\u0010bR\u0018\u0010\u00f0\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00c2\u0001\u0010bR\u0018\u0010\u00f1\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00c7\u0001\u0010bR\u0017\u0010\u00f2\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010bR\u0017\u0010\u00f3\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010bR\u0017\u0010\u00f4\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010bR\u0018\u0010\u00f6\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00f5\u0001\u0010bR\u0018\u0010\u00f8\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00f7\u0001\u0010bR\u0018\u0010\u00f9\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b0\u0001\u0010bR\u0017\u0010\u00fa\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010bR\u0017\u0010\u00fb\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010bR\u0017\u0010\u00fc\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010bR\u0018\u0010\u00fe\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00fd\u0001\u0010bR\u0017\u0010\u00ff\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010bR\u0018\u0010\u0080\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008x\u0010\u009d\u0001R\u0018\u0010\u0081\u0002\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00c8\u0001\u0010bR\u0019\u0010\u0082\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00b0\u0001R\u0019\u0010\u0083\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00b0\u0001R\u0019\u0010\u0084\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u00b0\u0001R\u0019\u0010\u0085\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b0\u0001R\u0019\u0010\u0086\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00b0\u0001R\u0018\u0010\u0087\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008f\u0010\u00b0\u0001R\u0018\u0010\u0088\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008t\u0010\u00b0\u0001R\u0019\u0010\u008a\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0002\u0010\u009d\u0001R\u0019\u0010\u008b\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u00b0\u0001R\u0019\u0010\u008c\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00b0\u0001R\u0019\u0010\u008e\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0002\u0010\u00b0\u0001R\u0019\u0010\u008f\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u009d\u0001R\u0019\u0010\u0090\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u009d\u0001R\u0019\u0010\u0092\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0002\u0010\u009d\u0001R\u0019\u0010\u0093\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u009d\u0001R\u0018\u0010\u0096\u0002\u001a\u00030\u0094\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u0095\u0002R\u0018\u0010\u0097\u0002\u001a\u00030\u0094\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0095\u0002R\u001c\u0010\u009a\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0002\u0010\u0099\u0002R\u001c\u0010\u009b\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u0099\u0002R\u001c\u0010\u009c\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u0099\u0002R\u001b\u0010\u009e\u0002\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u009d\u0002R\u0018\u0010\u009f\u0002\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ad\u0001\u0010bR\u0018\u0010\u00a2\u0002\u001a\u00030\u00a0\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u00a1\u0002R\u0018\u0010\u00a3\u0002\u001a\u00030\u00a0\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00a1\u0002R\u001b\u0010\u00a6\u0002\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0002\u0010\u00a5\u0002R\u001b\u0010\u00a9\u0002\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0002\u0010\u00a8\u0002R\u001b\u0010\u00ab\u0002\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0002\u0010\u00a8\u0002R)\u0010\u00b0\u0002\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00ac\u0002\u0010\u00ad\u0002\u001a\u0005\u0008\u00ae\u0002\u0010X\"\u0005\u0008\u00af\u0002\u0010[R\u001c\u0010\u00b4\u0002\u001a\u0005\u0018\u00010\u00b1\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0002\u0010\u00b3\u0002R\u0019\u0010\u00b6\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0002\u0010\u00b0\u0001R\u0019\u0010\u00b8\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0002\u0010\u00b0\u0001R\u0019\u0010\u00ba\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0002\u0010\u00b0\u0001R\u0018\u0010\u00be\u0002\u001a\u00030\u00bb\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0002\u0010\u00bd\u0002R\'\u0010\u00c2\u0002\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00bf\u0002\u0010\u009d\u0001\u001a\u0005\u0008\u00c0\u0002\u0010\"\"\u0005\u0008\u00c1\u0002\u0010-R\'\u0010\u00c4\u0002\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00c3\u0002\u0010\u009d\u0001\u001a\u0005\u0008\u00c4\u0002\u0010\"\"\u0005\u0008\u00c5\u0002\u0010-R\u0019\u0010\u00c7\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0002\u0010\u00b0\u0001R\u0019\u0010\u00c9\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0002\u0010\u00b0\u0001R\u0019\u0010\u00cb\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0002\u0010\u00b0\u0001R\u0019\u0010\u00cd\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0002\u0010\u00b0\u0001R\u0018\u0010\u00d1\u0002\u001a\u00030\u00ce\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0002\u0010\u00d0\u0002R\u0019\u0010\u00d3\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0002\u0010\u009d\u0001R\u0019\u0010\u00d5\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0002\u0010\u009d\u0001R\u0019\u0010\u00d7\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d6\u0002\u0010\u00b0\u0001R\u0019\u0010\u00d9\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d8\u0002\u0010\u00b0\u0001R\u001c\u0010\u00dd\u0002\u001a\u0005\u0018\u00010\u00da\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00db\u0002\u0010\u00dc\u0002R\u001b\u0010\u00e0\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00de\u0002\u0010\u00df\u0002R\u001b\u0010\u00e2\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e1\u0002\u0010\u00df\u0002R\u0018\u0010\u00e6\u0002\u001a\u00030\u00e3\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e4\u0002\u0010\u00e5\u0002R\u0019\u0010\u00e8\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e7\u0002\u0010\u009d\u0001R\u0019\u0010\u00ea\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e9\u0002\u0010\u00b0\u0001R\u001c\u0010\u00ec\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00eb\u0002\u0010\u0099\u0002R\u001c\u0010\u00ee\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0002\u0010\u0099\u0002R\u001b\u0010\u00f0\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ef\u0002\u0010\u00df\u0002R\u001b\u0010\u00f2\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f1\u0002\u0010\u00df\u0002R\u0017\u0010\u00f4\u0002\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f3\u0002\u0010\u00df\u0002R\u001b\u0010\u00f6\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f5\u0002\u0010\u00df\u0002R\u0019\u0010\u00f9\u0002\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f7\u0002\u0010\u00f8\u0002R\u0019\u0010\u00fb\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fa\u0002\u0010\u009d\u0001R\u0019\u0010\u00fd\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0002\u0010\u00b0\u0001R\u001c\u0010\u00ff\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0002\u0010\u0099\u0002R\u0018\u0010\u0081\u0003\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0003\u0010bR\u001c\u0010\u0085\u0003\u001a\u0005\u0018\u00010\u0082\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0003\u0010\u0084\u0003R\u0012\u0010(\u001a\u00020\u00068F\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0003\u0010pR\u0014\u0010\u0088\u0003\u001a\u00020\'8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0087\u0003\u0010\u00ab\u0001R\u0014\u0010\u008b\u0003\u001a\u00020N8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0089\u0003\u0010\u008a\u0003R\u0016\u0010\u008d\u0003\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008c\u0003\u0010pR\u0017\u0010\u008f\u0003\u001a\u00020\'8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008e\u0003\u0010\u00ab\u0001R\u0016\u0010\u0090\u0003\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00f5\u0001\u0010\"\u00a8\u0006\u0093\u0003"
    }
    d2 = {
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;",
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
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
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
        "performClick",
        "()Z",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "",
        "progress",
        "setProgress",
        "(F)V",
        "isForceProgress",
        "setForceProgress",
        "(Z)V",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;",
        "getOnProgressChangedListener",
        "()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;",
        "listener",
        "setOnProgressChangedListener",
        "(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V",
        "trackColor",
        "setTrackColor",
        "(I)V",
        "secondTrackColor",
        "setSecondTrackColor",
        "",
        "positions",
        "setGradientPositions",
        "([F)V",
        "",
        "colors",
        "setTrackGradient",
        "([I)V",
        "targetColors",
        "startTrackGradientAnimation",
        "thumbInsideUnAbleColorHios",
        "setThumbInsideUnAbleColorHios",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "state",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "thumbColor",
        "setThumbOutColor",
        "setThumbInsideColor",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;",
        "builder",
        "config",
        "(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;)V",
        "Landroid/widget/ImageView;",
        "getLeftIcon",
        "()Landroid/widget/ImageView;",
        "getRightIcon",
        "Landroid/graphics/drawable/Drawable;",
        "getThumb",
        "()Landroid/graphics/drawable/Drawable;",
        "drawable",
        "setThumb",
        "(Landroid/graphics/drawable/Drawable;)V",
        "isHiOSStyle",
        "vibrateAble",
        "setVibrateAble",
        "onDetachedFromWindow",
        "()V",
        "onAttachedToWindow",
        "F",
        "height",
        "E",
        "(I)I",
        "V",
        "v",
        "centerX",
        "centerY",
        "x",
        "(Landroid/graphics/Canvas;FF)V",
        "xRight",
        "yTop",
        "(FLandroid/graphics/Canvas;F)V",
        "getDotColor",
        "()I",
        "thumbInsideColor",
        "D",
        "y",
        "W",
        "getSecondTrackColor",
        "getThumbOutColor",
        "getThumbInSideColor",
        "O",
        "(Landroid/view/MotionEvent;)V",
        "N",
        "thumbCenterX",
        "L",
        "K",
        "J",
        "fromValue",
        "toValue",
        "j0",
        "(FF)V",
        "b0",
        "p0",
        "fromScal",
        "toScal",
        "h0",
        "fromThumbHalfLen",
        "toThumbHalfLen",
        "i0",
        "fromCenterx",
        "toCenterX",
        "",
        "duration",
        "e0",
        "(FFJ)V",
        "fromUpEvent",
        "f0",
        "(FFJZ)V",
        "S",
        "(F)I",
        "Landroid/animation/ValueAnimator;",
        "s",
        "(FF)Landroid/animation/ValueAnimator;",
        "n",
        "toAlpha",
        "X",
        "toScale",
        "Z",
        "p",
        "()Landroid/animation/ValueAnimator;",
        "q",
        "touchedX",
        "k",
        "(F)F",
        "leftBase",
        "Q",
        "(FF)F",
        "thumbcenterX",
        "l",
        "n0",
        "u",
        "()F",
        "l0",
        "o0",
        "m",
        "fromUser",
        "I",
        "R",
        "startColor",
        "endColor",
        "fraction",
        "j",
        "(IIF)I",
        "progress01",
        "T",
        "U",
        "([IF)I",
        "targetColor",
        "c0",
        "(IJ)V",
        "z",
        "q0",
        "m0",
        "icon",
        "B",
        "(I)Landroid/widget/ImageView;",
        "Landroid/view/ViewGroup$LayoutParams;",
        "A",
        "()Landroid/view/ViewGroup$LayoutParams;",
        "C",
        "P",
        "b",
        "Landroid/content/Context;",
        "<set-?>",
        "c",
        "getMin",
        "min",
        "d",
        "getMax",
        "max",
        "e",
        "mProgress",
        "f",
        "mSourceTrackWidth",
        "g",
        "mSourceSecondTTrackWidth",
        "mCurrentSourceTrackWidth",
        "i",
        "mCurrentSourceSecondTTrackWidth",
        "mTrackWidthMax",
        "mDelta",
        "mThumbCenterX",
        "mThumbCenterY",
        "mTrackLength",
        "o",
        "mPreThumbCenterX",
        "mLeft",
        "mRight",
        "r",
        "mTouchXDown",
        "mTouchXMove",
        "t",
        "offset",
        "mIsForceStopCalculate",
        "mThumbStokeWidth",
        "mSourceThumbInHalfWidth",
        "mMaxThumbInHalfWidth",
        "mSourceThumbInHalfHeight",
        "mCurrentThumbInHalfWidth",
        "mCurrentThumbInScal",
        "mCurrentThumbOutScal",
        "mMaxThumbInScal",
        "mThumbHalfWidth",
        "mCurrentThumbHalfWidth",
        "mCurrentScaleFactor",
        "G",
        "mFromScaleFactor",
        "H",
        "mMaxThumbStokeScal",
        "mFromThumbCenterX",
        "mToThumbCenterX",
        "mFromThumbHalfLen",
        "mCenterThumbHalfLen",
        "M",
        "mToThumbHalfLen",
        "mFromTrackWidth",
        "mFromUpEvent",
        "mTouchThumbX",
        "mTrackColor",
        "mSecondTrackColor",
        "mThumbInsideUnAbleColorHios",
        "mThumbOutColor",
        "mThumbInsideColor",
        "mThumbInsideColorAlpha",
        "mThumbScalType",
        "a0",
        "isThumbOnDragging",
        "mSecondTrackColorDisable",
        "mThumbOutColorDisable",
        "d0",
        "mThumbInsideColorDisable",
        "isTouchOnThumb",
        "isCenterXAnimation",
        "g0",
        "isEnterActionMove",
        "isTouchMove",
        "Luua;",
        "Luua;",
        "mThumbWidthTrackAnimator",
        "mThumbCenterXTrackAnimator",
        "k0",
        "Landroid/animation/ValueAnimator;",
        "mThumbWidthAnimator",
        "mThumbInScalAnimator",
        "mThumbIntervalAnimator",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;",
        "onProgressChangedListener",
        "mLastCallbackProgress",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "mPaint",
        "mThumbPaint",
        "r0",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;",
        "mOSSeekBarBuilder",
        "s0",
        "Landroid/widget/ImageView;",
        "mLeftIcon",
        "t0",
        "mRightIcon",
        "u0",
        "Landroid/graphics/drawable/Drawable;",
        "getThumbDrawable",
        "setThumbDrawable",
        "thumbDrawable",
        "La67;",
        "v0",
        "La67;",
        "mLiquidDrawable",
        "w0",
        "mLiquidWidth",
        "x0",
        "mLiquidHeight",
        "y0",
        "mLiquidRadius",
        "Landroid/graphics/drawable/GradientDrawable;",
        "z0",
        "Landroid/graphics/drawable/GradientDrawable;",
        "mWhiteBackDrawable",
        "A0",
        "getOnlyHiOSStyle",
        "setOnlyHiOSStyle",
        "onlyHiOSStyle",
        "B0",
        "isNoThumb",
        "setNoThumb",
        "C0",
        "mDotsSize",
        "D0",
        "mDotsColor",
        "E0",
        "mDotsSelectedColor",
        "F0",
        "mDotsSelectedColorDisable",
        "Ljava/lang/Runnable;",
        "G0",
        "Ljava/lang/Runnable;",
        "mVibrateRunnable",
        "H0",
        "mVibrateAble",
        "I0",
        "mShowMiddlePoint",
        "J0",
        "mShowMiddlePointPercent",
        "K0",
        "mCalculateVibrateProgress",
        "Landroid/graphics/LinearGradient;",
        "L0",
        "Landroid/graphics/LinearGradient;",
        "mSecondTrackGradient",
        "M0",
        "[I",
        "mSecondTrackGradientColors",
        "N0",
        "mSecondTrackCacheColors",
        "Landroid/graphics/Matrix;",
        "O0",
        "Landroid/graphics/Matrix;",
        "mSecondTrackMatrix",
        "P0",
        "mThumbOutColorExplicit",
        "Q0",
        "mThumbOutColorBeforeGradient",
        "R0",
        "mTrackGradientAnimator",
        "S0",
        "mThumbColorAnimator",
        "T0",
        "mAnimStartColors",
        "U0",
        "mAnimTargetColors",
        "V0",
        "mAnimInterpolatedColors",
        "W0",
        "mThumbTargetColors",
        "X0",
        "[F",
        "mGradientPositions",
        "Y0",
        "mTrackGradientActive",
        "Z0",
        "mGradientAnimToken",
        "a1",
        "mAlphaAnimator",
        "b1",
        "mCurrentAlpha",
        "Ljv9;",
        "c1",
        "Ljv9;",
        "mSpringAnimation",
        "getProgress",
        "getProgressFloat",
        "progressFloat",
        "getConfigBuilder",
        "()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;",
        "configBuilder",
        "getContentHeight",
        "contentHeight",
        "getThumbHalfSizeOnTouchDown",
        "thumbHalfSizeOnTouchDown",
        "isThumbIntervalAnimationRun",
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
.field public static final Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

.field public static final d1:Ljava/lang/String;

.field public static final e1:I

.field public static final f1:I

.field public static final g1:I


# instance fields
.field public A:F

.field public A0:Z

.field public B:F

.field public B0:Z

.field public C:F

.field public C0:I

.field public D:F

.field public D0:I

.field public E:F

.field public E0:I

.field public F:F

.field public F0:I

.field public G:F

.field public final G0:Ljava/lang/Runnable;

.field public H:F

.field public H0:Z

.field public I:F

.field public I0:Z

.field public J:F

.field public J0:I

.field public K:F

.field public K0:I

.field public L:F

.field public L0:Landroid/graphics/LinearGradient;

.field public M:F

.field public M0:[I

.field public N:F

.field public N0:[I

.field public O:Z

.field public final O0:Landroid/graphics/Matrix;

.field public P:F

.field public P0:Z

.field public Q:I

.field public Q0:I

.field public R:I

.field public R0:Landroid/animation/ValueAnimator;

.field public S:I

.field public S0:Landroid/animation/ValueAnimator;

.field public T:I

.field public T0:[I

.field public U:I

.field public U0:[I

.field public V:I

.field public final V0:[I

.field public W:I

.field public W0:[I

.field public X0:[F

.field public Y0:Z

.field public Z0:I

.field public a0:Z

.field public a1:Landroid/animation/ValueAnimator;

.field public final b:Landroid/content/Context;

.field public b0:I

.field public b1:F

.field public c:F

.field public c0:I

.field public c1:Ljv9;

.field public d:F

.field public d0:I

.field public e:F

.field public e0:Z

.field public f:F

.field public f0:Z

.field public g:F

.field public g0:Z

.field public h:F

.field public h0:Z

.field public i:F

.field public final i0:Luua;

.field public j:F

.field public final j0:Luua;

.field public k:F

.field public k0:Landroid/animation/ValueAnimator;

.field public l:F

.field public l0:Landroid/animation/ValueAnimator;

.field public m:F

.field public m0:Landroid/animation/ValueAnimator;

.field public n:F

.field public n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

.field public o:F

.field public o0:F

.field public p:F

.field public final p0:Landroid/graphics/Paint;

.field public q:F

.field public final q0:Landroid/graphics/Paint;

.field public r:F

.field public r0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

.field public s:F

.field public s0:Landroid/widget/ImageView;

.field public t:F

.field public t0:Landroid/widget/ImageView;

.field public u:Z

.field public u0:Landroid/graphics/drawable/Drawable;

.field public v:F

.field public v0:La67;

.field public w:F

.field public w0:I

.field public x:F

.field public x0:I

.field public y:F

.field public y0:I

.field public z:F

.field public final z0:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const-class v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d1:Ljava/lang/String;

    const/16 v0, 0xfa

    sput v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e1:I

    const/16 v1, 0xc8

    sput v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f1:I

    sput v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g1:I

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const-string v0, "mContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A:F

    .line 7
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B:F

    .line 8
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    .line 9
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G:F

    const/16 v0, 0xff

    .line 10
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->V:I

    .line 11
    new-instance v0, Luua;

    invoke-direct {v0}, Luua;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    .line 12
    new-instance v0, Luua;

    invoke-direct {v0}, Luua;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o0:F

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_thumb_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w0:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_thumb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->x0:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_liquid_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y0:I

    .line 17
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 20
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z0:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A0:Z

    .line 22
    new-instance v3, Lxa7;

    invoke-direct {v3, p0}, Lxa7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G0:Ljava/lang/Runnable;

    .line 23
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H0:Z

    const/16 v3, 0x32

    .line 24
    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J0:I

    .line 25
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O0:Landroid/graphics/Matrix;

    const/4 v3, 0x3

    .line 26
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->V0:[I

    .line 27
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X0:[F

    .line 28
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a()V

    .line 29
    sget-object v3, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "mContext.obtainStyledAtt\u2026Seekbar, defStyleAttr, 0)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarOnlyHiOSStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A0:Z

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->c()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a()V

    .line 32
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarNoThumb:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    .line 33
    :cond_0
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    .line 34
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMax:I

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    .line 35
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarProgress:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    .line 36
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarThumb:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    .line 38
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarTrackColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setTrackColor(I)V

    .line 40
    :cond_1
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarSecondTrackColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setSecondTrackColor(I)V

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 46
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 51
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p1, 0x3e800000    # 0.25f

    .line 52
    invoke-virtual {v0, p1}, Luua;->setMaxSpeedFractor(F)V

    .line 53
    invoke-virtual {v0, p1}, Luua;->setMinSpeedFractor(F)V

    .line 54
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F()V

    .line 55
    invoke-static {}, Lolb;->l0()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpg-float p1, p1, p3

    if-nez p1, :cond_3

    const/high16 p1, 0x43340000    # 180.0f

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data
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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final H(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    invoke-static {p0}, Lvob;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static final M(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static final Y(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
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

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b1:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final a0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Lf43;FF)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    sget-object p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d1:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startHiosScaleAnimation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final synthetic access$calculateProgress(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$canAutoThumbColor(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMAnimTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U0:[I

    return-object p0
.end method

.method public static final synthetic access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L:F

    return p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMFromThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I:F

    return p0
.end method

.method public static final synthetic access$getMFromThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->K:F

    return p0
.end method

.method public static final synthetic access$getMGradientAnimToken$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z0:I

    return p0
.end method

.method public static final synthetic access$getMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    return p0
.end method

.method public static final synthetic access$getMThumbOutColorExplicit$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P0:Z

    return p0
.end method

.method public static final synthetic access$getMToThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    return p0
.end method

.method public static final synthetic access$getMToThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M:F

    return p0
.end method

.method public static final synthetic access$notifyProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I(Z)V

    return-void
.end method

.method public static final synthetic access$sampleGradientColorFrom(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[IF)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U([IF)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    return-void
.end method

.method public static final synthetic access$setMAnimStartColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T0:[I

    return-void
.end method

.method public static final synthetic access$setMAnimTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U0:[I

    return-void
.end method

.method public static final synthetic access$setMCurrentThumbInHalfWidth$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    return-void
.end method

.method public static final synthetic access$setMProgress$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    return-void
.end method

.method public static final synthetic access$setMSecondTrackGradient$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/graphics/LinearGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public static final synthetic access$setMSecondTrackGradientColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    return-void
.end method

.method public static final synthetic access$setMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    return-void
.end method

.method public static final synthetic access$setMThumbColorAnimator$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setMThumbOutColor$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    return-void
.end method

.method public static final synthetic access$setMThumbOutColorExplicit$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P0:Z

    return-void
.end method

.method public static final synthetic access$setMThumbTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    return-void
.end method

.method public static final synthetic access$setMTrackGradientActive$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    return-void
.end method

.method public static final synthetic access$targetProgress01(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$thumbOutColor(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0()I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->t(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final d0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IILandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j(IIF)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;FFJZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0(FFJZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startThumbIntervalAnimationHios"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getContentHeight()I
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    int-to-float v0, v1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-double v0, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f:F

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p0, v0

    :goto_0
    return p0
.end method

.method private final getDotColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->E0:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F0:I

    :goto_0
    return p0
.end method

.method private final getSecondTrackColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b0:I

    :goto_0
    return p0
.end method

.method private final getThumbHalfSizeOnTouchDown()F
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H:F

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    :goto_0
    return p0
.end method

.method private final getThumbInSideColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d0:I

    :goto_0
    return p0
.end method

.method private final getThumbOutColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c0:I

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Lf43;FF)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    return-void
.end method

.method public static final k0(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[IILandroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resolvedTarget"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z0:I

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string p4, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p4, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T0:[I

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U0:[I

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->V0:[I

    const/4 v2, 0x0

    aget v3, p4, v2

    aget v4, v0, v2

    invoke-virtual {p1, v3, v4, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j(IIF)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->V0:[I

    const/4 v2, 0x1

    aget v3, p4, v2

    aget v4, v0, v2

    invoke-virtual {p1, v3, v4, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j(IIF)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->V0:[I

    const/4 v2, 0x2

    aget p4, p4, v2

    aget v0, v0, v2

    invoke-virtual {p1, p4, v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j(IIF)I

    move-result p4

    aput p4, v1, v2

    iget-object p4, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->V0:[I

    iput-object p4, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    const/4 p4, 0x0

    iput-object p4, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0()F

    move-result p4

    invoke-virtual {p1, p2, p4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U([IF)I

    move-result p2

    invoke-virtual {p1, p3, p2, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j(IIF)I

    move-result p0

    iput p0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final o(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 3

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

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H:F

    sub-float v2, v1, v2

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final r(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .locals 2

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

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f:F

    sub-float v1, v0, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final t(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
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

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final A()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_icon_common_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final B(I)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method public final C()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object p0
.end method

.method public final D(I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b1:F

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

.method public final E(I)I
    .locals 2

    int-to-double v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x1e

    invoke-static {p0, p1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x14

    invoke-static {p0, p1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final F()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    :cond_3
    sub-float/2addr v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    return-void
.end method

.method public final G()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final I(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o0:F

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o0:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final J(Landroid/view/MotionEvent;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o0(F)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s:F

    sget-object v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X(F)V

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    sget v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f1:I

    int-to-long v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0(FFJZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {p0, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    iput-boolean v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final K(Landroid/view/MotionEvent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g0:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C:F

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P:F

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o:F

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-object v2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s:F

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0:Z

    if-eqz v0, :cond_9

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    sget v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e1:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0(FFJ)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P:F

    sub-float v0, p1, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v2

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->x:F

    cmpl-float v4, v2, v0

    if-lez v4, :cond_4

    move v2, v0

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M:F

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    invoke-virtual {p0, v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0(FF)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b0(FF)V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o:F

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L(F)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    move v3, v1

    :goto_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0(FF)V

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_2
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P:F

    goto :goto_3

    :cond_d
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {p1}, Luua;->getTargValue()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_3
    return-void
.end method

.method public final L(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J0:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->K0:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P()V

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d1:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressVibrate: vibrate calculateProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->K0:I

    return-void
.end method

.method public final N(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    cmpg-float v2, p1, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    int-to-float v3, v1

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    :cond_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    :cond_1
    move v2, p1

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X(F)V

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0:Z

    if-eqz p1, :cond_3

    sget p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f1:I

    :goto_0
    int-to-long v3, p1

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g1:I

    goto :goto_0

    :goto_1
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;FFJZILjava/lang/Object;)V

    return-void
.end method

.method public final O(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {v0}, Luua;->d()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {v0}, Luua;->d()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0(FF)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M:F

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    cmpg-float v2, v0, v1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0(FF)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g0:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-object v2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    sget v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e1:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0(FFJ)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L(F)V

    :goto_2
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o:F

    return-void
.end method

.method public final P()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H0:Z

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

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final Q(FF)F
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return p2

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public final R()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->o0:F

    return-void
.end method

.method public final S(F)I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0(F)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U([IF)I

    move-result p0

    return p0

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P0:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q0:I

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    :goto_0
    return p1
.end method

.method public final T(F)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    return p0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U([IF)I

    move-result p0

    return p0
.end method

.method public final U([IF)I
    .locals 7

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X0:[F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lwn8;->j(FFF)F

    move-result p2

    const/4 v0, 0x0

    aget v2, p0, v0

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_1

    aget p0, p1, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    aget v4, p0, v3

    cmpg-float v5, p2, v4

    const v6, 0x38d1b717    # 1.0E-4f

    if-gtz v5, :cond_3

    sub-float/2addr v4, v2

    cmpl-float p0, v4, v6

    if-lez p0, :cond_2

    sub-float/2addr p2, v2

    div-float v1, p2, v4

    :cond_2
    aget p0, p1, v0

    aget p1, p1, v3

    invoke-static {p0, p1, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    aget p0, p0, v0

    cmpg-float v2, p2, p0

    if-gtz v2, :cond_5

    sub-float/2addr p0, v4

    cmpl-float v2, p0, v6

    if-lez v2, :cond_4

    sub-float/2addr p2, v4

    div-float v1, p2, p0

    :cond_4
    aget p0, p1, v3

    aget p1, p1, v0

    invoke-static {p0, p1, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    goto :goto_0

    :cond_5
    aget p0, p1, v0

    :goto_0
    return p0
.end method

.method public final V()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->E:F

    return-void
.end method

.method public final W(FLandroid/graphics/Canvas;F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    sub-float v0, p1, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {}, Lolb;->l0()Z

    move-result v1

    if-eqz v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    add-float/2addr p1, v0

    :goto_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->E0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C0:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final X(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b1:F

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

    new-instance v0, Lpa7;

    invoke-direct {v0, p0}, Lpa7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a1:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final Z(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    if-nez v0, :cond_1

    new-instance v0, Lfz3;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    invoke-direct {v0, v1}, Lfz3;-><init>(F)V

    new-instance v1, Ljv9;

    invoke-direct {v1, v0}, Ljv9;-><init>(Lfz3;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    new-instance v0, Lkv9;

    invoke-direct {v0}, Lkv9;-><init>()V

    invoke-virtual {v1, v0}, Ljv9;->z(Lkv9;)Ljv9;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Lf43;->k(F)Lf43;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    if-eqz v0, :cond_1

    new-instance v1, Lwa7;

    invoke-direct {v1, p0}, Lwa7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Lf43;->b(Lf43$r;)Lf43;

    move-result-object v0

    check-cast v0, Ljv9;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    invoke-virtual {v0, v1}, Lf43;->m(F)Lf43;

    move-result-object v0

    check-cast v0, Ljv9;

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

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
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljv9;->p()V

    :cond_5
    return-void
.end method

.method public final b0(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {v0, p1}, Luua;->set(F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {p0, p2}, Luua;->setTargValue(F)V

    return-void
.end method

.method public final c0(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lua7;

    invoke-direct {p2, p0, v0, p1}, Lua7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;II)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;

    invoke-direct {p2, p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;I)V

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final config(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;)V
    .locals 8

    const-string v0, "builder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getMin()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getMax()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getSecondTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbOutColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInsideColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getSecondTrackColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b0:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbOutColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c0:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInsideColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d0:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getSecondTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getSecondTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getTrackWidthMax()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbOutWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInMaxWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInWidth()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->setThumbInMaxWidth(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInMaxWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->x:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInMaxScal()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    cmpg-float v0, v0, v2

    const/4 v1, 0x2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbOutWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbOutMaxScal()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInMaxScal()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H:F

    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H:F

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getThumbInsideUnAbleColorHios()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getDotsSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C0:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getDotsSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->E0:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getDotsSelectedColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F0:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getDotsColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D0:I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getShowMiddlePoint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I0:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const-string v5, "copyOf(this, size)"

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getSecondTrackGradientColors()[I

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v7, v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_7

    :cond_5
    new-array v0, v4, [I

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R:I

    aput v7, v0, v2

    aput v7, v0, v3

    aput v7, v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v6

    :cond_7
    :goto_1
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getSecondTrackGradientColors()[I

    move-result-object v0

    if-eqz v0, :cond_8

    move v2, v3

    :cond_8
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getSecondTrackGradientColors()[I

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v6

    :goto_2
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getGradientPositions()[F

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getGradientPositions()[F

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    array-length v0, v0

    if-lt v0, v4, :cond_a

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getGradientPositions()[F

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X0:[F

    :cond_a
    iput-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    iput-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final e0(FFJ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W:I

    sub-float p3, p2, p1

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    double-to-float p3, p3

    iget p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    cmpl-float v0, p3, p4

    if-lez v0, :cond_3

    sub-float/2addr p3, p4

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr p3, v0

    add-float/2addr p3, p4

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->x:F

    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    move p3, v0

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->K:F

    iput p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L:F

    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M:F

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    iput p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->K:F

    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L:F

    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M:F

    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final f0(FFJZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N:F

    iput-boolean p5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O:Z

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G:F

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsmotionlibrary/R$interpolator;->os_motion_l1_easing_easeout:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    if-eqz p1, :cond_6

    if-eqz p5, :cond_5

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S(F)I

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c0(IJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getLeftIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    return p0
.end method

.method public final getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    return-object p0
.end method

.method public final getOnlyHiOSStyle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A0:Z

    return p0
.end method

.method public final getProgress()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getProgressFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    :goto_0
    return p0
.end method

.method public final getRightIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->t0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getThumb()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final h0(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final i0(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final isHiOSStyle()Z
    .locals 1

    sget-boolean v0, Lolb;->c:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A0:Z

    if-eqz p0, :cond_0

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

.method public final isNoThumb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    return p0
.end method

.method public final j(IIF)I
    .locals 8

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    shr-int/lit8 v1, p1, 0x10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    int-to-float v1, v1

    shr-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v2

    int-to-float v3, v3

    and-int/2addr p1, v2

    int-to-float p1, p1

    ushr-int/lit8 v4, p2, 0x18

    int-to-float v4, v4

    shr-int/lit8 v5, p2, 0x10

    and-int/2addr v5, v2

    int-to-float v5, v5

    shr-int/lit8 v6, p2, 0x8

    and-int/2addr v6, v2

    int-to-float v6, v6

    and-int/2addr p2, v2

    int-to-float p2, p2

    mul-float/2addr v0, p0

    mul-float/2addr v4, p3

    add-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v2}, Lwn8;->k(III)I

    move-result v0

    mul-float/2addr v1, p0

    mul-float/2addr v5, p3

    add-float/2addr v1, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1, v7, v2}, Lwn8;->k(III)I

    move-result v1

    mul-float/2addr v3, p0

    mul-float/2addr v6, p3

    add-float/2addr v3, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v7, v2}, Lwn8;->k(III)I

    move-result v3

    mul-float/2addr p1, p0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    add-float/2addr p1, v4

    float-to-int p0, p1

    invoke-static {p0, v7, v2}, Lwn8;->k(III)I

    move-result p0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v3, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public final j0(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {v0, p1}, Luua;->set(F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {p0, p2}, Luua;->setTargValue(F)V

    return-void
.end method

.method public final k(F)F
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    move p1, p0

    :cond_1
    return p1
.end method

.method public final l(F)F
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    return p0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    add-float/2addr p1, v0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    cmpl-float p0, p1, v0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0
.end method

.method public final l0()F
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u()F

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0(F)F

    move-result p0

    :goto_1
    return p0
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m0()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final n(FF)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Ls53;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p2, v2, v0, v0, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lsa7;

    invoke-direct {p2, p0}, Lsa7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "valueAnimator"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final n0(F)F
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    invoke-static {p1, v0, v2}, Lwn8;->j(FFF)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, p0}, Lwn8;->j(FFF)F

    move-result p0

    return p0
.end method

.method public final o0(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b1:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z0:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->k0:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l0:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m0:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a1:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c1:Ljv9;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R0:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N0:[I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getContentHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->E(I)I

    move-result p2

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d1:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->V()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w0:I

    int-to-float p1, p1

    int-to-float v0, p2

    div-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space075:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space025:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->t0:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space075:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space025:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    add-float/2addr v2, v3

    add-float/2addr v2, p1

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p1

    int-to-float p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f:F

    int-to-float v1, p2

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    :cond_3
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m:F

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->t:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

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

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lta7;

    invoke-direct {p1, p0}, Lta7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    :cond_0
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u:Z

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->J(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->K(Landroid/view/MotionEvent;)V

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g0:Z

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    :cond_5
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g0:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    :cond_6
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->performClick()Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    :cond_7
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    return v2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    float-to-double v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->r:F

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    if-eqz v0, :cond_a

    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    :cond_a
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbHalfSizeOnTouchDown()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    sub-float/2addr p1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    float-to-double v5, v0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    if-eqz p1, :cond_10

    :cond_c
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_d

    move p1, v0

    :cond_d
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    cmpl-float v2, p1, v0

    if-lez v2, :cond_e

    move p1, v0

    :cond_e
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X(F)V

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    sget p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f1:I

    int-to-long v5, p1

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v4

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0(FFJZ)V

    goto :goto_3

    :cond_f
    :goto_2
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    return v2

    :cond_10
    :goto_3
    return v1
.end method

.method public final p()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Ls53;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v0, v5, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$e;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$e;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "valueAnimator"

    invoke-static {v2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final p0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    const v1, 0x3d83126f    # 0.064f

    invoke-virtual {v0, v1}, Luua;->f(F)Z

    move-result v1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i0:Luua;

    invoke-virtual {v0}, Luua;->getAnimatedValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    const v2, 0x3e83126f    # 0.256f

    invoke-virtual {v0, v2}, Luua;->f(F)Z

    move-result v0

    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->j0:Luua;

    invoke-virtual {v0}, Luua;->getAnimatedValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I(Z)V

    :cond_1
    return v1
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public final q()Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lva7;

    invoke-direct {v1, p0}, Lva7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "valueAnimator"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final q0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;)V
    .locals 5

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getLeftIcon()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getRightIcon()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leftIcon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rightIcon = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getRightIcon()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getLeftIcon()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getLeftIcon()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getLeftIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->s0:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getRightIcon()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->getRightIcon()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->t0:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final s(FF)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Ls53;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3, v0, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lqa7;

    invoke-direct {p2, p0}, Lqa7;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "valueAnimator"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setForceProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setGradientPositions([F)V
    .locals 2

    const-string v0, "positions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    const-string v0, "copyOf(this, size)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X0:[F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N0:[I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setNoThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    return-void
.end method

.method public final setOnlyHiOSStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A0:Z

    return-void
.end method

.method public final setProgress(F)V
    .locals 3

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .locals 4

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput p1, v0, v1

    const/4 v3, 0x1

    aput p1, v0, v3

    const/4 v3, 0x2

    aput p1, v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setThumbInsideColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setThumbInsideUnAbleColorHios(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setThumbOutColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P0:Z

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setTrackGradient([I)V
    .locals 3

    const-string v0, "colors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(this, size)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q0:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->P0:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q0:I

    if-eqz p1, :cond_2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setVibrateAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->H0:Z

    return-void
.end method

.method public final startTrackGradientAnimation([I)V
    .locals 8

    const/4 v0, 0x2

    const-string v1, "targetColors"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    if-eqz v1, :cond_8

    array-length v2, v1

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R:I

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    xor-int/2addr v3, v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Y0:Z

    array-length v6, p1

    const/4 v7, 0x3

    if-lt v6, v7, :cond_3

    new-array v2, v7, [I

    aget v6, p1, v4

    aput v6, v2, v4

    aget v4, p1, v5

    aput v4, v2, v5

    aget p1, p1, v0

    aput p1, v2, v0

    goto :goto_1

    :cond_3
    array-length v6, p1

    if-ne v6, v0, :cond_4

    new-array v2, v7, [I

    aget v6, p1, v4

    aput v6, v2, v4

    aget v4, p1, v4

    aput v4, v2, v5

    aget p1, p1, v5

    aput p1, v2, v0

    goto :goto_1

    :cond_4
    array-length v6, p1

    if-ne v6, v5, :cond_5

    new-array v2, v7, [I

    aget v6, p1, v4

    aput v6, v2, v4

    aget p1, p1, v4

    aput p1, v2, v5

    aput p1, v2, v0

    goto :goto_1

    :cond_5
    new-array p1, v7, [I

    aput v2, p1, v4

    aput v2, p1, v5

    aput v2, p1, v0

    move-object v2, p1

    :goto_1
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W0:[I

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z0:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Z0:I

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R0:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->S0:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string v4, "copyOf(this, size)"

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T0:[I

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->U0:[I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->T:I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/widgetsmotionlibrary/R$interpolator;->os_motion_l1_easing_linear:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lra7;

    invoke-direct {v4, p1, p0, v2, v1}, Lra7;-><init>(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[II)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;

    invoke-direct {v1, p1, p0, v3, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;-><init>(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z[I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->R0:Landroid/animation/ValueAnimator;

    :cond_8
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final u()F
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->n0(F)F

    move-result p0

    return p0
.end method

.method public final v(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    iget v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    iget v9, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    iget v10, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m:F

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    const/4 v11, 0x2

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    if-nez v1, :cond_1

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {p0, v1, v8}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q(FF)F

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d:F

    cmpg-float v2, v1, v2

    if-nez v2, :cond_0

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    int-to-float v3, v11

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    int-to-float v3, v11

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->h:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v3, v10

    move v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v12, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getSecondTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->i:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z()V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    goto :goto_1

    :cond_2
    move-object v2, v13

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v3, v10

    move v4, v12

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I0:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v9, v7, v10}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w(FLandroid/graphics/Canvas;F)V

    :cond_3
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v3

    const v5, 0x3f666666    # 0.9f

    add-float/2addr v4, v5

    mul-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v3, v12, v2

    float-to-int v3, v3

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m:F

    sub-float v5, v4, v2

    float-to-int v5, v5

    add-float/2addr v12, v2

    float-to-int v6, v12

    add-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e0:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    if-eqz v1, :cond_6

    :cond_5
    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    invoke-virtual {p0, v7, v1, v10}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->x(Landroid/graphics/Canvas;FF)V

    :cond_6
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbOutColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w0:I

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->x0:I

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    int-to-float v9, v11

    mul-float/2addr v3, v9

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    iget v10, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b1:F

    sub-float/2addr v5, v10

    const/16 v10, 0xff

    int-to-float v11, v10

    mul-float/2addr v5, v11

    float-to-int v5, v5

    const/4 v11, 0x0

    invoke-static {v5, v11, v10}, Lwn8;->k(III)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    add-float v10, v3, v1

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    add-float v11, v3, v2

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    if-nez v1, :cond_7

    div-float v1, v10, v9

    sub-float v2, v12, v1

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m:F

    div-float v4, v11, v9

    sub-float v5, v3, v4

    add-float v6, v12, v1

    add-float v13, v3, v4

    iget-object v14, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move v5, v13

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_7
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbInSideColor()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B0:Z

    if-nez v1, :cond_8

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    mul-float/2addr v1, v9

    sub-float/2addr v10, v1

    sub-float/2addr v11, v1

    div-float/2addr v10, v9

    sub-float v1, v12, v10

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m:F

    div-float/2addr v11, v9

    sub-float v3, v2, v11

    add-float v4, v12, v10

    add-float v5, v2, v11

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public final w(FLandroid/graphics/Canvas;F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    sub-float v0, p1, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {}, Lolb;->l0()Z

    move-result v1

    if-eqz v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    add-float/2addr p1, v0

    :goto_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getDotColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->C0:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final x(Landroid/graphics/Canvas;FF)V
    .locals 10

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w0:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->x0:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->F:F

    sub-float/2addr v4, v5

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    const/4 v6, 0x1

    if-nez v5, :cond_0

    new-instance v5, La67;

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y0:I

    int-to-float v8, v8

    invoke-direct {v5, v7, v8}, La67;-><init>(Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b:Landroid/content/Context;

    invoke-static {v7, v6}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, La67;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, La67;->h(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/widgetslib/R$color;->os_liquid_thumb_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z0:Landroid/graphics/drawable/GradientDrawable;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y0:I

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
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->b1:F

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
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z0:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v9, v5

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-static {v4, v8, v7}, Lwn8;->k(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z0:Landroid/graphics/drawable/GradientDrawable;

    float-to-int v4, v0

    float-to-int v7, v1

    invoke-virtual {v2, v8, v8, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float v2, v0, v3

    sub-float/2addr p2, v2

    div-float v2, v1, v3

    sub-float/2addr p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v5}, La67;->setAlpha(I)V

    :cond_3
    const p2, 0x4379e667    # 249.90001f

    cmpl-float p2, v9, p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v6}, La67;->setShowOutline(Z)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v8}, La67;->setShowOutline(Z)V

    :cond_5
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1e

    if-lt p2, p3, :cond_6

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v0:La67;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1, v0, v1, v8}, La67;->c(Landroid/graphics/Canvas;FFZ)V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final y(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget v7, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    iget v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    iget v10, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m:F

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->a0:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f0:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e:F

    invoke-virtual {v0, v1, v7}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q(FF)F

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    :cond_0
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Q:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->f:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    sub-float v2, v7, v1

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    add-float/2addr v2, v3

    add-float/2addr v1, v8

    sub-float v4, v1, v3

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v11, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->l:F

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getSecondTrackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->D:F

    sub-float/2addr v7, v1

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    add-float v2, v7, v1

    iget-object v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->I0:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v8, v9, v10}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W(FLandroid/graphics/Canvas;F)V

    :cond_1
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbOutColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p0()Z

    move-result v12

    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->A:F

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->z:F

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->m:F

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y:F

    mul-float v5, v4, v1

    sub-float v13, v3, v5

    mul-float/2addr v4, v1

    add-float v14, v3, v4

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->W:I

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    :cond_2
    mul-float/2addr v2, v1

    sub-float v3, v11, v2

    add-float/2addr v11, v2

    goto :goto_0

    :cond_3
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    mul-float v4, v3, v1

    sub-float v4, v11, v4

    sub-float v3, v2, v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v11, v2

    move v3, v4

    goto :goto_0

    :cond_4
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->w:F

    sub-float v4, v2, v3

    add-float/2addr v2, v4

    mul-float/2addr v2, v1

    sub-float v2, v11, v2

    mul-float/2addr v3, v1

    add-float/2addr v11, v3

    move v3, v2

    :goto_0
    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->v:F

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->B:F

    mul-float/2addr v2, v4

    float-to-double v3, v3

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v15, v3

    float-to-double v3, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v11, v3

    sub-float v3, v15, v2

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v4, v13, v2

    add-float v5, v11, v2

    float-to-double v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    double-to-float v5, v5

    add-float v6, v14, v2

    iget v7, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->y:F

    mul-float v16, v7, v1

    add-float v7, v16, v2

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    float-to-int v2, v3

    float-to-int v3, v4

    float-to-int v4, v5

    float-to-int v5, v6

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->u0:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void

    :cond_6
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbInSideColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move v4, v11

    move v5, v14

    move/from16 v6, v16

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    if-eqz v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method

.method public final z()V
    .locals 11

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->M0:[I

    if-eqz v8, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N0:[I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    new-instance v10, Landroid/graphics/LinearGradient;

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->X0:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, v10

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    if-eqz v9, :cond_3

    array-length v0, v9

    array-length v1, v8

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    array-length v0, v8

    const/4 v1, 0x0

    invoke-static {v8, v1, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    :goto_0
    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(this, size)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N0:[I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O0:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O0:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O0:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->O0:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->L0:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->N0:[I

    return-void
.end method
