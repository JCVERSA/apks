.class public Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$a;,
        Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;,
        Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;,
        Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008.\u0008\u0016\u0018\u0000 \u008f\u00022\u00020\u0001:\u0008\u0090\u0002\u00c1\u0001\u0091\u0002\u00c3\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJM\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\r\u0010!\u001a\u00020\u0006\u00a2\u0006\u0004\u0008!\u0010\"J3\u0010\'\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0008\u0008\u0002\u0010%\u001a\u00020\u00172\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010+\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\u00020\u000b2\u0008\u0008\u0002\u0010-\u001a\u00020\u0017\u00a2\u0006\u0004\u0008.\u0010\u001cJ\r\u0010/\u001a\u00020\u000b\u00a2\u0006\u0004\u0008/\u00100J\u0015\u00102\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u0017\u00a2\u0006\u0004\u00082\u0010\u001cJ\r\u00103\u001a\u00020\u000b\u00a2\u0006\u0004\u00083\u00100J\u001b\u00106\u001a\u00020\u000b2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000b04\u00a2\u0006\u0004\u00086\u00107J\u001b\u00108\u001a\u00020\u000b2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000b04\u00a2\u0006\u0004\u00088\u00107J!\u0010;\u001a\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b09\u00a2\u0006\u0004\u0008;\u0010<J\u001b\u0010=\u001a\u00020\u000b2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000b04\u00a2\u0006\u0004\u0008=\u00107J!\u0010>\u001a\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b09\u00a2\u0006\u0004\u0008>\u0010<J!\u0010?\u001a\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b09\u00a2\u0006\u0004\u0008?\u0010<J\u0015\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020@\u00a2\u0006\u0004\u0008B\u0010CJ\r\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010G\u001a\u00020\u000b2\u0008\u0010A\u001a\u0004\u0018\u00010@\u00a2\u0006\u0004\u0008G\u0010CJ\u0017\u0010H\u001a\u00020\u000b2\u0008\u0010A\u001a\u0004\u0018\u00010@\u00a2\u0006\u0004\u0008H\u0010CJ\r\u0010I\u001a\u00020D\u00a2\u0006\u0004\u0008I\u0010FJ\r\u0010J\u001a\u00020D\u00a2\u0006\u0004\u0008J\u0010FJ\u0015\u0010L\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020@\u00a2\u0006\u0004\u0008L\u0010CJ\r\u0010M\u001a\u00020@\u00a2\u0006\u0004\u0008M\u0010NJ\r\u0010P\u001a\u00020O\u00a2\u0006\u0004\u0008P\u0010QJ\u0015\u0010S\u001a\u00020\u000b2\u0006\u0010R\u001a\u00020@\u00a2\u0006\u0004\u0008S\u0010CJ\u000f\u0010T\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008T\u00100J\u000f\u0010U\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008U\u00100J\r\u0010V\u001a\u00020:\u00a2\u0006\u0004\u0008V\u0010WJ\r\u0010X\u001a\u00020:\u00a2\u0006\u0004\u0008X\u0010WJ\r\u0010Y\u001a\u00020:\u00a2\u0006\u0004\u0008Y\u0010WJ\r\u0010Z\u001a\u00020:\u00a2\u0006\u0004\u0008Z\u0010WJ\u0017\u0010\\\u001a\u00020\u000b2\u0008\u0010[\u001a\u0004\u0018\u00010@\u00a2\u0006\u0004\u0008\\\u0010CJ\r\u0010]\u001a\u00020\u0017\u00a2\u0006\u0004\u0008]\u0010\u0019J\u0015\u0010_\u001a\u00020\u000b2\u0006\u0010^\u001a\u00020\u0017\u00a2\u0006\u0004\u0008_\u0010\u001cJ\u001d\u0010b\u001a\u00020\u000b2\u0006\u0010`\u001a\u00020\u00062\u0006\u0010a\u001a\u00020\u0006\u00a2\u0006\u0004\u0008b\u0010cJ\u001f\u0010b\u001a\u00020\u000b2\u0006\u0010`\u001a\u00020\u00062\u0008\u0010d\u001a\u0004\u0018\u00010@\u00a2\u0006\u0004\u0008b\u0010eJ\u001f\u0010h\u001a\u0004\u0018\u00010g2\u0006\u00101\u001a\u00020)2\u0006\u0010f\u001a\u00020)\u00a2\u0006\u0004\u0008h\u0010iJ\u000f\u0010h\u001a\u0004\u0018\u00010g\u00a2\u0006\u0004\u0008h\u0010jJ\u000f\u0010k\u001a\u0004\u0018\u00010g\u00a2\u0006\u0004\u0008k\u0010jJ\u001f\u0010k\u001a\u0004\u0018\u00010g2\u0006\u00101\u001a\u00020)2\u0006\u0010f\u001a\u00020)\u00a2\u0006\u0004\u0008k\u0010iJ\r\u0010m\u001a\u00020l\u00a2\u0006\u0004\u0008m\u0010nJ\u0015\u0010o\u001a\u00020\u000b2\u0006\u0010o\u001a\u00020\u0017\u00a2\u0006\u0004\u0008o\u0010\u001cJ\r\u0010q\u001a\u00020p\u00a2\u0006\u0004\u0008q\u0010rJ\u0011\u0010t\u001a\u0004\u0018\u00010sH\u0014\u00a2\u0006\u0004\u0008t\u0010uJ\u0019\u0010w\u001a\u00020\u000b2\u0008\u0010v\u001a\u0004\u0018\u00010sH\u0014\u00a2\u0006\u0004\u0008w\u0010xJ%\u0010|\u001a\u00020\u000b*\u00020y2\u0008\u0008\u0002\u0010z\u001a\u00020\u00172\u0008\u0010{\u001a\u0004\u0018\u00010@\u00a2\u0006\u0004\u0008|\u0010}J\u0016\u0010\u007f\u001a\u00020\u000b2\u0006\u0010~\u001a\u00020\u0000\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J\u001a\u0010\u0082\u0001\u001a\u00020\u000b2\u0007\u0010\u0081\u0001\u001a\u00020\u0017H\u0007\u00a2\u0006\u0005\u0008\u0082\u0001\u0010\u001cJ\u001a\u0010\u0084\u0001\u001a\u00020\u000b2\u0007\u0010\u0083\u0001\u001a\u00020\u0017H\u0007\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u001cJ\u0018\u0010\u0086\u0001\u001a\u00020\u000b2\u0007\u0010\u0085\u0001\u001a\u00020\u0006\u00a2\u0006\u0005\u0008\u0086\u0001\u0010\rJ\u001a\u0010\u0088\u0001\u001a\u00020\u000b2\u0007\u0010\u0087\u0001\u001a\u00020\u0017H\u0007\u00a2\u0006\u0005\u0008\u0088\u0001\u0010\u001cJ\u0018\u0010\u008a\u0001\u001a\u00020\u000b2\u0007\u0010\u0089\u0001\u001a\u00020\u0017\u00a2\u0006\u0005\u0008\u008a\u0001\u0010\u001cJ\u001c\u0010\u008b\u0001\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001J\u001c\u0010\u008d\u0001\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0003\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008c\u0001J\u0011\u0010\u008e\u0001\u001a\u00020\u000bH\u0002\u00a2\u0006\u0005\u0008\u008e\u0001\u00100J$\u0010\u0091\u0001\u001a\u00020D2\u0007\u0010\u008f\u0001\u001a\u00020\u00062\u0007\u0010\u0090\u0001\u001a\u00020@H\u0002\u00a2\u0006\u0006\u0008\u0091\u0001\u0010\u0092\u0001JH\u0010\u0097\u0001\u001a\u00020y2\u0007\u0010\u008f\u0001\u001a\u00020\u00062\u0007\u0010\u0093\u0001\u001a\u00020\u00062\u0007\u0010\u0090\u0001\u001a\u00020@2\u0007\u0010\u0094\u0001\u001a\u00020\u00062\u0007\u0010\u0095\u0001\u001a\u00020\u00062\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0098\u0001J\u0013\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0002\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u001c\u0010\u009e\u0001\u001a\u00020:2\u0008\u0010\u009d\u0001\u001a\u00030\u009c\u0001H\u0002\u00a2\u0006\u0006\u0008\u009e\u0001\u0010\u009f\u0001J\u0012\u0010\u00a0\u0001\u001a\u00020yH\u0002\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\u0019\u0010\u00a2\u0001\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u0006H\u0003\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010\rJ\u001a\u0010\u00a4\u0001\u001a\u00020\u000b2\u0007\u0010\u00a3\u0001\u001a\u00020\u0017H\u0002\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010\u001cJ\u0011\u0010\u00a5\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00a5\u0001\u0010\"J\u0011\u0010\u00a6\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00a6\u0001\u0010\"J\u0011\u0010\u00a7\u0001\u001a\u00020\u000bH\u0002\u00a2\u0006\u0005\u0008\u00a7\u0001\u00100J\u0011\u0010\u00a8\u0001\u001a\u00020\u000bH\u0002\u00a2\u0006\u0005\u0008\u00a8\u0001\u00100J\u0011\u0010\u00a9\u0001\u001a\u00020\u000bH\u0002\u00a2\u0006\u0005\u0008\u00a9\u0001\u00100J\u001f\u0010\u00ab\u0001\u001a\u00020\u000b2\u000b\u0008\u0002\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u0017H\u0002\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010\u0019J\u0011\u0010\u00ae\u0001\u001a\u00020\u0017H\u0002\u00a2\u0006\u0005\u0008\u00ae\u0001\u0010\u0019J\u001c\u0010\u00b0\u0001\u001a\u00020\u000b2\t\u0008\u0002\u0010\u00af\u0001\u001a\u00020\u0017H\u0002\u00a2\u0006\u0005\u0008\u00b0\u0001\u0010\u001cJ\u0011\u0010\u00b1\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00b1\u0001\u0010\"J\u0011\u0010\u00b2\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00b2\u0001\u0010\"J\u0011\u0010\u00b3\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00b3\u0001\u0010\"J\u0011\u0010\u00b4\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010\"J\u0011\u0010\u00b5\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010\"J\u0011\u0010\u00b6\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00b6\u0001\u0010\"J\u001d\u0010\u00b7\u0001\u001a\u00020\u00062\t\u0008\u0002\u0010\u00af\u0001\u001a\u00020\u0017H\u0002\u00a2\u0006\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001J\u001d\u0010\u00b9\u0001\u001a\u00020\u00062\t\u0008\u0002\u0010\u00af\u0001\u001a\u00020\u0017H\u0002\u00a2\u0006\u0006\u0008\u00b9\u0001\u0010\u00b8\u0001J\u0011\u0010\u00ba\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00ba\u0001\u0010\"J\u0011\u0010\u00bb\u0001\u001a\u00020\u0006H\u0002\u00a2\u0006\u0005\u0008\u00bb\u0001\u0010\"J\u0011\u0010\u00bc\u0001\u001a\u00020\u000bH\u0002\u00a2\u0006\u0005\u0008\u00bc\u0001\u00100J\u001b\u0010\u00be\u0001\u001a\u00020\u000b2\u0007\u0010\u00bd\u0001\u001a\u00020:H\u0002\u00a2\u0006\u0006\u0008\u00be\u0001\u0010\u00bf\u0001J\u001b\u0010\u00c0\u0001\u001a\u00020\u000b2\u0007\u0010\u00bd\u0001\u001a\u00020:H\u0002\u00a2\u0006\u0006\u0008\u00c0\u0001\u0010\u00bf\u0001R\u0019\u0010\u00c2\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00a8\u0001R\u0019\u0010\u00c4\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00a8\u0001R\u0018\u0010\u00c8\u0001\u001a\u00030\u00c5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\u001a\u0010\u00cb\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R\u0019\u0010\u00cd\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0001\u0010\u00a8\u0001R\u001f\u0010\u00d1\u0001\u001a\u00020D8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001\u001a\u0005\u0008\u00d0\u0001\u0010FR\u001f\u0010\u00d4\u0001\u001a\u00020D8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00d2\u0001\u0010\u00cf\u0001\u001a\u0005\u0008\u00d3\u0001\u0010FR \u0010\u00d7\u0001\u001a\u00020y8BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d5\u0001\u0010\u00cf\u0001\u001a\u0006\u0008\u00d6\u0001\u0010\u00a1\u0001R\u001f\u0010\u00da\u0001\u001a\u00020D8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00d8\u0001\u0010\u00cf\u0001\u001a\u0005\u0008\u00d9\u0001\u0010FR \u0010\u00dd\u0001\u001a\u00020y8BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00db\u0001\u0010\u00cf\u0001\u001a\u0006\u0008\u00dc\u0001\u0010\u00a1\u0001R\u001f\u0010\u00e0\u0001\u001a\u00020p8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00de\u0001\u0010\u00cf\u0001\u001a\u0005\u0008\u00df\u0001\u0010rR \u0010\u00e3\u0001\u001a\u00020y8BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e1\u0001\u0010\u00cf\u0001\u001a\u0006\u0008\u00e2\u0001\u0010\u00a1\u0001R\u001c\u0010\u00e7\u0001\u001a\u0005\u0018\u00010\u00e4\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001R\u001b\u0010\u00ea\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u001b\u0010\u00ec\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00eb\u0001\u0010\u00e9\u0001R\u0019\u0010\u00ee\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0001\u0010\u00a8\u0001R\u001b\u0010\u00f0\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00ef\u0001R\u001b\u0010\u00f1\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u00ef\u0001R\u001b\u0010\u00f2\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u00ef\u0001R\u001a\u0010{\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u00ef\u0001R\u001b\u0010\u00f3\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u00ef\u0001R\u0019\u0010\u00f4\u0001\u001a\u00020@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u00ef\u0001R\u001b\u0010\u00f5\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00ef\u0001R\u0019\u0010\u00f6\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a8\u0001R\u0019\u0010\u00f8\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00f7\u0001R\u0019\u0010\u00fa\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f9\u0001\u0010\u00a8\u0001R\u0017\u0010\u00fc\u0001\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00fb\u0001\u0010\u00f7\u0001R\u0019\u0010\u00fe\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fd\u0001\u0010\u00f7\u0001R\u0019\u0010\u0080\u0002\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ff\u0001\u0010\u00a8\u0001R\u0019\u0010\u0081\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b9\u0001R\u0019\u0010\u0082\u0002\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00a8\u0001R!\u0010\u0085\u0002\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0002\u0010\u0084\u0002R!\u0010\u0086\u0002\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u0084\u0002R\'\u0010\u0088\u0002\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f7\u0001\u0010\u0087\u0002R\'\u0010\u008a\u0002\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0002\u0010\u0087\u0002R\'\u0010\u008c\u0002\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0002\u0010\u0087\u0002R!\u0010\u008e\u0002\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0002\u0010\u0084\u0002\u00a8\u0006\u0092\u0002"
    }
    d2 = {
        "Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mixLevel",
        "Lzfb;",
        "setMixLevel",
        "(I)V",
        "color1",
        "Landroid/graphics/BlendMode;",
        "blendMode1",
        "color2",
        "blendMode2",
        "color3",
        "blendMode3",
        "setCustomMix",
        "(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V",
        "",
        "getRightOutIconsVisiable",
        "()Z",
        "isRightIconVisible",
        "setRightOutIconsVisiable",
        "(Z)V",
        "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;",
        "config",
        "setLightTypeConfig",
        "(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V",
        "getSearchBarState",
        "()I",
        "fromState",
        "toState",
        "animation",
        "scaleHeight",
        "setSearchBarState",
        "(IIZLjava/lang/Boolean;)V",
        "",
        "imeHeight",
        "setImeHeight",
        "(F)V",
        "isBackIconVisible",
        "goSearchStateForCompose",
        "exitSearchStateCompose",
        "()V",
        "scale",
        "scaleButtonMode",
        "hideKeyboard",
        "Lkotlin/Function0;",
        "listener",
        "setOnRightIconClickListener",
        "(Lc74;)V",
        "setOnRightIcon2ClickListener",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "setOnSearchBarListener",
        "(Le74;)V",
        "setOnBackClickListener",
        "setOnSearchButtonModeClickListener",
        "setOnSearchBarInnerRightIconClickListener",
        "",
        "drawable",
        "setLeftIcon",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/widgetsliquid/view/OSLiquidButton;",
        "getLeftIconView",
        "()Lcom/transsion/widgetsliquid/view/OSLiquidButton;",
        "setRightIcon",
        "setRightIcon2",
        "getRightIconView",
        "getRightIcon2View",
        "hint",
        "setHint",
        "getText",
        "()Ljava/lang/String;",
        "Landroid/widget/AutoCompleteTextView;",
        "getEditTextView",
        "()Landroid/widget/AutoCompleteTextView;",
        "text",
        "setText",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "getDeleteButton",
        "()Landroid/view/View;",
        "getInnerRightIconView",
        "getBackView",
        "getSearchIconView",
        "iconRes",
        "setInnerRightIconRes",
        "isOnSearch",
        "elegant",
        "setTextHeightElegant",
        "max",
        "resId",
        "setInputMax",
        "(II)V",
        "resStr",
        "(ILjava/lang/String;)V",
        "offset",
        "Ljv9;",
        "startSearchForTransition",
        "(FF)Ljv9;",
        "()Ljv9;",
        "endSearchForTransition",
        "Landroid/widget/EditText;",
        "getEditText",
        "()Landroid/widget/EditText;",
        "requireSearchAnimManagerTrans",
        "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;",
        "getEditTextContainer",
        "()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "state",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "Lcom/transsion/widgetslib/widget/OSIconTextView;",
        "isCloseIcon",
        "innerRightIconRes",
        "changeIcon",
        "(Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;)V",
        "osLiquidSearchBar",
        "copyScale",
        "(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V",
        "nightMode",
        "setBlurNightMode",
        "forceBCEffect",
        "setForceBCEffect",
        "bcColor",
        "setDefaultBgColor",
        "forceBc",
        "setForceSATransEffect",
        "clickable",
        "enableEditTextClick",
        "O",
        "(Landroid/util/AttributeSet;)V",
        "P",
        "v",
        "id",
        "iconText",
        "u",
        "(ILjava/lang/String;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;",
        "size",
        "textColor",
        "textSize",
        "visibleState",
        "t",
        "(IILjava/lang/String;III)Lcom/transsion/widgetslib/widget/OSIconTextView;",
        "Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;",
        "s",
        "()Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;",
        "Landroid/view/ViewGroup;",
        "parent",
        "w",
        "(Landroid/view/ViewGroup;)Landroid/view/View;",
        "r",
        "()Lcom/transsion/widgetslib/widget/OSIconTextView;",
        "y",
        "showShadow",
        "setShadowShow",
        "getButtonModeHeight",
        "getSearchModeHeight",
        "W",
        "Z",
        "S",
        "isScaleHeight",
        "H",
        "(Ljava/lang/Boolean;)V",
        "N",
        "M",
        "isEntrance",
        "z",
        "getOutIconSize",
        "getLeftIconWidth",
        "getRightIconWidth",
        "getRightSingleIconWidth",
        "getRightIcon2Width",
        "getEditeTotalMarginStart",
        "E",
        "(Z)I",
        "F",
        "getEditeDefaultMarginStart",
        "getEditeDefaultMarginEnd",
        "x",
        "hostView",
        "a0",
        "(Landroid/view/View;)V",
        "b0",
        "b",
        "mHaveRightIcon",
        "c",
        "mIsRightOutIconsVisiable",
        "Lu97;",
        "d",
        "Lu97;",
        "liquidPressHelper",
        "e",
        "Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;",
        "searchEditText",
        "f",
        "mDuringShareAnim",
        "g",
        "Lyi5;",
        "getLeftIcon",
        "leftIcon",
        "h",
        "getRightIcon",
        "rightIcon",
        "i",
        "getButtonMode",
        "buttonMode",
        "j",
        "getRightIcon2",
        "rightIcon2",
        "k",
        "getInnerRightIcon",
        "innerRightIcon",
        "l",
        "getEditeTextContainer",
        "editeTextContainer",
        "m",
        "getInnerLeftIcon",
        "innerLeftIcon",
        "Landroid/text/TextWatcher;",
        "n",
        "Landroid/text/TextWatcher;",
        "mTextWatcher",
        "o",
        "Ljv9;",
        "expandAnimator",
        "p",
        "composeExitAnimator",
        "q",
        "keyboardShowPostPending",
        "Ljava/lang/String;",
        "leftIconRes",
        "rightIconRes",
        "rightIconRes2",
        "innerLeftIconRes",
        "hintText",
        "buttonModeIconRes",
        "showRightIcon",
        "I",
        "mCurrentSearchState",
        "A",
        "mRequireSearchAnimManagerTrans",
        "B",
        "singleIconDimen",
        "C",
        "edittextLayoutRes",
        "D",
        "isUseUnionBlur",
        "imeMaxHeight",
        "backIconAlphaAnimInitialized",
        "G",
        "Lc74;",
        "onRightIconClickListener",
        "onRightIcon2ClickListener",
        "Le74;",
        "mSearchBarClickListener",
        "J",
        "mSearchBarInnerRightIconClickListener",
        "K",
        "mSearchButtonModeClickListener",
        "L",
        "onBackClickListener",
        "Companion",
        "a",
        "SavedState",
        "widgetsliquid_release"
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
.field public static final Companion:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$a;

.field public static final LIQUID_SEARCHBAR_COMPOSE_TAB_CONTRACTED_STATE:I = 0x5

.field public static final LIQUID_SEARCHBAR_EXIT_SPRING_FINAL_POSITION:I = 0x7c

.field public static final LIQUID_SEARCHBAR_SCALE_MIN:F = 0.3f

.field public static final LIQUID_SEARCHBAR_STATE_ACTIVE_BK:I = 0x1

.field public static final LIQUID_SEARCHBAR_STATE_ACTIVE_BK_NO_IME:I = 0x6

.field public static final LIQUID_SEARCHBAR_STATE_ACTIVE_NO_BK:I = 0x2

.field public static final LIQUID_SEARCHBAR_STATE_COMPOSE_END_STATE:I = 0x4

.field public static final LIQUID_SEARCHBAR_STATE_COMPOSE_START_STATE:I = 0x3

.field public static final LIQUID_SEARCHBAR_STATE_ENTRANCE:I = 0x0

.field public static final LIQUID_SEARCHBAR_STATE_NONE:I = -0x1


# instance fields
.field public A:Z

.field public final B:I

.field public C:I

.field public D:Z

.field public E:F

.field public F:Z

.field public G:Lc74;

.field public H:Lc74;

.field public I:Le74;

.field public J:Le74;

.field public K:Le74;

.field public L:Lc74;

.field public b:Z

.field public c:Z

.field public final d:Lu97;

.field public e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

.field public f:Z

.field public final g:Lyi5;

.field public final h:Lyi5;

.field public final i:Lyi5;

.field public final j:Lyi5;

.field public final k:Lyi5;

.field public final l:Lyi5;

.field public final m:Lyi5;

.field public n:Landroid/text/TextWatcher;

.field public o:Ljv9;

.field public p:Ljv9;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->Companion:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Lu97;

    invoke-direct {p3}, Lu97;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->d:Lu97;

    .line 6
    new-instance p3, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$leftIcon$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$leftIcon$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->g:Lyi5;

    .line 7
    new-instance p3, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$rightIcon$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$rightIcon$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->h:Lyi5;

    .line 8
    new-instance p3, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$buttonMode$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$buttonMode$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->i:Lyi5;

    .line 9
    new-instance p3, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$rightIcon2$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$rightIcon2$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->j:Lyi5;

    .line 10
    new-instance p3, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$innerRightIcon$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$innerRightIcon$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->k:Lyi5;

    .line 11
    new-instance p3, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;

    invoke-direct {p3, p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$editeTextContainer$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/content/Context;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->l:Lyi5;

    .line 12
    new-instance p1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$innerLeftIcon$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$innerLeftIcon$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->m:Lyi5;

    .line 13
    new-instance p1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$c;

    invoke-direct {p1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$c;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->n:Landroid/text/TextWatcher;

    .line 14
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->w:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->x:Ljava/lang/String;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->y:Z

    const/16 p1, 0x3c

    .line 17
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->B:I

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->C:I

    const p1, 0x446fc000    # 959.0f

    .line 19
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->E:F

    .line 20
    new-instance p1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchBarClickListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchBarClickListener$1;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->I:Le74;

    .line 21
    new-instance p1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchButtonModeClickListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$mSearchButtonModeClickListener$1;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->K:Le74;

    .line 22
    new-instance p1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$onBackClickListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$onBackClickListener$1;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->L:Lc74;

    .line 23
    invoke-virtual {p0, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->O(Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->P(Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->W()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final A(FLcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZZIILf43;FF)V
    .locals 2

    const-string p7, "this$0"

    invoke-static {p1, p7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p8}, Ljava/lang/Math;->abs(F)F

    move-result p7

    div-float/2addr p7, p0

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    const/4 p8, 0x1

    int-to-float p8, p8

    sub-float/2addr p8, p7

    invoke-virtual {p0, p8}, Landroid/view/View;->setAlpha(F)V

    const p0, 0x3f333333    # 0.7f

    mul-float p9, p8, p0

    const v0, 0x3e99999a    # 0.3f

    add-float/2addr p9, v0

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v1

    invoke-virtual {v1, p9}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v1

    invoke-virtual {v1, p9}, Landroid/view/View;->setScaleY(F)V

    mul-float/2addr p0, p7

    add-float/2addr p0, v0

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, p7}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, p7}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p0, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->E(Z)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p7

    float-to-int p2, p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    sub-int/2addr p5, p6

    int-to-float p2, p5

    mul-float/2addr p2, p8

    int-to-float p3, p6

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-direct {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final B(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->attachPressAnim()V

    return-void
.end method

.method public static final C(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILf43;FF)V
    .locals 3

    const-string p4, "this$0"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int p4, p0, p1

    const/4 p6, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p4, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    sub-float/2addr p0, p5

    int-to-float p4, p4

    div-float/2addr p0, p4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0, p6, v0}, Lwn8;->j(FFF)F

    move-result p0

    :goto_0
    const/4 p4, 0x1

    int-to-float p4, p4

    sub-float v1, p4, p0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    float-to-int p5, p5

    iput p5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p5, p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, p0

    add-float/2addr p5, p1

    float-to-int p1, p5

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x64

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p3, 0x41a00000    # 20.0f

    cmpg-float p5, p1, p3

    const/4 v1, 0x5

    if-gtz p5, :cond_1

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p5

    int-to-float v2, v1

    mul-float/2addr p0, v2

    sub-float/2addr p4, p0

    invoke-virtual {p5, p4}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p4

    invoke-virtual {p4, p6}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p4

    invoke-virtual {p4, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p6}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, p6}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    cmpl-float p0, p1, p3

    const/high16 p3, 0x42200000    # 40.0f

    const/4 p4, 0x0

    const-string p5, "searchEditText"

    if-ltz p0, :cond_3

    cmpg-float p0, p1, p3

    if-gtz p0, :cond_3

    const/16 p0, 0x14

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p2, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_2

    invoke-static {p5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object p4, p0

    :goto_2
    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_3
    cmpl-float p0, p1, p3

    if-lez p0, :cond_5

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, p6}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p2, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_4

    invoke-static {p5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object p4, p0

    :goto_3
    invoke-virtual {p4, p6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_5
    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p2, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_6

    invoke-static {p5}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object p4, p0

    :goto_4
    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    return-void
.end method

.method public static final D(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILf43;ZFF)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p2, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of p1, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x11

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->attachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic G(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->F(Z)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getEditeTotalMarginEndNoAnim"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final I(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZLjava/lang/Boolean;FLf43;FF)V
    .locals 1

    const-string p7, "this$0"

    invoke-static {p2, p7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p0

    sub-float p0, p8, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x3f333333    # 0.7f

    mul-float p7, p0, p1

    const p9, 0x3e99999a    # 0.3f

    add-float/2addr p7, p9

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/view/View;->setScaleY(F)V

    const/4 p7, 0x1

    int-to-float v0, p7

    sub-float/2addr v0, p0

    mul-float/2addr p1, v0

    add-float/2addr p1, p9

    if-eqz p3, :cond_0

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p2, p7}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->E(Z)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    float-to-int p1, p8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p5, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p6, p0

    mul-float/2addr p6, v0

    add-float/2addr p6, p0

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0, p6}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0, p6}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method public static final J(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static final K(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IILf43;FF)V
    .locals 1

    const-string p5, "this$0"

    invoke-static {p2, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p5, p0

    sub-float/2addr p6, p5

    sub-int/2addr p1, p0

    int-to-float p0, p1

    div-float/2addr p6, p0

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const p7, 0x3f333333    # 0.7f

    mul-float/2addr p7, p6

    const v0, 0x3e99999a    # 0.3f

    add-float/2addr p7, v0

    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p7}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sub-int/2addr p3, p4

    int-to-float p3, p3

    mul-float/2addr p3, p6

    int-to-float p4, p4

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    mul-float/2addr p0, p6

    add-float/2addr p0, p5

    float-to-int p0, p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x64

    int-to-float p0, p0

    mul-float/2addr p0, p6

    const/high16 p1, 0x41a00000    # 20.0f

    cmpg-float p3, p0, p1

    const/4 p4, 0x5

    const/4 p5, 0x0

    const/high16 p7, 0x3f800000    # 1.0f

    if-gtz p3, :cond_0

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p3

    int-to-float v0, p4

    mul-float/2addr p6, v0

    invoke-virtual {p3, p6}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p3

    invoke-virtual {p3, p6}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p3

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p6

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p3

    invoke-virtual {p3, p7}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p3

    invoke-virtual {p3, p7}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    cmpl-float p1, p0, p1

    const/high16 p3, 0x42200000    # 40.0f

    const/4 p6, 0x0

    const-string v0, "searchEditText"

    if-ltz p1, :cond_2

    cmpg-float p1, p0, p3

    if-gtz p1, :cond_2

    const/16 p1, 0x14

    int-to-float p1, p1

    sub-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    int-to-float p1, p4

    mul-float/2addr p0, p1

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p2, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_1

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p6, p1

    :goto_1
    invoke-virtual {p6, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_2
    cmpl-float p0, p0, p3

    if-lez p0, :cond_4

    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, p7}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p2, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_3

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object p6, p0

    :goto_2
    invoke-virtual {p6, p7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_4
    invoke-direct {p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p2, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_5

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object p6, p0

    :goto_3
    invoke-virtual {p6, p5}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    return-void
.end method

.method public static final L(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static final Q(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_0

    const-string p1, "searchEditText"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->showWithFadeAnimation()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->a0(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->hideWithFadeAnimation()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->b0(Landroid/view/View;)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final R(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->x()V

    return-void
.end method

.method public static final T(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->q:Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const/4 v1, 0x0

    const-string v2, "searchEditText"

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->Z()V

    :cond_2
    return-void
.end method

.method public static final U(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;FF)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int p3, p2

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    const/4 v0, 0x5

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final V(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static final X(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const-string v0, "searchEditText"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_1

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->J:Le74;

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_4

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->Z()V

    :cond_5
    :goto_1
    return-void
.end method

.method public static final Y(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->I:Le74;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->K:Le74;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->Q(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dealDeleteIconVisibility(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->x()V

    return-void
.end method

.method public static final synthetic access$getEditeTextContainer(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImeMaxHeight$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->E:F

    return p0
.end method

.method public static final synthetic access$getLeftIcon(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMCurrentSearchState$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    return p0
.end method

.method public static final synthetic access$getMSearchBarClickListener$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Le74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->I:Le74;

    return-object p0
.end method

.method public static final synthetic access$getMSearchButtonModeClickListener$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Le74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->K:Le74;

    return-object p0
.end method

.method public static final synthetic access$getOnBackClickListener$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lc74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->L:Lc74;

    return-object p0
.end method

.method public static final synthetic access$getOnRightIcon2ClickListener$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lc74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->H:Lc74;

    return-object p0
.end method

.method public static final synthetic access$getOnRightIconClickListener$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Lc74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->G:Lc74;

    return-object p0
.end method

.method public static final synthetic access$isUseUnionBlur$p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->D:Z

    return p0
.end method

.method public static synthetic b(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState$lambda$30(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState$lambda$32(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    return-void
.end method

.method public static synthetic changeIcon$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    move p2, p5

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->changeIcon(Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: changeIcon"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILf43;ZFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->D(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILf43;ZFF)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->V(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->T(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    return-void
.end method

.method public static synthetic g(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZLjava/lang/Boolean;FLf43;FF)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->I(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZLjava/lang/Boolean;FLf43;FF)V

    return-void
.end method

.method private final getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->i:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-buttonMode>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method private final getButtonModeHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_search_bar_btn_mode_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_btn_mode_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private final getEditeDefaultMarginEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_space150:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private final getEditeDefaultMarginStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_space150:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private final getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->l:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-editeTextContainer>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    return-object p0
.end method

.method private final getEditeTotalMarginStart()I
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIconWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private final getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->m:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-innerLeftIcon>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method private final getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->k:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-innerRightIcon>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method private final getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->g:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-leftIcon>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    return-object p0
.end method

.method private final getLeftIconWidth()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getOutIconSize()I

    move-result p0

    return p0
.end method

.method private final getOutIconSize()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->h0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_pad_search_bar_out_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_out_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->h:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-rightIcon>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    return-object p0
.end method

.method private final getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->j:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-rightIcon2>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    return-object p0
.end method

.method private final getRightIcon2Width()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getOutIconSize()I

    move-result p0

    return p0
.end method

.method private final getRightIconWidth()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getOutIconSize()I

    move-result p0

    return p0
.end method

.method private final getRightSingleIconWidth()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getOutIconSize()I

    move-result p0

    return p0
.end method

.method private final getSearchModeHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getOutIconSize()I

    move-result p0

    return p0
.end method

.method public static synthetic goSearchStateForCompose$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->goSearchStateForCompose(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: goSearchStateForCompose"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic h(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->Y(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILf43;FF)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->C(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILf43;FF)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->U(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;FF)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->L(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V

    return-void
.end method

.method public static synthetic l(FLcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZZIILf43;FF)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->A(FLcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZZIILf43;FF)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->R(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->X(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->J(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->B(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;Lf43;ZFF)V

    return-void
.end method

.method public static synthetic q(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IILf43;FF)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->K(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IILf43;FF)V

    return-void
.end method

.method public static synthetic setCustomMix$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILjava/lang/Object;)V
    .locals 9

    if-nez p8, :cond_4

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setCustomMix"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic setSearchBarState$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IIZLjava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState(IIZLjava/lang/Boolean;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setSearchBarState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final setSearchBarState$lambda$30(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIconWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetsliquid/R$dimen;->os_space200:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getSearchModeHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final setSearchBarState$lambda$32(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIconWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetsliquid/R$dimen;->os_space200:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getSearchModeHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setShadowShow(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShowShadow(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShowShadow(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShowShadow(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShowShadow(Z)V

    return-void
.end method


# virtual methods
.method public final E(Z)I
    .locals 4

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->N()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIconWidth()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->M()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2Width()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->N()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->M()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final F(Z)I
    .locals 4

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIconWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginEnd()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2Width()I

    move-result v2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginEnd()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginEnd()I

    move-result v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginEnd()I

    move-result v1

    :cond_4
    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final H(Ljava/lang/Boolean;)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIconWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result v2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTotalMarginStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->N()Z

    move-result v5

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->M()Z

    move-result v6

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v8

    new-instance v9, Ljv9;

    new-instance v1, Lfz3;

    invoke-direct {v1}, Lfz3;-><init>()V

    invoke-direct {v9, v1}, Ljv9;-><init>(Lfz3;)V

    new-instance v1, Lkv9;

    invoke-direct {v1}, Lkv9;-><init>()V

    const v4, 0x3f4a3d71    # 0.79f

    invoke-virtual {v1, v4}, Lkv9;->g(F)Lkv9;

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-virtual {v1, v4}, Lkv9;->i(F)Lkv9;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v9, v1}, Ljv9;->z(Lkv9;)Ljv9;

    int-to-float v0, v2

    invoke-virtual {v9, v0}, Lf43;->m(F)Lf43;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    new-instance v0, Ly67;

    move-object v1, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Ly67;-><init>(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZLjava/lang/Boolean;F)V

    invoke-virtual {v9, v0}, Lf43;->b(Lf43$r;)Lf43;

    new-instance p1, Lz67;

    invoke-direct {p1, p0}, Lz67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v9, p1}, Lf43;->a(Lf43$q;)Lf43;

    invoke-virtual {v9}, Ljv9;->p()V

    iput-object v9, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-void
.end method

.method public final M()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final N()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final O(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar:[I

    const-string v2, "OSLiquidSearchBar"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_left_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->r:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_right_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->s:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_right_icon_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_inner_right_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_inner_left_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->v:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "getString(R.styleable.OS\u2026Bar_os_search_hint) ?: \"\""

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->w:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_button_mode_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$string;->os_search:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->x:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_init_state:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_edittext_layout:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->C:I

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_enable_union_effect:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->D:Z

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidSearchBar_os_search_has_right_out_icons:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final P(Landroid/util/AttributeSet;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->v()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    const v1, 0x3f866666    # 1.05f

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setScaleRatio(F)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->s:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->b:Z

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIcon(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->b:Z

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIcon(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->v:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->changeIcon(Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const/4 v1, 0x0

    const-string v2, "searchEditText"

    if-nez v0, :cond_6

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->w:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lolb;->P:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_7

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    new-instance v4, Ls67;

    invoke-direct {v4, p0}, Ls67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    iget v7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IIZLjava/lang/Boolean;ILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_9

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v1, v0

    :goto_2
    new-instance v0, La77;

    invoke-direct {v0, p0}, La77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSLiquidContainer:[I

    const-string v2, "OSLiquidContainer"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(s\u2026efStyleAttr, defStyleRes)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/widgetsliquid/R$styleable;->OSLiquidContainer_os_liquid_mixlevel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->D:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_3

    :cond_a
    const/4 v0, 0x2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setMixLevel(I)V

    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final S()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const/4 v1, 0x0

    const-string v2, "searchEditText"

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->Z()V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->q:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->q:Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_5

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    new-instance v0, Lx67;

    invoke-direct {v0, p0}, Lx67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final W()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$1;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnLiquidClickListener(Lc74;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$2;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnLiquidClickListener(Lc74;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$3;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnLiquidClickListener(Lc74;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    new-instance v1, Lb77;

    invoke-direct {v1, p0}, Lb77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_0

    const-string v0, "searchEditText"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lc77;

    invoke-direct {v1, p0}, Lc77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$6;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$setupClickListeners$6;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnLiquidClickListener(Lc74;)V

    return-void
.end method

.method public final Z()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const/4 v1, 0x0

    const-string v2, "searchEditText"

    if-nez v0, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_1
    return-void
.end method

.method public final a0(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->d:Lu97;

    const v0, 0x3f866666    # 1.05f

    invoke-virtual {p0, p1, v0}, Lu97;->h(Landroid/view/View;F)V

    return-void
.end method

.method public final b0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->d:Lu97;

    invoke-virtual {p0, p1}, Lu97;->i(Landroid/view/View;)V

    return-void
.end method

.method public final changeIcon(Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_icon_inner_close_size:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_icon_inner_cus_size:I

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final copyScale(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V
    .locals 2

    const-string v0, "osLiquidSearchBar"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final enableEditTextClick(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->f:Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_0

    const-string v0, "searchEditText"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->attachPressAnim()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    :goto_0
    return-void
.end method

.method public final endSearchForTransition()Ljv9;
    .locals 7

    .line 1
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IIZLjava/lang/Boolean;ILjava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-object p0
.end method

.method public final endSearchForTransition(FF)Ljv9;
    .locals 7

    .line 3
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IIZLjava/lang/Boolean;ILjava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-object p0
.end method

.method public final exitSearchStateCompose()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->p:Ljv9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIconWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetsliquid/R$dimen;->os_space200:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    move-object v2, v1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getSearchModeHeight()I

    move-result v1

    :goto_2
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonModeHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    new-instance v3, Ljv9;

    new-instance v4, Lfz3;

    invoke-direct {v4}, Lfz3;-><init>()V

    invoke-direct {v3, v4}, Ljv9;-><init>(Lfz3;)V

    new-instance v4, Lkv9;

    invoke-direct {v4}, Lkv9;-><init>()V

    const v5, 0x3f4a3d71    # 0.79f

    invoke-virtual {v4, v5}, Lkv9;->g(F)Lkv9;

    const/high16 v5, 0x43c80000    # 400.0f

    invoke-virtual {v4, v5}, Lkv9;->i(F)Lkv9;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v3, v4}, Ljv9;->z(Lkv9;)Ljv9;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lf43;->m(F)Lf43;

    new-instance v4, Lh77;

    invoke-direct {v4, v0, v2, p0, v1}, Lh77;-><init>(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;I)V

    invoke-virtual {v3, v4}, Lf43;->b(Lf43$r;)Lf43;

    new-instance v0, Li77;

    invoke-direct {v0, p0, v2}, Li77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;I)V

    invoke-virtual {v3, v0}, Lf43;->a(Lf43$q;)Lf43;

    invoke-virtual {v3}, Ljv9;->p()V

    iput-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->p:Ljv9;

    return-void
.end method

.method public final getBackView()Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    return-object p0
.end method

.method public final getDeleteButton()Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    return-object p0
.end method

.method public final getEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getEditTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getEditTextView()Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getInnerRightIconView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getDeleteButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getLeftIconView()Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    return-object p0
.end method

.method public final getRightIcon2View()Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    return-object p0
.end method

.method public final getRightIconView()Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    return-object p0
.end method

.method public final getRightOutIconsVisiable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    return p0
.end method

.method public final getSearchBarState()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    return p0
.end method

.method public final getSearchIconView()Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final goSearchStateForCompose(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonModeHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getSearchModeHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonModeHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIconWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetsliquid/R$dimen;->os_space200:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    new-instance v6, Ljv9;

    new-instance v0, Lfz3;

    invoke-direct {v0}, Lfz3;-><init>()V

    invoke-direct {v6, v0}, Ljv9;-><init>(Lfz3;)V

    new-instance v0, Lkv9;

    invoke-direct {v0}, Lkv9;-><init>()V

    const v3, 0x3f4a3d71    # 0.79f

    invoke-virtual {v0, v3}, Lkv9;->g(F)Lkv9;

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-virtual {v0, v3}, Lkv9;->i(F)Lkv9;

    int-to-float v3, v2

    invoke-virtual {v0, v3}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v6, v0}, Ljv9;->z(Lkv9;)Ljv9;

    int-to-float v0, v1

    invoke-virtual {v6, v0}, Lf43;->m(F)Lf43;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    new-instance p1, Lt67;

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lt67;-><init>(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;II)V

    invoke-virtual {v6, p1}, Lf43;->b(Lf43$r;)Lf43;

    new-instance p1, Lu67;

    invoke-direct {p1, p0}, Lu67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v6, p1}, Lf43;->a(Lf43$q;)Lf43;

    invoke-virtual {v6}, Ljv9;->p()V

    iput-object v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-void
.end method

.method public final hideKeyboard()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->q:Z

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const/4 v2, 0x0

    const-string v3, "searchEditText"

    if-nez v1, :cond_0

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_2

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_1
    return-void
.end method

.method public final isOnSearch()Z
    .locals 1

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

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

    const-string v0, "onAttachedToWindow"

    const-string v1, "OSLiquidSearchBar"

    invoke-static {v1, v0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->n:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_0

    const-string v0, "searchEditText"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_1
    const-string p0, "addTextChangedListener failed:mTextWatcher is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const-string v0, "onDetachedFromWindow"

    const-string v1, "OSLiquidSearchBar"

    invoke-static {v1, v0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->p:Ljv9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->d:Lu97;

    invoke-virtual {v0}, Lu97;->g()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->n:Landroid/text/TextWatcher;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_2

    const-string v0, "searchEditText"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_3
    const-string p0, "removeTextChangedListener failed:mTextWatcher is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    instance-of v0, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;->getSearchState()I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;IIZLjava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    invoke-virtual {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;->setSearchState(I)V

    return-object v1
.end method

.method public final r()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 8

    new-instance v7, Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "context"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/widget/OSIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget p0, Lcom/transsion/widgetsliquid/R$id;->button_mode:I

    invoke-virtual {v7, p0}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Landroid/view/View;->setClickable(Z)V

    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$string;->os_search:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$attr;->os_icon_primary:I

    sget v2, Lcom/transsion/widgetsliquid/R$color;->os_icon_primary_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_icon_medium_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, p0, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p0, 0x8

    invoke-virtual {v7, p0}, Landroid/view/View;->setVisibility(I)V

    return-object v7
.end method

.method public final requireSearchAnimManagerTrans(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->A:Z

    return-void
.end method

.method public final s()Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;
    .locals 7

    new-instance v6, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "context"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget p0, Lcom/transsion/widgetsliquid/R$id;->search_edit_text:I

    invoke-virtual {v6, p0}, Landroid/view/View;->setId(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_space075:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const-string p0, "sans-serif"

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p0, 0x10

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x3

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 p0, 0x1

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setInputType(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$color;->os_text_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$attr;->os_text_info:I

    sget v1, Lcom/transsion/widgetsliquid/R$color;->os_text_info_hios:I

    invoke-static {p0, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_fontsize_h2:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v6, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v6
.end method

.method public final scaleButtonMode(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonModeHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getSearchModeHeight()I

    move-result v1

    new-instance v2, Ljv9;

    new-instance v3, Lfz3;

    invoke-direct {v3}, Lfz3;-><init>()V

    invoke-direct {v2, v3}, Ljv9;-><init>(Lfz3;)V

    new-instance v3, Lkv9;

    invoke-direct {v3}, Lkv9;-><init>()V

    const v4, 0x3f4a3d71    # 0.79f

    invoke-virtual {v3, v4}, Lkv9;->g(F)Lkv9;

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-virtual {v3, v4}, Lkv9;->i(F)Lkv9;

    if-eqz p1, :cond_0

    int-to-float v4, v0

    goto :goto_0

    :cond_0
    int-to-float v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v2, v3}, Ljv9;->z(Lkv9;)Ljv9;

    if-eqz p1, :cond_1

    int-to-float p1, v1

    goto :goto_1

    :cond_1
    int-to-float p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Lf43;->m(F)Lf43;

    new-instance p1, Lf77;

    invoke-direct {p1, p0}, Lf77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v2, p1}, Lf43;->b(Lf43$r;)Lf43;

    new-instance p1, Lg77;

    invoke-direct {p1, p0}, Lg77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v2, p1}, Lf43;->a(Lf43$q;)Lf43;

    invoke-virtual {v2}, Ljv9;->p()V

    iput-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-void
.end method

.method public final setBlurNightMode(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBlurNightMode(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBlurNightMode(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBlurNightMode(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBlurNightMode(Z)V

    return-void
.end method

.method public final setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setCustomMix(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V

    return-void
.end method

.method public final setDefaultBgColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setDefaultBgColor(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setDefaultBgColor(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setDefaultBgColor(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setDefaultBgColor(I)V

    return-void
.end method

.method public final setForceBCEffect(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setForceBCEffect(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setForceBCEffect(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setForceBCEffect(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setForceBCEffect(Z)V

    return-void
.end method

.method public final setForceSATransEffect(Z)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    sget-boolean v0, Lolb;->O:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$color;->os_liq_container_sa_force_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setDefaultBgColor(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setForceBCEffect(Z)V

    :cond_0
    return-void
.end method

.method public final setHint(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hint"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setImeHeight(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->E:F

    return-void
.end method

.method public final setInnerRightIconRes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->x()V

    return-void
.end method

.method public final setInputMax(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setInputMax(ILjava/lang/String;)V

    return-void
.end method

.method public final setInputMax(ILjava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v0, :cond_0

    const-string v0, "searchEditText"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    :cond_0
    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/text/InputFilter;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final setLeftIcon(Ljava/lang/String;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    return-void
.end method

.method public final setMixLevel(I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    return-void
.end method

.method public final setOnBackClickListener(Lc74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->L:Lc74;

    return-void
.end method

.method public final setOnRightIcon2ClickListener(Lc74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->H:Lc74;

    return-void
.end method

.method public final setOnRightIconClickListener(Lc74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->G:Lc74;

    return-void
.end method

.method public final setOnSearchBarInnerRightIconClickListener(Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->J:Le74;

    return-void
.end method

.method public final setOnSearchBarListener(Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->I:Le74;

    return-void
.end method

.method public final setOnSearchButtonModeClickListener(Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->K:Le74;

    return-void
.end method

.method public final setRightIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final setRightIcon2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final setRightOutIconsVisiable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    return-void
.end method

.method public final setSearchBarState(IIZLjava/lang/Boolean;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSearchBarState: fromState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " toState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " animation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OSLiquidSearchBar"

    invoke-static {v1, v0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const-string v0, "fromState == toState return"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    const v0, 0x3f866666    # 1.05f

    const/4 v1, 0x0

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v7, "searchEditText"

    const/4 v8, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_1

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_2

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_3

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_4

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_5

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_5
    invoke-virtual {p1, v4}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    sget-boolean p1, Lolb;->P:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    if-nez p3, :cond_9

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_7

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_7
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTotalMarginStart()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->F(Z)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_8

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v8, p1

    :goto_0
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->hideKeyboard()V

    goto/16 :goto_12

    :cond_9
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_a

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v8, p1

    :goto_1
    invoke-virtual {v8, v6}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    invoke-virtual {p0, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->H(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->S()V

    goto/16 :goto_12

    :pswitch_1
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljv9;->c()V

    sget-object p1, Lzfb;->a:Lzfb;

    :cond_b
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->p:Ljv9;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljv9;->c()V

    sget-object p1, Lzfb;->a:Lzfb;

    :cond_c
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_d

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_d
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_e

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_e
    invoke-virtual {p1, v6}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_f

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_f
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_10

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_10
    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_11

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_11
    invoke-virtual {p1, v6}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->attachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setScaleRatio(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_12

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_12
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    if-nez p3, :cond_13

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ld77;

    invoke-direct {p1, p0}, Ld77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_13
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->scaleButtonMode(Z)V

    invoke-virtual {p0, v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->goSearchStateForCompose(Z)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_14

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_14
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_15

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_15
    move-object v8, p1

    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->hideKeyboard()V

    goto/16 :goto_12

    :pswitch_2
    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljv9;->c()V

    sget-object p2, Lzfb;->a:Lzfb;

    :cond_16
    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->p:Ljv9;

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljv9;->c()V

    sget-object p2, Lzfb;->a:Lzfb;

    :cond_17
    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p2, :cond_18

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v8

    :cond_18
    invoke-virtual {p2, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p2, :cond_19

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v8

    :cond_19
    invoke-virtual {p2, v4}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p2, :cond_1a

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v8

    :cond_1a
    invoke-virtual {p2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p2, :cond_1b

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v8

    :cond_1b
    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p2, :cond_1c

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v8

    :cond_1c
    invoke-virtual {p2, v4}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    sget-boolean p2, Lolb;->P:Z

    if-nez p2, :cond_1d

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_1d
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setScaleRatio(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    if-nez p3, :cond_1f

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_1e

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_4

    :cond_1e
    move-object v8, p1

    :goto_4
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    new-instance p1, Le77;

    invoke-direct {p1, p0}, Le77;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->x()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p2

    const/4 p3, 0x3

    if-ne p1, p3, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p2

    if-ne p1, p3, :cond_21

    move v1, v3

    :cond_21
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p2, :cond_22

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p2, v8

    :cond_22
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    invoke-virtual {p0, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->y(I)V

    if-ne p1, p3, :cond_23

    invoke-static {p0, v6, v4, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->goSearchStateForCompose$default(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZILjava/lang/Object;)V

    :cond_23
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->S()V

    goto/16 :goto_12

    :pswitch_3
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljv9;->c()V

    sget-object p1, Lzfb;->a:Lzfb;

    :cond_24
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->p:Ljv9;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljv9;->c()V

    sget-object p1, Lzfb;->a:Lzfb;

    :cond_25
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_26

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_26
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_27

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_27
    invoke-virtual {p1, v6}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_28

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_28
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_29

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_29
    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_2a

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_2a
    invoke-virtual {p1, v6}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->attachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    const/high16 p2, 0x3fa00000    # 1.25f

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setScaleRatio(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    if-nez p3, :cond_2c

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_2b

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_2b
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonModeHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonModeHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_2c
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_2d

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_2d
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_2e

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_2e
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerLeftIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getButtonMode()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->exitSearchStateCompose()V

    :goto_6
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_2f

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_7

    :cond_2f
    move-object v8, p1

    :goto_7
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->hideKeyboard()V

    goto/16 :goto_12

    :pswitch_4
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_30

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_30
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_31

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_31
    invoke-virtual {p1, v4}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_32

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_32
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_33

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_33
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_34

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_8

    :cond_34
    move-object v8, p1

    :goto_8
    invoke-virtual {v8, v4}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginEnd()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean p1, Lolb;->P:Z

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_35
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->S()V

    goto/16 :goto_12

    :pswitch_5
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_36

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_36
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_37

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_37
    invoke-virtual {p1, v4}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_38

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_38
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_39

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_39
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_3a

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_3a
    invoke-virtual {p1, v4}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    sget-boolean p1, Lolb;->P:Z

    if-nez p1, :cond_3b

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_3b
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    if-nez p3, :cond_3c

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTotalMarginStart()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {p0, v6, v4, v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->G(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZILjava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->S()V

    goto/16 :goto_12

    :cond_3c
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz p2, :cond_3e

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3d

    goto :goto_9

    :cond_3d
    move p2, v6

    goto :goto_a

    :cond_3e
    :goto_9
    move p2, v5

    :goto_a
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz p2, :cond_40

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->s:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3f

    goto :goto_b

    :cond_3f
    move v5, v6

    :cond_40
    :goto_b
    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-virtual {p0, p4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->H(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->S()V

    goto/16 :goto_12

    :pswitch_6
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_41

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_41
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_42

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_42
    invoke-virtual {p1, v6}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_43

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_43
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_44

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_44
    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_45

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v8

    :cond_45
    invoke-virtual {p1, v6}, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;->setShouldInterceptEvents(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->attachPressAnim()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon2()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz p2, :cond_47

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_46

    goto :goto_c

    :cond_46
    move p2, v6

    goto :goto_d

    :cond_47
    :goto_c
    move p2, v5

    :goto_d
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getRightIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->c:Z

    if-eqz p2, :cond_49

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->s:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_48

    goto :goto_e

    :cond_48
    move p2, v6

    goto :goto_f

    :cond_49
    :goto_e
    move p2, v5

    :goto_f
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    if-nez p3, :cond_4a

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->F(Z)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_4a
    sget-boolean p1, Lolb;->P:Z

    if-nez p1, :cond_4b

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_4b
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTextContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->detachPressAnim()V

    invoke-virtual {p0, v4}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z(Z)V

    :goto_10
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p1, :cond_4c

    invoke-static {v7}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_11

    :cond_4c
    move-object v8, p1

    :goto_11
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->hideKeyboard()V

    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextHeightElegant(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-void
.end method

.method public final startSearchForTransition()Ljv9;
    .locals 3

    .line 3
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState(IIZLjava/lang/Boolean;)V

    .line 4
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-object p0
.end method

.method public final startSearchForTransition(FF)Ljv9;
    .locals 1

    .line 1
    iget p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->setSearchBarState(IIZLjava/lang/Boolean;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-object p0
.end method

.method public final t(IILjava/lang/String;III)Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 8

    new-instance v7, Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "context"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/widget/OSIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, p1}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, p4}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p1, p5

    invoke-virtual {v7, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, p6}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7
.end method

.method public final u(ILjava/lang/String;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;
    .locals 7

    new-instance v6, Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "context"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setId(I)V

    const/16 p0, 0x8

    invoke-virtual {v6, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    const/4 p0, 0x1

    invoke-virtual {v6, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setSupportIconMirror(Z)V

    invoke-virtual {v6, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIcon(Ljava/lang/String;)V

    sget p0, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_icon_out_size:I

    invoke-virtual {v6, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIconSize(I)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/widgetsliquid/R$attr;->os_icon_primary:I

    sget p2, Lcom/transsion/widgetsliquid/R$color;->os_icon_primary_hios:I

    invoke-static {p0, p1, p2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string p1, "valueOf(\n               \u2026y_hios)\n                )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidButton;->setIconColor(Landroid/content/res/ColorStateList;)V

    return-object v6
.end method

.method public final v()V
    .locals 15

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_space125:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetsliquid/R$dimen;->os_space200:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v4, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v6, -0x1

    invoke-direct {v0, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_out_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v2, Lcom/transsion/widgetsliquid/R$id;->left_icon:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetsliquid/R$string;->os_back:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "resources.getString(R.string.os_back)"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v7}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u(ILjava/lang/String;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v7, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    sget-object v8, Lzfb;->a:Lzfb;

    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/transsion/widgetsliquid/R$id;->right_icon_2:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetsliquid/R$string;->os_add:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "resources.getString(R.string.os_add)"

    invoke-static {v7, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v7}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u(ILjava/lang/String;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v7, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v10, Lcom/transsion/widgetsliquid/R$id;->right_icon:I

    iput v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/transsion/widgetsliquid/R$dimen;->os_space150:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v10, v2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u(ILjava/lang/String;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v2

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v7, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v7, "context"

    invoke-static {v10, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v7, Lcom/transsion/widgetsliquid/R$id;->edite_text_container:I

    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v7, v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v8, Lcom/transsion/widgetsliquid/R$id;->inner_left_icon:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_icon_inner_cus_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/widgetsliquid/R$string;->os_search:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "resources.getString(R.string.os_search)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/transsion/widgetsliquid/R$attr;->os_text_tertiary:I

    sget v6, Lcom/transsion/widgetsliquid/R$color;->os_text_tertiary_hios:I

    invoke-static {v3, v5, v6}, Lolb;->m(Landroid/content/Context;II)I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t(IILjava/lang/String;III)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->w(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v8, Lcom/transsion/widgetsliquid/R$id;->inner_right_icon:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_icon_inner_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsliquid/R$string;->os_Close_fill:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "resources.getString(R.string.os_Close_fill)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lolb;->m(Landroid/content/Context;II)I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_icon_inner_close_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/16 v13, 0x8

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->t(IILjava/lang/String;III)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v4, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_search_bar_btn_mode_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->r()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800015

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final w(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->C:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->s()Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->C:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/widgetsliquid/R$id;->search_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Custom os_search_edittext_layout must contain OSAutoCompleteTextView with id search_edit_text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()V
    .locals 6

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->z:I

    const/4 v1, 0x3

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    const/4 v3, 0x0

    const-string v4, "searchEditText"

    if-nez v1, :cond_1

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->e:Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;

    if-nez v1, :cond_2

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetsliquid/R$string;->os_Close_fill:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->changeIcon(Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;)V

    :goto_1
    move v2, v5

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getInnerRightIcon()Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v2}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->changeIcon(Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final y(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->F:Z

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIcon()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$doBackIconAlphaAnim$1;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;I)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    return-void
.end method

.method public final z(Z)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getLeftIconWidth()I

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeDefaultMarginStart()I

    move-result v8

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->getEditeTotalMarginStart()I

    move-result v7

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->N()Z

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->M()Z

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v2, v0

    new-instance v0, Ljv9;

    new-instance v1, Lfz3;

    invoke-direct {v1}, Lfz3;-><init>()V

    invoke-direct {v0, v1}, Ljv9;-><init>(Lfz3;)V

    new-instance v1, Lkv9;

    invoke-direct {v1}, Lkv9;-><init>()V

    const v3, 0x3f4a3d71    # 0.79f

    invoke-virtual {v1, v3}, Lkv9;->g(F)Lkv9;

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-virtual {v1, v3}, Lkv9;->i(F)Lkv9;

    invoke-virtual {v1, v2}, Lkv9;->h(F)Lkv9;

    invoke-virtual {v0, v1}, Ljv9;->z(Lkv9;)Ljv9;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf43;->m(F)Lf43;

    new-instance v9, Lv67;

    move-object v1, v9

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v1 .. v8}, Lv67;-><init>(FLcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ZZZII)V

    invoke-virtual {v0, v9}, Lf43;->b(Lf43$r;)Lf43;

    new-instance p1, Lw67;

    invoke-direct {p1, p0}, Lw67;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V

    invoke-virtual {v0, p1}, Lf43;->a(Lf43$q;)Lf43;

    invoke-virtual {v0}, Ljv9;->p()V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->o:Ljv9;

    return-void
.end method
