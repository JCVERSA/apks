.class public Lcom/yandex/div/core/widget/LinearContainerLayout;
.super Lcom/yandex/div/internal/widget/DivViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/widget/AspectView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008>\n\u0002\u0010\u0007\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0013\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ-\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ7\u0010$\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010\'\u001a\u00020&H\u0014\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0018J\u0017\u0010*\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0018J\u001f\u0010+\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008+\u0010,J!\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008-\u0010.J9\u0010/\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00102\u001a\u00020\u00122\u0006\u00101\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00082\u00103J\u0017\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00085\u00106J\u001f\u00107\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00087\u0010\u001eJ\'\u0010:\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u001f\u0010<\u001a\u00020\u00122\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008<\u0010=J7\u0010@\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ/\u0010B\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ/\u0010D\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008D\u0010CJ\u001f\u0010E\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008E\u0010\u001eJ\u001f\u0010F\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008F\u0010GJ/\u0010K\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008K\u0010\u0011J\u001f\u0010N\u001a\u00020\u00122\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008N\u0010OJ\'\u0010P\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008P\u0010QJ/\u0010T\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008T\u0010UJ/\u0010V\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008V\u0010\u0011J\u001f\u0010W\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u001f\u0010Y\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008Y\u0010\u001eJ\'\u0010Z\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008Z\u0010;J\u001f\u0010[\u001a\u00020\u00122\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008[\u0010=J\u001f\u0010!\u001a\u00020\u00122\u0006\u0010\\\u001a\u00020\u00072\u0006\u0010]\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008!\u0010OJ\'\u0010^\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008^\u0010;J\'\u0010_\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008_\u0010;J\u001f\u0010#\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008#\u0010GJ\u0017\u0010\"\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u00106J\'\u0010b\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008b\u0010QJ\'\u0010c\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008c\u0010QJ\'\u0010d\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008d\u0010QJ\'\u0010f\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010e\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008f\u0010gJ\u001f\u0010h\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008h\u0010GJ\'\u0010j\u001a\u00020\u00072\u0006\u00109\u001a\u0002082\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008j\u0010kJ\u001f\u0010m\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020\u00072\u0006\u0010l\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008m\u0010\u001eJ\u001f\u0010p\u001a\u00020\u00072\u0006\u0010n\u001a\u00020\u00072\u0006\u0010o\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008p\u0010XJ\u0017\u0010q\u001a\u00020\u000f2\u0006\u00109\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008q\u0010rJ/\u0010s\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008s\u0010\u0011J/\u0010t\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008t\u0010\u0011J7\u0010u\u001a\u00020\u000f2\u0006\u00109\u001a\u0002082\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u001f\u0010z\u001a\u00020w2\u0006\u0010x\u001a\u00020w2\u0006\u0010y\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008z\u0010{R\u0016\u0010|\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010@R\u0016\u0010}\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010@R7\u0010\u0085\u0001\u001a\u00020\u00072\u0006\u0010~\u001a\u00020\u00078F@FX\u0086\u008e\u0002\u00a2\u0006\u001d\n\u0004\u0008*\u0010\u007f\u0012\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u001a\u0005\u0008\u0080\u0001\u0010\u001a\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u0017\u0010\u0086\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010@R\u0017\u0010\u0087\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010@R\u0017\u0010\u0088\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010@R\u0017\u0010\u0089\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010@R0\u0010\u008e\u0001\u001a\u00020w2\u0006\u0010~\u001a\u00020w8V@VX\u0096\u008e\u0002\u00a2\u0006\u0016\n\u0004\u00085\u0010\u007f\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008f\u0001\u0010@R\u0017\u0010\u0091\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010@R\u0017\u0010\u0092\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010@R\u0017\u0010\u0093\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010@R\u0018\u0010\u0095\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0094\u0001\u0010@R\u0017\u0010\u0096\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010@R\u001c\u0010\u009a\u0001\u001a\u00070\u0097\u0001R\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u0017\u0010\u009b\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010@R\u0017\u0010\u009c\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010@R7\u0010\u00a4\u0001\u001a\u0005\u0018\u00010\u009d\u00012\n\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008!\u0010\u009f\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\"\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R7\u0010\u00a8\u0001\u001a\u00020\u00072\u0006\u0010~\u001a\u00020\u00078F@FX\u0087\u008e\u0002\u00a2\u0006\u001d\n\u0004\u0008<\u0010\u007f\u0012\u0006\u0008\u00a7\u0001\u0010\u0084\u0001\u001a\u0005\u0008\u00a5\u0001\u0010\u001a\"\u0006\u0008\u00a6\u0001\u0010\u0082\u0001R\u001d\u0010\u00ab\u0001\u001a\t\u0012\u0004\u0012\u0002080\u00a9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008[\u0010\u00aa\u0001R\u001e\u0010\u00af\u0001\u001a\t\u0012\u0004\u0012\u0002080\u00ac\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u0017\u0010\u00b0\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010@R\u001d\u0010\u00b1\u0001\u001a\t\u0012\u0004\u0012\u0002080\u00ac\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008s\u0010\u00ae\u0001R\u0017\u0010\u00b2\u0001\u001a\u00020w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010FR\u0016\u0010\u00b4\u0001\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b3\u0001\u0010\u001aR\u0016\u0010\u00b6\u0001\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b5\u0001\u0010\u001aR\u001b\u0010\u00b8\u0001\u001a\u00020\u0007*\u0002088BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0094\u0001\u0010\u00b7\u0001R\u001a\u0010R\u001a\u00020\u0007*\u0002088BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0098\u0001\u0010\u00b7\u0001R\u0016\u0010\u00ba\u0001\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b9\u0001\u0010\u001aR\u0016\u0010\u00bb\u0001\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ad\u0001\u0010\u0014R\u001b\u0010\u00bd\u0001\u001a\u00020w*\u00020&8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008f\u0001\u0010\u00bc\u0001R\u001a\u0010\u00be\u0001\u001a\u00020w*\u00020&8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008 \u0010\u00bc\u0001\u00a8\u0006\u00bf\u0001"
    }
    d2 = {
        "Lcom/yandex/div/core/widget/LinearContainerLayout;",
        "Lcom/yandex/div/internal/widget/DivViewGroup;",
        "Lcom/yandex/div/core/widget/AspectView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "left",
        "top",
        "right",
        "bottom",
        "Lzfb;",
        "setDividerMargins",
        "(IIII)V",
        "",
        "shouldDelayChildPressedState",
        "()Z",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "getBaseline",
        "()I",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "Lcom/yandex/div/internal/widget/DivLayoutParams;",
        "i",
        "()Lcom/yandex/div/internal/widget/DivLayoutParams;",
        "f",
        "e",
        "g",
        "(Landroid/graphics/Canvas;I)V",
        "h",
        "(Landroid/graphics/Canvas;I)Lzfb;",
        "d",
        "(Landroid/graphics/Canvas;IIII)Lzfb;",
        "childIndex",
        "s",
        "(I)Z",
        "index",
        "j",
        "(I)I",
        "H",
        "Landroid/view/View;",
        "child",
        "A",
        "(Landroid/view/View;II)V",
        "u",
        "(Landroid/view/View;I)Z",
        "considerWidth",
        "considerHeight",
        "I",
        "(Landroid/view/View;IIZZ)V",
        "B",
        "(Landroid/view/View;IIZ)V",
        "E",
        "c",
        "F",
        "(Landroid/view/View;I)V",
        "heightSize",
        "heightSpec",
        "initialMaxWidth",
        "N",
        "delta",
        "spec",
        "J",
        "(II)Z",
        "O",
        "(III)V",
        "maxWidth",
        "height",
        "L",
        "(Landroid/view/View;III)V",
        "R",
        "n",
        "(II)I",
        "D",
        "z",
        "v",
        "dimension",
        "parentMeasureSpec",
        "C",
        "G",
        "measureSpec",
        "widthSize",
        "M",
        "P",
        "S",
        "measureChild",
        "a",
        "(Landroid/view/View;IZ)V",
        "Q",
        "width",
        "K",
        "(Landroid/view/View;II)I",
        "childSize",
        "V",
        "current",
        "additional",
        "p",
        "U",
        "(Landroid/view/View;)V",
        "y",
        "x",
        "T",
        "(Landroid/view/View;IIII)V",
        "",
        "weight",
        "size",
        "m",
        "(FI)F",
        "maxBaselineAscent",
        "maxBaselineDescent",
        "<set-?>",
        "Lgo8;",
        "getOrientation",
        "setOrientation",
        "(I)V",
        "getOrientation$annotations",
        "()V",
        "orientation",
        "totalLength",
        "totalConstrainedLength",
        "totalMatchParentLength",
        "childMeasuredState",
        "getAspectRatio",
        "()F",
        "setAspectRatio",
        "(F)V",
        "aspectRatio",
        "k",
        "dividerWidth",
        "dividerHeight",
        "dividerMarginTop",
        "dividerMarginBottom",
        "o",
        "dividerMarginLeft",
        "dividerMarginRight",
        "Lcom/yandex/div/internal/widget/DivViewGroup$b;",
        "q",
        "Lcom/yandex/div/internal/widget/DivViewGroup$b;",
        "offsetsHolder",
        "firstVisibleChildIndex",
        "lastVisibleChildIndex",
        "Landroid/graphics/drawable/Drawable;",
        "value",
        "Landroid/graphics/drawable/Drawable;",
        "getDividerDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setDividerDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "dividerDrawable",
        "getShowDividers",
        "setShowDividers",
        "getShowDividers$annotations",
        "showDividers",
        "",
        "Ljava/util/List;",
        "constrainedChildren",
        "",
        "w",
        "Ljava/util/Set;",
        "skippedMatchParentChildren",
        "maxCrossSize",
        "crossMatchParentChildren",
        "totalWeight",
        "getDividerHeightWithMargins",
        "dividerHeightWithMargins",
        "getDividerWidthWithMargins",
        "dividerWidthWithMargins",
        "(Landroid/view/View;)I",
        "maxHeight",
        "getVisibleChildCount",
        "visibleChildCount",
        "isVertical",
        "(Lcom/yandex/div/internal/widget/DivLayoutParams;)F",
        "fixedHorizontalWeight",
        "fixedVerticalWeight",
        "div_release"
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
.field public static final synthetic A:[Laf5;


# instance fields
.field public c:I

.field public d:I

.field public final e:Lgo8;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lgo8;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public final q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

.field public r:I

.field public s:I

.field public t:Landroid/graphics/drawable/Drawable;

.field public final u:Lgo8;

.field public final v:Ljava/util/List;

.field public final w:Ljava/util/Set;

.field public x:I

.field public final y:Ljava/util/Set;

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/yandex/div/core/widget/LinearContainerLayout;

    const-string v2, "orientation"

    const-string v3, "getOrientation()I"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "aspectRatio"

    const-string v5, "getAspectRatio()F"

    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v2

    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v5, "showDividers"

    const-string v6, "getShowDividers()I"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Laf5;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    sput-object v3, Lcom/yandex/div/core/widget/LinearContainerLayout;->A:[Laf5;

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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/DivViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    .line 6
    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->d:I

    const/4 p2, 0x0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-static {p2, p3, v0, p3}, Lodc;->d(Ljava/lang/Object;Le74;ILjava/lang/Object;)Lgo8;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->e:Lgo8;

    .line 8
    sget-object v1, Lcom/yandex/div/core/widget/AspectView;->x6:Lcom/yandex/div/core/widget/AspectView$Companion;

    invoke-virtual {v1}, Lcom/yandex/div/core/widget/AspectView$Companion;->a()Lgo8;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->j:Lgo8;

    .line 9
    new-instance v1, Lcom/yandex/div/internal/widget/DivViewGroup$b;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/yandex/div/internal/widget/DivViewGroup$b;-><init>(Lcom/yandex/div/internal/widget/DivViewGroup;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    .line 10
    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->r:I

    .line 11
    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->s:I

    .line 12
    invoke-static {p2, p3, v0, p3}, Lodc;->d(Ljava/lang/Object;Le74;ILjava/lang/Object;)Lgo8;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->u:Lgo8;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    .line 14
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->w:Ljava/util/Set;

    .line 15
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->y:Ljava/util/Set;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final D(II)V
    .locals 13

    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->d:I

    invoke-static {p1}, Lodc;->e(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v2

    div-float/2addr p2, v2

    invoke-static {p2}, Ls86;->c(F)I

    move-result p2

    invoke-static {p2}, Lodc;->h(I)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lodc;->h(I)I

    move-result p2

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Lodc;->e(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalPaddings$div_release()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_1
    invoke-static {v6, v4}, Lwn8;->d(II)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v4

    :goto_2
    const-string v9, "child"

    const/16 v10, 0x8

    if-ge v8, v7, :cond_5

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_4

    invoke-static {v11, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getDividerWidthWithMargins()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_3
    iget v9, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const-string v12, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v10, v12}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p0, v10}, Lcom/yandex/div/core/widget/LinearContainerLayout;->k(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    invoke-virtual {p0, v11, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->z(Landroid/view/View;II)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_7

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_6

    invoke-static {v11, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v11, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->b(Landroid/view/View;I)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    iget v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    if-lez v7, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getDividerWidthWithMargins()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_8
    iget v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->r(I)I

    move-result v7

    const v8, 0xffffff

    and-int/2addr v7, v8

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v1, v3

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    int-to-float p2, v7

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ls86;->c(F)I

    move-result v2

    invoke-static {v2}, Lodc;->h(I)I

    move-result p2

    :cond_a
    :goto_4
    invoke-virtual {p0, p1, v7, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->M(III)V

    if-nez v5, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v1, v3

    if-nez v1, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v4

    :goto_5
    if-ge v2, v1, :cond_d

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_c

    invoke-static {v3, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    move v5, v4

    :goto_6
    invoke-virtual {p0, v3, p2, v5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->a(Landroid/view/View;IZ)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalPaddings$div_release()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    if-eq v1, v0, :cond_e

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->d:I

    add-int/2addr v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->V(II)V

    :cond_e
    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_7
    if-ge v4, v0, :cond_11

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_10

    invoke-static {v1, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lodc;->h(I)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->Q(Landroid/view/View;I)V

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->r(I)I

    move-result p1

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    shl-int/lit8 v0, v0, 0x10

    invoke-static {v2, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method private final H(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    int-to-float p2, v0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v2

    div-float/2addr p2, v2

    invoke-static {p2}, Ls86;->c(F)I

    move-result p2

    invoke-static {p2}, Lodc;->h(I)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lodc;->h(I)I

    move-result p2

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    invoke-static {v0, v3}, Lwn8;->d(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    const-string v6, "child"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getDividerHeightWithMargins()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_4
    iget v6, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v7, v8}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p0, v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->l(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    invoke-virtual {p0, v5, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->A(Landroid/view/View;II)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->c(II)V

    iget-object v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->y:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->F(Landroid/view/View;I)V

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    if-lez v2, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getDividerHeightWithMargins()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_8
    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalPaddings$div_release()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    if-nez v1, :cond_a

    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-static {p2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    const v1, 0xffffff

    and-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ls86;->c(F)I

    move-result v2

    invoke-static {v2}, Lodc;->h(I)I

    move-result p2

    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->N(IIII)V

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v1, v4

    if-nez v1, :cond_b

    invoke-static {p2}, Lodc;->e(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->N(IIII)V

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->N(IIII)V

    :goto_6
    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    shl-int/lit8 v0, v0, 0x10

    invoke-static {v2, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method private final e(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {p0}, Lpdc;->f(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    const-string v5, "child"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->j(I)I

    move-result v5

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v3

    iget v3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->o:I

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v3

    iget v3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->k:I

    sub-int/2addr v6, v3

    iget v3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->p:I

    sub-int/2addr v6, v3

    sub-int/2addr v6, v5

    :goto_1
    invoke-virtual {p0, p1, v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;->h(Landroid/graphics/Canvas;I)Lzfb;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->o:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    goto :goto_4

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->p:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a()I

    move-result v1

    :goto_3
    sub-int/2addr v0, v1

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->p:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a()I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->o:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a()I

    move-result v1

    goto :goto_2

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->h(Landroid/graphics/Canvas;I)Lzfb;

    :cond_6
    return-void
.end method

.method private final f(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const-string v4, "child"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v2

    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->l:I

    sub-int/2addr v4, v2

    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->n:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->j(I)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-direct {p0, p1, v4}, Lcom/yandex/div/core/widget/LinearContainerLayout;->g(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->m:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->l:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a()I

    move-result v1

    sub-int v1, v0, v1

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->g(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method private final g(Landroid/graphics/Canvas;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->o:I

    add-int v4, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->p:I

    sub-int v6, v0, v1

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->l:I

    add-int v7, p2, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->d(Landroid/graphics/Canvas;IIII)Lzfb;

    return-void
.end method

.method private final getDividerHeightWithMargins()I
    .locals 2

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->l:I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->m:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->n:I

    add-int/2addr v0, p0

    return v0
.end method

.method private final getDividerWidthWithMargins()I
    .locals 2

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->k:I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->p:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->o:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic getOrientation$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShowDividers$annotations()V
    .locals 0

    return-void
.end method

.method private final getVisibleChildCount()I
    .locals 4

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->t()V

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final s(I)Z
    .locals 5

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getShowDividers()I

    move-result p0

    and-int/2addr p0, v2

    if-eqz p0, :cond_3

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->s:I

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getShowDividers()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getShowDividers()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, -0x1

    :goto_1
    const/4 v3, -0x1

    if-ge v3, v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(childIndex)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method private final x(IIII)V
    .locals 10

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalPaddings$div_release()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    sub-int/2addr p3, p1

    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalGravity$div_release()I

    move-result v0

    invoke-static {v0, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p2

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getVisibleChildCount()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->d(FII)V

    iget-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b()F

    move-result p1

    add-float/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lpdc;->c(Landroid/view/View;II)Ls15;

    move-result-object p1

    invoke-virtual {p1}, Ls15;->b()I

    move-result v0

    invoke-virtual {p1}, Ls15;->c()I

    move-result v1

    invoke-virtual {p1}, Ls15;->f()I

    move-result p1

    if-lez p1, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    if-gez p1, :cond_b

    if-gt v1, v0, :cond_b

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v2, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v2

    check-cast v9, Lcom/yandex/div/internal/widget/DivLayoutParams;

    sget-object v2, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {v9}, Lcom/yandex/div/internal/widget/DivLayoutParams;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->f(I)I

    move-result v2

    if-gez v2, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalGravity$div_release()I

    move-result v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    const/16 v5, 0x10

    if-eq v2, v5, :cond_7

    const/16 v5, 0x30

    if-eq v2, v5, :cond_5

    const/16 v5, 0x50

    if-eq v2, v5, :cond_4

    move v2, p2

    goto :goto_2

    :cond_4
    sub-int v2, p4, v7

    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    sub-int/2addr v2, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lcom/yandex/div/internal/widget/DivLayoutParams;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    if-eq v2, v5, :cond_6

    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v5

    goto :goto_1

    :cond_6
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_7
    sub-int v2, p4, v7

    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    :goto_2
    add-int v5, v4, v2

    invoke-static {p0}, Lpdc;->f(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, v0, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    :goto_3
    invoke-direct {p0, v2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getDividerWidthWithMargins()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p3, v2

    :cond_9
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v2, v2

    add-float/2addr p3, v2

    invoke-static {p3}, Ls86;->c(F)I

    move-result v4

    move-object v2, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->T(Landroid/view/View;IIII)V

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v2

    int-to-float v2, v8

    iget-object v3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr p3, v2

    :cond_a
    :goto_4
    if-eq v0, v1, :cond_b

    add-int/2addr v0, p1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private final y(IIII)V
    .locals 8

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result p1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    sub-int/2addr p4, p1

    int-to-float p1, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalGravity$div_release()I

    move-result v0

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getVisibleChildCount()I

    move-result v1

    invoke-virtual {p4, p1, v0, v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->d(FII)V

    iget-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->b()F

    move-result p1

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_6

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    const-string v0, "child"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lcom/yandex/div/internal/widget/DivLayoutParams;

    sget-object v0, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {v7}, Lcom/yandex/div/internal/widget/DivLayoutParams;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->e(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalGravity$div_release()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    sub-int v0, p3, v4

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_3
    sub-int v0, p3, v4

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    :goto_1
    add-int v2, v3, v0

    invoke-direct {p0, p4}, Lcom/yandex/div/core/widget/LinearContainerLayout;->s(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getDividerHeightWithMargins()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    :cond_4
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {p2}, Ls86;->c(F)I

    move-result v3

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->T(Landroid/view/View;IIII)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v0

    int-to-float v0, v6

    iget-object v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr p2, v0

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;II)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-static {p2}, Lodc;->e(I)Z

    move-result v2

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->u(Landroid/view/View;I)Z

    move-result v3

    if-eqz v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/yandex/div/core/widget/LinearContainerLayout;->I(Landroid/view/View;IIZZ)V

    return-void

    :cond_2
    if-nez v2, :cond_3

    iget-object p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->y:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v3, :cond_4

    iget-object p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->w:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_4
    return-void
.end method

.method public final B(Landroid/view/View;IIZ)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->e()I

    move-result v1

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/yandex/div/internal/widget/DivLayoutParams;->o(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 p2, -0x3

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->o(I)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    iget-object p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final C(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->f()I

    move-result v1

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/yandex/div/internal/widget/DivLayoutParams;->p(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 p2, -0x3

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->p(I)V

    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    iget-object p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final E(Landroid/view/View;IIZ)V
    .locals 8

    invoke-static {p3}, Lodc;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    invoke-static {p3}, Lodc;->h(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 p2, -0x1

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->h:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->h:I

    return-void
.end method

.method public final F(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->u(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lodc;->h(I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;->I(Landroid/view/View;IIZZ)V

    iget-object p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->w:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G(Landroid/view/View;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 p2, -0x1

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->h:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->h:I

    return-void
.end method

.method public final I(Landroid/view/View;IIZZ)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->E(Landroid/view/View;IIZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->B(Landroid/view/View;IIZ)V

    :goto_0
    iget p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {p3, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    iput p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->V(II)V

    :cond_2
    if-nez p5, :cond_3

    return-void

    :cond_3
    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    return-void
.end method

.method public final J(II)Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->w:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lodc;->f(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-gez p1, :cond_3

    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    if-gtz p1, :cond_5

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lodc;->e(I)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    if-lez p1, :cond_1

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    :cond_5
    :goto_1
    return v1
.end method

.method public final K(Landroid/view/View;II)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    sget-object v1, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalPaddings$div_release()I

    move-result v2

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result v3

    add-int/2addr v3, v2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->e()I

    move-result v6

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->a(IIIII)I

    move-result p2

    invoke-static {p3}, Lodc;->h(I)I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result p1

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p0

    return p0
.end method

.method public final L(Landroid/view/View;III)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez p3, :cond_0

    const/4 p3, -0x3

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lodc;->h(I)I

    move-result p2

    :cond_1
    :goto_0
    move v3, p2

    sget-object v2, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result p2

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p3

    add-int v4, p2, p3

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->f()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/internal/widget/DivViewGroup$a;->a(IIIII)I

    move-result p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p4}, Lodc;->h(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result p1

    and-int/lit16 p1, p1, -0x100

    invoke-static {p2, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    return-void
.end method

.method public final M(III)V
    .locals 3

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->q(Landroid/view/View;)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->J(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->P(III)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->S(III)V

    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_3
    return-void
.end method

.method public final N(IIII)V
    .locals 3

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->o(Landroid/view/View;)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->J(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->O(III)V

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->R(IIII)V

    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getVerticalPaddings$div_release()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_3
    return-void
.end method

.method public final O(III)V
    .locals 6

    invoke-virtual {p0, p3, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->n(II)I

    move-result p2

    if-ltz p2, :cond_2

    iget-object p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->o(Landroid/view/View;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->o(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p3, p1, v0, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->L(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v0, Lcom/yandex/div/core/widget/LinearContainerLayout$remeasureConstrainedHeightChildren$$inlined$sortByDescending$1;

    invoke-direct {v0}, Lcom/yandex/div/core/widget/LinearContainerLayout$remeasureConstrainedHeightChildren$$inlined$sortByDescending$1;-><init>()V

    invoke-static {p3, v0}, Lc81;->B(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    iget-object p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v4, v3

    iget v5, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v4, v5

    invoke-static {v4}, Ls86;->c(F)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    invoke-static {v4, v5}, Lwn8;->d(II)I

    move-result v4

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->e()I

    move-result v1

    invoke-static {v4, v1}, Lwn8;->g(II)I

    move-result v1

    iget v4, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p0, v0, p1, v4, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->L(Landroid/view/View;III)V

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    invoke-static {v1, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final P(III)V
    .locals 6

    invoke-virtual {p0, p3, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->n(II)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->q(Landroid/view/View;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->q(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p3, p2, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->K(Landroid/view/View;II)I

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v0, Lcom/yandex/div/core/widget/LinearContainerLayout$remeasureConstrainedWidthChildren$$inlined$sortByDescending$1;

    invoke-direct {v0}, Lcom/yandex/div/core/widget/LinearContainerLayout$remeasureConstrainedWidthChildren$$inlined$sortByDescending$1;-><init>()V

    invoke-static {p3, v0}, Lc81;->B(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    iget-object p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v4, v3

    iget v5, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p1

    mul-float/2addr v4, v5

    invoke-static {v4}, Ls86;->c(F)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Lwn8;->d(II)I

    move-result v4

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->f()I

    move-result v1

    invoke-static {v4, v1}, Lwn8;->g(II)I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->K(Landroid/view/View;II)I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    invoke-static {v1, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final Q(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->K(Landroid/view/View;II)I

    return-void
.end method

.method public final R(IIII)V
    .locals 9

    invoke-virtual {p0, p4, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->n(II)I

    move-result p2

    iget p4, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    const-string v6, "child"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v6, v7}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    if-lez p2, :cond_0

    invoke-virtual {p0, v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;->l(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    div-float/2addr v7, p4

    float-to-int v7, v7

    invoke-virtual {p0, v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;->l(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v8

    sub-float/2addr p4, v8

    sub-int/2addr v4, v7

    invoke-virtual {p0, v5, p1, v0, v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->L(Landroid/view/View;III)V

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->w:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v5, p1, v0, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->L(Landroid/view/View;III)V

    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->V(II)V

    iget v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v6}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v7, v5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result v5

    iput v5, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->getHorizontalPaddings$div_release()I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    sget-object p1, Lae5;->a:Lae5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lxi;->o()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Width of vertical container changed after remeasuring"

    invoke-static {p2, p1, p0}, Lxi;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final S(III)V
    .locals 9

    invoke-virtual {p0, p3, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->n(II)I

    move-result p1

    iget p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    const-string v6, "child"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v6, v7}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v7, v1, :cond_1

    if-lez p1, :cond_0

    invoke-virtual {p0, v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;->k(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    div-float/2addr v7, p3

    float-to-int v7, v7

    invoke-virtual {p0, v6}, Lcom/yandex/div/core/widget/LinearContainerLayout;->k(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v8

    sub-float/2addr p3, v8

    sub-int/2addr v4, v7

    invoke-virtual {p0, v5, p2, v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->K(Landroid/view/View;II)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5, p2, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->K(Landroid/view/View;II)I

    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, p2, v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->V(II)V

    iget v7, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result v6

    add-int/2addr v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result v6

    iput v6, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p0, v5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->U(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final T(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final U(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->j()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    iget v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->d:I

    return-void
.end method

.method public final V(II)V
    .locals 0

    invoke-static {p1}, Lodc;->e(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->K(Landroid/view/View;II)I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->V(II)V

    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->v(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    return-void
.end method

.method public final c(II)V
    .locals 8

    invoke-static {p1}, Lodc;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->y:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {p2, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p2}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->y:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->I(Landroid/view/View;IIZZ)V

    iget-object v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->w:Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;IIII)Lzfb;
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    add-int v1, p2, p4

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-int v3, p3, p5

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->k:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->l:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float v2, v1, v4

    float-to-int v2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-float v2, v3, p0

    float-to-int v2, v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->i()Lcom/yandex/div/internal/widget/DivLayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAspectRatio()F
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->j:Lgo8;

    sget-object v1, Lcom/yandex/div/core/widget/LinearContainerLayout;->A:[Laf5;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lgo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getBaseline()I
    .locals 3

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    :cond_1
    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_2
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0
.end method

.method public final getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->t:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getOrientation()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->e:Lgo8;

    sget-object v1, Lcom/yandex/div/core/widget/LinearContainerLayout;->A:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lgo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getShowDividers()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->u:Lgo8;

    sget-object v1, Lcom/yandex/div/core/widget/LinearContainerLayout;->A:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lgo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final h(Landroid/graphics/Canvas;I)Lzfb;
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->m:I

    add-int v5, v0, v1

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->k:I

    add-int v6, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->n:I

    sub-int v7, v0, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/widget/LinearContainerLayout;->d(Landroid/graphics/Canvas;IIII)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public i()Lcom/yandex/div/internal/widget/DivLayoutParams;
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->w()Z

    move-result p0

    const/4 v0, -0x2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-direct {p0, v0, v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;-><init>(II)V

    :goto_0
    return-object p0
.end method

.method public final j(I)I
    .locals 1

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->r:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->q:Lcom/yandex/div/internal/widget/DivViewGroup$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivViewGroup$b;->c()F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public final k(Lcom/yandex/div/internal/widget/DivLayoutParams;)F
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->d()F

    move-result v0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->m(FI)F

    move-result p0

    return p0
.end method

.method public final l(Lcom/yandex/div/internal/widget/DivLayoutParams;)F
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->i()F

    move-result v0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->m(FI)F

    move-result p0

    return p0
.end method

.method public final m(FI)F
    .locals 1

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method public final n(II)I
    .locals 1

    if-gez p1, :cond_0

    iget v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->h:I

    if-lez v0, :cond_0

    add-int/2addr p1, v0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lwn8;->d(II)I

    move-result p1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    invoke-static {p2}, Lodc;->e(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->h:I

    add-int/2addr p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final o(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->e()I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->f(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->e(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->y(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/yandex/div/core/widget/LinearContainerLayout;->x(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->x:I

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->g:I

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->z:F

    iput v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v1

    invoke-interface {v1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-gez v2, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_2
    iput v2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->r:I

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v1

    invoke-interface {v1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-gez v2, :cond_4

    invoke-static {}, Ly71;->u()V

    :cond_4
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_5

    move v3, v6

    goto :goto_4

    :cond_5
    move v3, v0

    :goto_4
    if-nez v3, :cond_6

    move v4, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iput v4, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->s:I

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->H(II)V

    goto :goto_5

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->D(II)V

    :goto_5
    iget-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->y:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->w:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final p(II)I
    .locals 0

    add-int/2addr p2, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final q(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->f()I

    move-result p0

    return p0
.end method

.method public final r(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    iget v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-static {v0, p1, p0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method

.method public setAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->j:Lgo8;

    sget-object v1, Lcom/yandex/div/core/widget/LinearContainerLayout;->A:[Laf5;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lgo8;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->t:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->k:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput v1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->l:I

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setDividerMargins(IIII)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->o:I

    iput p3, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->p:I

    iput p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->m:I

    iput p4, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->n:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->e:Lgo8;

    sget-object v1, Lcom/yandex/div/core/widget/LinearContainerLayout;->A:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lgo8;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowDividers(I)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->u:Lgo8;

    sget-object v1, Lcom/yandex/div/core/widget/LinearContainerLayout;->A:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lgo8;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final t(II)Z
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    invoke-static {p2}, Lodc;->e(I)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final u(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->t(II)Z

    move-result p0

    return p0
.end method

.method public final v(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->t(II)Z

    move-result p0

    return p0
.end method

.method public final w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->v(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/div/internal/widget/DivViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->G(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->C(Landroid/view/View;II)V

    :goto_0
    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {p2, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->i:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->h()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0, p3, p2}, Lcom/yandex/div/core/widget/LinearContainerLayout;->V(II)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->U(Landroid/view/View;)V

    iget p2, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->c()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->p(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/LinearContainerLayout;->f:I

    return-void
.end method
