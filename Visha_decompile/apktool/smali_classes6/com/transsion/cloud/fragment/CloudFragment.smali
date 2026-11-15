.class public Lcom/transsion/cloud/fragment/CloudFragment;
.super Lcom/transsion/cloud/fragment/CloudBaseFragment;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/clouddrive/cloudfragment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010!\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J!\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0003J3\u0010&\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0003J\u000f\u0010)\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0003J\u000f\u0010*\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0003J\u001d\u0010.\u001a\u00020\u00042\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0017\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00084\u00102J\u0017\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00086\u00102J\u001f\u00109\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00122\u0006\u00108\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008;\u0010\u0003J\u000f\u0010<\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008<\u0010\u0003J\'\u0010?\u001a\u00020\u00042\u0006\u0010=\u001a\u00020,2\u0006\u0010$\u001a\u00020#2\u0006\u0010>\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008A\u0010\u0003J\u000f\u0010B\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008B\u0010\u0003J\u0017\u0010D\u001a\u00020\u00042\u0006\u0010C\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008D\u00102J\u0017\u0010E\u001a\u00020#2\u0006\u0010C\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008G\u0010\u0003J\u000f\u0010H\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008H\u0010\u0003J\u000f\u0010I\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008I\u0010\u0003J\u000f\u0010J\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008J\u0010\u0003J\'\u0010N\u001a\u00020\u00042\u000e\u0010L\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010K2\u0006\u0010M\u001a\u00020\u0012H\u0003\u00a2\u0006\u0004\u0008N\u0010OJ\u000f\u0010P\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008P\u0010\u0003J\u000f\u0010Q\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008Q\u0010\u0003J#\u0010S\u001a\u0008\u0012\u0004\u0012\u00020,0+2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0002\u00a2\u0006\u0004\u0008S\u0010TJ\u001d\u0010V\u001a\u00020\u00042\u000c\u0010U\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0002\u00a2\u0006\u0004\u0008V\u0010/J%\u0010Y\u001a\u00020\u00042\u000c\u0010U\u001a\u0008\u0012\u0004\u0012\u00020,0+2\u0006\u0010X\u001a\u00020WH\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008[\u0010\u0014J\u0019\u0010^\u001a\u00020\u00042\u0008\u0010]\u001a\u0004\u0018\u00010\\H\u0016\u00a2\u0006\u0004\u0008^\u0010_J-\u0010d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010a\u001a\u00020`2\u0008\u0010c\u001a\u0004\u0018\u00010b2\u0008\u0010]\u001a\u0004\u0018\u00010\\H\u0016\u00a2\u0006\u0004\u0008d\u0010eJ!\u0010f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010]\u001a\u0004\u0018\u00010\\H\u0016\u00a2\u0006\u0004\u0008f\u0010gJ\'\u0010j\u001a\u00020\u00042\u0006\u0010h\u001a\u00020\u00122\u0006\u0010>\u001a\u00020#2\u0006\u0010i\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008j\u0010kJ\u001f\u0010n\u001a\u00020\u00042\u0006\u0010l\u001a\u00020#2\u0006\u0010m\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008n\u0010oJ\u000f\u0010p\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008p\u0010\u0003J\u0017\u0010r\u001a\u00020\u00042\u0006\u0010q\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008r\u00102J\u000f\u0010s\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008s\u0010\u0003J\u000f\u0010t\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008t\u0010\u0003J/\u0010y\u001a\u00020\u00042\u0006\u0010u\u001a\u00020#2\u0016\u0010x\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010w0v\"\u0004\u0018\u00010wH\u0016\u00a2\u0006\u0004\u0008y\u0010zJ\u0019\u0010}\u001a\u00020\u00042\u0008\u0010|\u001a\u0004\u0018\u00010{H\u0014\u00a2\u0006\u0004\u0008}\u0010~J\u0019\u0010\u007f\u001a\u00020\u00042\u0008\u0010|\u001a\u0004\u0018\u00010{H\u0014\u00a2\u0006\u0004\u0008\u007f\u0010~J\u0019\u0010\u0080\u0001\u001a\u00020\u00042\u0006\u0010h\u001a\u00020\u0012H\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u00102J\u0019\u0010\u0081\u0001\u001a\u00020\u00042\u0006\u0010h\u001a\u00020\u0012H\u0016\u00a2\u0006\u0005\u0008\u0081\u0001\u00102J%\u0010\u0083\u0001\u001a\u00020\u00042\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u0010i\u001a\u00020\u0012H\u0015\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u001a\u0010\u0086\u0001\u001a\u00020\u00042\u0007\u0010\u0085\u0001\u001a\u00020\u0012H\u0014\u00a2\u0006\u0005\u0008\u0086\u0001\u00102J\u0012\u0010\u0087\u0001\u001a\u00020#H\u0014\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J1\u0010\u008a\u0001\u001a\u00020\u00042\u0007\u0010\u0089\u0001\u001a\u00020#2\u0006\u0010=\u001a\u00020,2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0014\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u008b\u0001J\u0011\u0010\u008c\u0001\u001a\u00020\u0004H\u0016\u00a2\u0006\u0005\u0008\u008c\u0001\u0010\u0003J\u0011\u0010\u008d\u0001\u001a\u00020\u0004H\u0016\u00a2\u0006\u0005\u0008\u008d\u0001\u0010\u0003J\u000f\u0010\u008e\u0001\u001a\u00020\u0012\u00a2\u0006\u0005\u0008\u008e\u0001\u0010\u0014J\u000f\u0010\u008f\u0001\u001a\u00020\u0004\u00a2\u0006\u0005\u0008\u008f\u0001\u0010\u0003R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0095\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u009a\u0001R\u001c\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009a\u0001R\u001b\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u001c\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u001b\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u009e\u0001R\u001c\u0010\u00a4\u0001\u001a\u0005\u0018\u00010\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u001c\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u001b\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u009e\u0001R\u001c\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00aa\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001b\u0010\u00ad\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u001b\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u009e\u0001R\u001b\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u009e\u0001R\u001c\u0010\u00b2\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001c\u0010\u00b4\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b3\u0001R\u001b\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u009e\u0001R\u001b\u0010\u00b6\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u009e\u0001R\u001c\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00a5\u0001R\u001b\u0010\u00b8\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00ae\u0001R\u001b\u0010\u00b9\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00ae\u0001R\u001b\u0010\u00ba\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u00ae\u0001R\u001c\u0010\u00bc\u0001\u001a\u0005\u0018\u00010\u00bb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R!\u0010\u00be\u0001\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\u001c\u0010\u00c0\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u00b3\u0001R\u001c\u0010\u00c1\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00b3\u0001R\u001c\u0010\u00c2\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00b3\u0001R\u001c\u0010\u00c3\u0001\u001a\u0005\u0018\u00010\u00bb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00bd\u0001R\u001b\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u009e\u0001R\u001b\u0010\u00c5\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u009e\u0001R\u001b\u0010\u00c6\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u009e\u0001R\u001b\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u009e\u0001R\u001b\u0010\u00c8\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u009e\u0001R\u001b\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u009e\u0001R\u001b\u0010\u00ca\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u009e\u0001R\u001b\u0010\u00cb\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u009e\u0001R\u001b\u0010\u00cc\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0001\u0010\u009e\u0001R\u001c\u0010\u00ce\u0001\u001a\u0005\u0018\u00010\u00cd\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001R\u001c\u0010\u00d0\u0001\u001a\u0005\u0018\u00010\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0001\u0010\u00a5\u0001R\u001b\u0010\u00d1\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0001\u0010\u009e\u0001R\u001b\u0010\u00d2\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u009e\u0001R\u001c\u0010\u00d3\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00b3\u0001R\u001c\u0010\u00d4\u0001\u001a\u0005\u0018\u00010\u00bb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u00bd\u0001R\u0019\u0010\u00d5\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001R\u0019\u0010\u00d7\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u00d6\u0001R\u001b\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d8\u0001\u0010\u009e\u0001R\u001b\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u009e\u0001R\u001c\u0010\u00da\u0001\u001a\u0005\u0018\u00010\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00da\u0001\u0010\u00a5\u0001R\u001c\u0010\u00db\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00db\u0001\u0010\u00b3\u0001R\u001c\u0010\u00dc\u0001\u001a\u0005\u0018\u00010\u00a3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dc\u0001\u0010\u00a5\u0001R\u001b\u0010\u00dd\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u009e\u0001R\u001c\u0010\u00de\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00de\u0001\u0010\u00b3\u0001R\u001c\u0010\u00df\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00b3\u0001R\u001c\u0010\u00e0\u0001\u001a\u0005\u0018\u00010\u00bb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e0\u0001\u0010\u00bd\u0001R\u001b\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e1\u0001\u0010\u009e\u0001R\u001b\u0010\u00e2\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e2\u0001\u0010\u009e\u0001R\u0019\u0010\u00e3\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e3\u0001\u0010\u00d6\u0001R\u0019\u0010\u00e4\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R\u0019\u0010\u00e6\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e6\u0001\u0010\u00e5\u0001R,\u0010\u00e8\u0001\u001a\u0005\u0018\u00010\u00e7\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001\u001a\u0006\u0008\u00ea\u0001\u0010\u00eb\u0001\"\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001R\u0019\u0010\u00ee\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u00e5\u0001R#\u0010\u00f1\u0001\u001a\u000c\u0018\u00010\u00ef\u0001j\u0005\u0018\u0001`\u00f0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f1\u0001\u0010\u00f2\u0001R\u0019\u0010\u00f3\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f3\u0001\u0010\u00e5\u0001R\u0019\u0010\u00f4\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f4\u0001\u0010\u00e5\u0001R\u0019\u0010\u00f5\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f5\u0001\u0010\u00e5\u0001R\u001c\u0010\u00f7\u0001\u001a\u0005\u0018\u00010\u00f6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f7\u0001\u0010\u00f8\u0001R\u001b\u0010\u00f9\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f9\u0001\u0010\u009e\u0001R\u001d\u0010\u00fa\u0001\u001a\u00080\u00ef\u0001j\u0003`\u00f0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00fa\u0001\u0010\u00f2\u0001R\u001c\u0010\u00fc\u0001\u001a\u0005\u0018\u00010\u00fb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00fd\u0001R\u001c\u0010\u00ff\u0001\u001a\u0005\u0018\u00010\u00fe\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ff\u0001\u0010\u0080\u0002R\u001c\u0010\u0082\u0002\u001a\u0005\u0018\u00010\u0081\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0002\u0010\u0083\u0002R\u001c\u0010\u0084\u0002\u001a\u0005\u0018\u00010\u00f6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0002\u0010\u00f8\u0001R\u001c\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0002\u0010\u0087\u0002R\u001e\u0010\u0089\u0002\u001a\t\u0012\u0004\u0012\u00020\u00120\u0088\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0002\u0010\u008a\u0002\u00a8\u0006\u008b\u0002"
    }
    d2 = {
        "Lcom/transsion/cloud/fragment/CloudFragment;",
        "Lcom/transsion/cloud/fragment/CloudBaseFragment;",
        "<init>",
        "()V",
        "Lzfb;",
        "ensureCloudTabEditBackCallback",
        "refreshCloudDataWithDelay",
        "showFreezeView",
        "setViewsHide",
        "showFreezeDialog",
        "showFreezePrompt",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;)V",
        "initLoadingView",
        "initLoginView",
        "initNoContentView",
        "",
        "checkCloudSpace",
        "()Z",
        "initReceiveFreeSpaceInfo",
        "",
        "freeSpaceSize",
        "showReceiveFreeSpaceDialog",
        "(J)V",
        "goToReceiveFreeSpace",
        "goToPurchaseCloudSpace",
        "",
        "netText",
        "initNetWorkError",
        "(Landroid/view/View;Ljava/lang/String;)V",
        "hideNetWorkError",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter;",
        "adapter",
        "",
        "position",
        "child",
        "selectItem",
        "(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V",
        "hideLoadingView",
        "showLoadingView",
        "initViewModel",
        "",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "data",
        "setCloudDataNewData",
        "(Ljava/util/List;)V",
        "isAll",
        "refreshData",
        "(Z)V",
        "isEmpty",
        "updateUIForDataState",
        "disableScroll",
        "updateAppBarScrollBehavior",
        "isLoggedIn",
        "url",
        "updateLoginState",
        "(ZLjava/lang/String;)V",
        "refreshStorageData",
        "backToPage",
        "videoCloudData",
        "listFlag",
        "startPlay",
        "(Lcom/transsion/dbdata/beans/VideoCloudData;II)V",
        "updateTaskCount",
        "addVideoBarShowStateObserver",
        "show",
        "notifyVideoBarShowStateChange",
        "getBottomPadding",
        "(Z)I",
        "updateBottomOperationBar",
        "initBottomOperationBar",
        "cloudDownLoad",
        "cloudDelete",
        "",
        "videoCloudDataList",
        "isUpload",
        "markCloudTransmitList",
        "(Ljava/util/List;Z)V",
        "showLoginLoadingDialog",
        "dismissLoginLoadingDialog",
        "recentList",
        "filterRecentlyList",
        "(Ljava/util/List;)Ljava/util/List;",
        "recentlyData",
        "updateRecentlyListAfterDelete",
        "Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;",
        "lp",
        "applyRecentlyListData",
        "(Ljava/util/List;Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;)V",
        "onBackPressed",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "enter",
        "isVideo",
        "startEditMode",
        "(ZIZ)V",
        "offset",
        "scrollRange",
        "isAppBarLayoutExpand",
        "(II)V",
        "onResume",
        "hidden",
        "onHiddenChanged",
        "onSelectInViewPage",
        "userLogout",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "Lcom/transsion/dbdata/beans/VishaPalmUserInfo;",
        "vishaPalmUserInfo",
        "onUserLogin",
        "(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V",
        "onUserReLogin",
        "updateViewWhenEditMode",
        "editMode",
        "anchorView",
        "showSortPopupWindow",
        "(Landroid/view/View;Z)V",
        "preload",
        "loadData",
        "onLayoutId",
        "()I",
        "type",
        "refreshCloudListData",
        "(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V",
        "onPause",
        "onDestroyView",
        "isUploadSelectModel",
        "stopEdit",
        "mCloudDataAdapter",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter;",
        "Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;",
        "mCloudRecentlyDataAdapter",
        "Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;",
        "Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;",
        "mCloudFavoriteAdapter",
        "Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mRcCloudView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mRcRecentlyView",
        "mRcFavoriteView",
        "mRlFavoriteItemView",
        "Landroid/view/View;",
        "Lcom/transsion/widgets/CustomSwipeRefreshLayout;",
        "mRefreshView",
        "Lcom/transsion/widgets/CustomSwipeRefreshLayout;",
        "mIvSort",
        "Landroid/widget/ImageView;",
        "mIvAdd",
        "Landroid/widget/ImageView;",
        "Landroid/widget/FrameLayout;",
        "mCardViewAdd",
        "Landroid/widget/FrameLayout;",
        "mMenuLayout",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
        "mVideoMainLayout",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
        "mClCloudInfo",
        "Landroid/view/ViewGroup;",
        "mCloudUnLogin",
        "mIvTitleBarBack",
        "Landroid/widget/TextView;",
        "mTvTitle",
        "Landroid/widget/TextView;",
        "mNavTitle",
        "mIvSearch",
        "mIvTranslate",
        "mIvCloudExpand",
        "mClStorageInfo",
        "mRlRecentlyView",
        "mRlAllVideosView",
        "Landroid/widget/Button;",
        "mBtnLogin",
        "Landroid/widget/Button;",
        "mVideoCloudDataList",
        "Ljava/util/List;",
        "mTvStorageInfo",
        "mTvCloudUserName",
        "mTvFreeSpace",
        "mBtnFreeSpace",
        "mLlFreeSpace",
        "mVvFreeSpace",
        "mStorageInfoView",
        "mEmptyView",
        "mVlsContainer",
        "mLoginView",
        "mNoContentView",
        "mSvNoContentView",
        "mBtnUploadView",
        "Lcom/transsion/widgetslib/view/BadgeView;",
        "mUploadCountView",
        "Lcom/transsion/widgetslib/view/BadgeView;",
        "mUserIcon",
        "mUserIconView",
        "mNetErrorView",
        "mNetErrorText",
        "mBtnRetry",
        "mUploadedCount",
        "I",
        "mDownloadedCount",
        "mRootView",
        "mIvDownLoad",
        "mIvForOnContent",
        "mTvCloudStorageForNoContent",
        "mIvCloudExpandOnContent",
        "mStorageInfoViewNoContent",
        "mTvCloudUserNameNoContent",
        "mTvFreeSpaceOnContent",
        "mBtnFreeSpaceOnContent",
        "mLlFreeSpaceOnContent",
        "mVvFreeSpaceOnContent",
        "mOffset",
        "mIsNeedUploadData",
        "Z",
        "mIsShowNotNetWork",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;",
        "mRecyclerViewFastScroller",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;",
        "getMRecyclerViewFastScroller",
        "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;",
        "setMRecyclerViewFastScroller",
        "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V",
        "mIsShowTips",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "pollRunnable",
        "Ljava/lang/Runnable;",
        "mIsClosePopupWindowOnPause",
        "mDidFreezeDialog",
        "mIsCreateLogined",
        "Lcom/transsion/widgetslib/dialog/d;",
        "mFreezeDialog",
        "Lcom/transsion/widgetslib/dialog/d;",
        "freezeView",
        "mPopupWindowRunnable",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "mMainViewModel",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;",
        "mEditFootOperationBar",
        "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;",
        "Landroid/widget/LinearLayout;",
        "mAppBarContent",
        "Landroid/widget/LinearLayout;",
        "mLoginLoadingDialog",
        "Landroidx/activity/OnBackPressedCallback;",
        "mCloudTabEditBackCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "Landroidx/lifecycle/Observer;",
        "mVideoBarShowStateObserver",
        "Landroidx/lifecycle/Observer;",
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


# instance fields
.field private freezeView:Landroid/view/View;

.field private mAppBarContent:Landroid/widget/LinearLayout;

.field private mBtnFreeSpace:Landroid/widget/Button;

.field private mBtnFreeSpaceOnContent:Landroid/widget/Button;

.field private mBtnLogin:Landroid/widget/Button;

.field private mBtnRetry:Landroid/widget/Button;

.field private mBtnUploadView:Landroid/view/View;

.field private mCardViewAdd:Landroid/widget/FrameLayout;

.field private mClCloudInfo:Landroid/view/ViewGroup;

.field private mClStorageInfo:Landroid/view/ViewGroup;

.field private mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

.field private mCloudFavoriteAdapter:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

.field private mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

.field private mCloudTabEditBackCallback:Landroidx/activity/OnBackPressedCallback;

.field private mCloudUnLogin:Landroid/view/View;

.field private mDidFreezeDialog:Z

.field private mDownloadedCount:I

.field private mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

.field private mEmptyView:Landroid/view/View;

.field private mFreezeDialog:Lcom/transsion/widgetslib/dialog/d;

.field private mIsClosePopupWindowOnPause:Z

.field private mIsCreateLogined:Z

.field private mIsNeedUploadData:Z

.field private mIsShowNotNetWork:Z

.field private mIsShowTips:Z

.field private mIvAdd:Landroid/widget/ImageView;

.field private mIvCloudExpand:Landroid/widget/ImageView;

.field private mIvCloudExpandOnContent:Landroid/widget/ImageView;

.field private mIvDownLoad:Landroid/view/View;

.field private mIvForOnContent:Landroid/widget/ImageView;

.field private mIvSearch:Landroid/view/View;

.field private mIvSort:Landroid/view/View;

.field private mIvTitleBarBack:Landroid/view/View;

.field private mIvTranslate:Landroid/view/View;

.field private mLlFreeSpace:Landroid/view/View;

.field private mLlFreeSpaceOnContent:Landroid/view/View;

.field private mLoginLoadingDialog:Lcom/transsion/widgetslib/dialog/d;

.field private mLoginView:Landroid/view/View;

.field private mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field private mMenuLayout:Landroid/view/View;

.field private mNavTitle:Landroid/widget/TextView;

.field private mNetErrorText:Landroid/widget/TextView;

.field private mNetErrorView:Landroid/view/View;

.field private mNoContentView:Landroid/view/View;

.field private mOffset:I

.field private final mPopupWindowRunnable:Ljava/lang/Runnable;

.field private mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

.field private mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field private mRlAllVideosView:Landroid/view/ViewGroup;

.field private mRlFavoriteItemView:Landroid/view/View;

.field private mRlRecentlyView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/View;

.field private mStorageInfoView:Landroid/view/View;

.field private mStorageInfoViewNoContent:Landroid/view/View;

.field private mSvNoContentView:Landroid/view/View;

.field private mTvCloudStorageForNoContent:Landroid/widget/TextView;

.field private mTvCloudUserName:Landroid/widget/TextView;

.field private mTvCloudUserNameNoContent:Landroid/widget/TextView;

.field private mTvFreeSpace:Landroid/widget/TextView;

.field private mTvFreeSpaceOnContent:Landroid/widget/TextView;

.field private mTvStorageInfo:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

.field private mUploadedCount:I

.field private mUserIcon:Landroid/widget/ImageView;

.field private mUserIconView:Landroid/view/View;

.field private final mVideoBarShowStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCloudDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoMainLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mVlsContainer:Landroid/view/View;

.field private mVvFreeSpace:Landroid/view/View;

.field private mVvFreeSpaceOnContent:Landroid/view/View;

.field private pollRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mOffset:I

    new-instance v0, Lcom/transsion/cloud/fragment/CloudFragment$special$$inlined$Runnable$1;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/fragment/CloudFragment$special$$inlined$Runnable$1;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mPopupWindowRunnable:Ljava/lang/Runnable;

    new-instance v0, Ln01;

    invoke-direct {v0, p0}, Ln01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVideoBarShowStateObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$63(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lcom/transsion/cloud/fragment/CloudFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initBottomOperationBar$lambda$105(Lcom/transsion/cloud/fragment/CloudFragment;I)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/cloud/fragment/CloudFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->cloudDownLoad$lambda$106(Lcom/transsion/cloud/fragment/CloudFragment;Z)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Pair;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$75(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Pair;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezePrompt$lambda$8(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$38(Lcom/transsion/cloud/fragment/CloudFragment;)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Triple;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$69(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Triple;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Pair;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$79(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Pair;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshCloudListData$lambda$96(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic J0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$14(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->checkCloudSpace$lambda$51(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic L0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initNoContentView$lambda$49$lambda$46(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M0(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$78(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initNoContentView$lambda$49$lambda$48(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O0(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshCloudDataWithDelay$lambda$4(Lcom/transsion/cloud/fragment/CloudFragment;)V

    return-void
.end method

.method public static synthetic P0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$16(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$64(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$33(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic S0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$15(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T0(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$35(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic U0(Ljava/util/List;ZLjava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->markCloudTransmitList$lambda$108(Ljava/util/List;ZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic V0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezePrompt$lambda$9(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic W0(Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->onViewCreated$lambda$2(Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$81(Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$36(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$17(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$18(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$backToPage(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->backToPage()V

    return-void
.end method

.method public static final synthetic access$dismissLoginLoadingDialog(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->dismissLoginLoadingDialog()V

    return-void
.end method

.method public static final synthetic access$getFreezeView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMAppBarLayout$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public static final synthetic access$getMCardViewAdd$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMEditModeListener$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static final synthetic access$getMIsNeedUploadData$p(Lcom/transsion/cloud/fragment/CloudFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsNeedUploadData:Z

    return p0
.end method

.method public static final synthetic access$getMIvSort$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSort:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMLlFreeSpace$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLlFreeSpace:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMOffset$p(Lcom/transsion/cloud/fragment/CloudFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mOffset:I

    return p0
.end method

.method public static final synthetic access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    return-object p0
.end method

.method public static final synthetic access$getMTvTitle$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getMVvFreeSpace$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVvFreeSpace:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$isInEditMode$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static final synthetic access$refreshData(Lcom/transsion/cloud/fragment/CloudFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshData(Z)V

    return-void
.end method

.method public static final synthetic access$selectItem(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloud/fragment/CloudFragment;->selectItem(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V

    return-void
.end method

.method public static final synthetic access$updateBottomOperationBar(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->updateBottomOperationBar()V

    return-void
.end method

.method private final addVideoBarShowStateObserver()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVideoBarShowStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final applyRecentlyListData(Ljava/util/List;Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;",
            "Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public static synthetic b1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initReceiveFreeSpaceInfo$lambda$54(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final backToPage()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->editMode(Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->g()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic c1(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$71(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final checkCloudSpace()Z
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    cmp-long v0, v5, v3

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_2
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/netdisk/R$string;->visha_cloud_expand_message:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$string;->visha_cloud_expand:I

    new-instance v2, Lc11;

    invoke-direct {v2, p0}, Lc11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v1, Ld11;

    invoke-direct {v1}, Ld11;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final checkCloudSpace$lambda$50(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->goToPurchaseCloudSpace()V

    return-void
.end method

.method private static final checkCloudSpace$lambda$51(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private final cloudDelete()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Laz5;->a:Laz5$a;

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Laz5$a;->A(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Lcom/transsion/cloud/fragment/CloudFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/cloud/fragment/CloudFragment$a;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-static {v0, v1, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h0(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private final cloudDownLoad()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->markCloudTransmitList(Ljava/util/List;Z)V

    new-instance v0, Le6b;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    new-instance v3, La01;

    invoke-direct {v3, p0}, La01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-direct {v0, v2, v3}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    invoke-virtual {v0, v1}, Le6b;->b(Z)V

    return-void
.end method

.method private static final cloudDownLoad$lambda$106(Lcom/transsion/cloud/fragment/CloudFragment;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->startBatchDownload(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x46a

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic d1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$21(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method private final dismissLoginLoadingDialog()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLoginLoadingDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLoginLoadingDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissLoginLoadingDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CloudFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic e1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$41(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method private final ensureCloudTabEditBackCallback()V
    .locals 3

    sget-boolean v0, Lpp3;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudTabEditBackCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/cloud/fragment/CloudFragment$ensureCloudTabEditBackCallback$1;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/fragment/CloudFragment$ensureCloudTabEditBackCallback$1;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudTabEditBackCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudTabEditBackCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public static synthetic f1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$23(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method private final filterRecentlyList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g1(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$69$lambda$68$lambda$67$lambda$66(Lcom/transsion/cloud/fragment/CloudFragment;)V

    return-void
.end method

.method private final getBottomPadding(Z)I
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-nez v3, :cond_4

    if-nez p1, :cond_4

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    :cond_5
    return v2

    :cond_6
    const/16 v1, 0x73

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    if-eqz p1, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    if-nez p1, :cond_8

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_8

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    :cond_8
    const/16 v2, 0x3c

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p0, :cond_a

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    return v1
.end method

.method private final goToPurchaseCloudSpace()V
    .locals 4

    const-string v0, "goBuyCloudSpace"

    const-string v1, "CloudFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.transsion.cloud_client.OPEN_SPACE_UPGRADE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.transsion.cloudserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "https://cloud-disk.palm.tech/cloud-space"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity;->b0:Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity$a;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v3, ""

    invoke-virtual {v2, p0, v3}, Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ActivityNotFoundException"

    :cond_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final goToReceiveFreeSpace(J)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/transsion/cloud/fragment/CloudFragment$goToReceiveFreeSpace$1;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;JLwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public static synthetic h1(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshCloudListData$lambda$94(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z

    move-result p0

    return p0
.end method

.method private final hideLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVlsContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final hideNetWorkError()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic i1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$77(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final initBottomOperationBar()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->bottom_action_new_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setListFlag(I)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setAnim(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v1, Lv01;

    invoke-direct {v1, p0}, Lv01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static final initBottomOperationBar$lambda$105(Lcom/transsion/cloud/fragment/CloudFragment;I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->cloudDownLoad()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->cloudDelete()V

    :goto_0
    return-void
.end method

.method private final initLoadingView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->online_video_empty_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEmptyView:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget v1, Lcom/transsion/netdisk/R$id;->vls_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVlsContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private final initLoginView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLoginView:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->vb_login_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLoginView:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLoginView:Landroid/view/View;

    if-eqz p1, :cond_1

    sget v0, Lcom/transsion/netdisk/R$id;->sv_cloud_unlogin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudUnLogin:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private final initNetWorkError(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/netdisk/R$id;->vb_net_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorView:Landroid/view/View;

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->btn_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnRetry:Landroid/widget/Button;

    if-eqz p1, :cond_1

    new-instance v0, Lh11;

    invoke-direct {v0, p0}, Lh11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorText:Landroid/widget/TextView;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorView:Landroid/view/View;

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/netdisk/R$id;->tv_net_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    :cond_2
    iput-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorText:Landroid/widget/TextView;

    :cond_3
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNetErrorText:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private static final initNetWorkError$lambda$59$lambda$58(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final initNoContentView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/netdisk/R$id;->vb_no_content_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget v1, Lcom/transsion/netdisk/R$id;->sv_no_content_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mSvNoContentView:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_2

    sget v1, Lcom/transsion/netdisk/R$id;->btn_upload:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnUploadView:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_3

    sget v1, Lcom/transsion/netdisk/R$id;->cl_storage_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mStorageInfoViewNoContent:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_4

    sget v1, Lcom/transsion/netdisk/R$id;->ri_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_3

    :cond_4
    move-object p1, v0

    :goto_3
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvForOnContent:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_5

    sget v1, Lcom/transsion/netdisk/R$id;->tv_cloud_storage:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_4

    :cond_5
    move-object p1, v0

    :goto_4
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvCloudStorageForNoContent:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_6

    sget v1, Lcom/transsion/netdisk/R$id;->tv_cloud_user:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_5

    :cond_6
    move-object p1, v0

    :goto_5
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvCloudUserNameNoContent:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_7

    sget v1, Lcom/transsion/netdisk/R$id;->iv_cloud_storage_expand:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_6

    :cond_7
    move-object p1, v0

    :goto_6
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvCloudExpandOnContent:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_8

    sget v1, Lcom/transsion/netdisk/R$id;->tv_space_gift:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_7

    :cond_8
    move-object p1, v0

    :goto_7
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvFreeSpaceOnContent:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_9

    sget v1, Lcom/transsion/netdisk/R$id;->bt_space_gift:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    goto :goto_8

    :cond_9
    move-object p1, v0

    :goto_8
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnFreeSpaceOnContent:Landroid/widget/Button;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_a

    sget v1, Lcom/transsion/netdisk/R$id;->cl_cloud_space_gift:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_9

    :cond_a
    move-object p1, v0

    :goto_9
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLlFreeSpaceOnContent:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNoContentView:Landroid/view/View;

    if-eqz p1, :cond_b

    sget v0, Lcom/transsion/netdisk/R$id;->vv_cloud_space_gift:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVvFreeSpaceOnContent:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvCloudExpandOnContent:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    new-instance v0, Lx01;

    invoke-direct {v0, p0}, Lx01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mStorageInfoViewNoContent:Landroid/view/View;

    if-eqz p1, :cond_d

    new-instance v0, Ly01;

    invoke-direct {v0, p0}, Ly01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnUploadView:Landroid/view/View;

    if-eqz p1, :cond_e

    new-instance v0, Lz01;

    invoke-direct {v0, p0}, Lz01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    return-void
.end method

.method private static final initNoContentView$lambda$49$lambda$45(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->goToPurchaseCloudSpace()V

    return-void
.end method

.method private static final initNoContentView$lambda$49$lambda$46(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->goToPurchaseCloudSpace()V

    return-void
.end method

.method private static final initNoContentView$lambda$49$lambda$48(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p1

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->checkCloudSpace()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "upload_btn"

    invoke-static {p1}, Lcz5;->g(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/cloud/fragment/CloudUploadFragment;

    invoke-direct {p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, La64;->m(Lcom/transsion/playercommon/fragments/BaseFragment;Z)V

    return-void
.end method

.method private final initReceiveFreeSpaceInfo()V
    .locals 3

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->getVishaGiveawayFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->y()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lr01;

    invoke-direct {v2, p0}, Lr01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance p0, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {p0, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    const-string p0, "CloudFragment"

    const-string v0, "vishaGiveawayFlag false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static final initReceiveFreeSpaceInfo$lambda$54(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)Lzfb;
    .locals 6

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLlFreeSpace:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVvFreeSpace:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Laz5;->a:Laz5$a;

    const-string v3, "cloud_freesptip_show"

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Laz5$a;->D(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvFreeSpace:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/netdisk/R$string;->visha_get_free_cloud_space_limit_time:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnFreeSpace:Landroid/widget/Button;

    if-eqz v2, :cond_3

    new-instance v3, La11;

    invoke-direct {v3, p0, p1}, La11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLlFreeSpaceOnContent:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVvFreeSpaceOnContent:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvFreeSpaceOnContent:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    sget v2, Lcom/transsion/netdisk/R$string;->visha_get_free_cloud_space_limit_time:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnFreeSpaceOnContent:Landroid/widget/Button;

    if-eqz v0, :cond_b

    new-instance v1, Lb11;

    invoke-direct {v1, p0, p1}, Lb11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLlFreeSpace:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVvFreeSpace:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLlFreeSpaceOnContent:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVvFreeSpaceOnContent:Landroid/view/View;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initReceiveFreeSpaceInfo$lambda$54$lambda$52(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->showReceiveFreeSpaceDialog(J)V

    sget-object p0, Laz5;->a:Laz5$a;

    const-string p2, "cloud_freesptip_cl"

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Laz5$a;->D(Ljava/lang/String;J)V

    return-void
.end method

.method private static final initReceiveFreeSpaceInfo$lambda$54$lambda$53(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->showReceiveFreeSpaceDialog(J)V

    sget-object p0, Laz5;->a:Laz5$a;

    const-string p2, "cloud_freesptip_cl"

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Laz5$a;->D(Ljava/lang/String;J)V

    return-void
.end method

.method private final initView(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/netdisk/R$id;->ll_app_bar_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mAppBarContent:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/netdisk/R$id;->rc_all_video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/netdisk/R$id;->rc_recently_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/netdisk/R$id;->rc_favorite_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/netdisk/R$id;->rl_favorite_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlFavoriteItemView:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->app_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget v0, Lcom/transsion/netdisk/R$id;->pull_damping_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    sget v0, Lcom/transsion/netdisk/R$id;->iv_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSort:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->iv_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvAdd:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/netdisk/R$id;->top_menu_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mMenuLayout:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->video_main_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVideoMainLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    sget v0, Lcom/transsion/netdisk/R$id;->ll_cloud_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mClCloudInfo:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/netdisk/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTitleBarBack:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-boolean v3, Lpp3;->w:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget v0, Lcom/transsion/netdisk/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setMCheckBoxAll(Landroid/widget/CheckBox;)V

    sget v0, Lcom/transsion/netdisk/R$id;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->iv_translate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTranslate:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->iv_cloud_storage_expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvCloudExpand:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/netdisk/R$id;->ll_storage_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mClStorageInfo:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/netdisk/R$id;->rl_recently_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/netdisk/R$id;->rl_all_video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlAllVideosView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/netdisk/R$id;->btn_login:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnLogin:Landroid/widget/Button;

    sget v0, Lcom/transsion/netdisk/R$id;->tv_cloud_storage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvStorageInfo:Landroid/widget/TextView;

    sget v0, Lcom/transsion/netdisk/R$id;->tv_cloud_user:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvCloudUserName:Landroid/widget/TextView;

    sget v0, Lcom/transsion/netdisk/R$id;->tv_space_gift:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvFreeSpace:Landroid/widget/TextView;

    sget v0, Lcom/transsion/netdisk/R$id;->bt_space_gift:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnFreeSpace:Landroid/widget/Button;

    sget v0, Lcom/transsion/netdisk/R$id;->cl_cloud_space_gift:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLlFreeSpace:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->vv_cloud_space_gift:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVvFreeSpace:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->cl_storage_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mStorageInfoView:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->seal_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/BadgeView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    sget v0, Lcom/transsion/netdisk/R$id;->ri_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUserIcon:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/netdisk/R$id;->ll_icon_cloud:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUserIconView:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->iv_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvDownLoad:Landroid/view/View;

    if-eqz v0, :cond_4

    sget-boolean v3, Lpp3;->w:Z

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget v0, Lcom/transsion/netdisk/R$id;->tv_select_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvTitle:Landroid/widget/TextView;

    sget v0, Lcom/transsion/netdisk/R$id;->tv_nav_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNavTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mAppBarContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x19

    const/high16 v3, 0x420c0000    # 35.0f

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v0, v4, v1, v3}, Lpcc;->a(Landroid/view/View;FIF)V

    sget v0, Lcom/transsion/netdisk/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$c;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setHandleStateListener(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$f;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$f;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->setHandleAppBarLayoutStateListener(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTranslate:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvDownLoad:Landroid/view/View;

    if-eqz v0, :cond_9

    new-instance v1, Le11;

    invoke-direct {v1, p0}, Le11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUserIconView:Landroid/view/View;

    if-eqz v0, :cond_a

    new-instance v1, Lq11;

    invoke-direct {v1, p0}, Lq11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvCloudExpand:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    new-instance v1, Lt11;

    invoke-direct {v1, p0}, Lt11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mStorageInfoView:Landroid/view/View;

    if-eqz v0, :cond_c

    new-instance v1, Lu11;

    invoke-direct {v1, p0}, Lu11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvForOnContent:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    new-instance v1, Lv11;

    invoke-direct {v1, p0}, Lv11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    new-instance v1, Lw11;

    invoke-direct {v1, p0}, Lw11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTranslate:Landroid/view/View;

    if-eqz v0, :cond_f

    new-instance v1, Lx11;

    invoke-direct {v1, p0}, Lx11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnLogin:Landroid/widget/Button;

    if-eqz v0, :cond_10

    new-instance v1, Ly11;

    invoke-direct {v1, p0}, Ly11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    if-eqz v0, :cond_11

    new-instance v1, Lz11;

    invoke-direct {v1, p0}, Lz11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initReceiveFreeSpaceInfo()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvAdd:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    new-instance v1, La21;

    invoke-direct {v1, p0}, La21;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v1, Lf11;

    invoke-direct {v1, p0}, Lf11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTitleBarBack:Landroid/view/View;

    if-eqz v0, :cond_14

    new-instance v1, Lg11;

    invoke-direct {v1, p0}, Lg11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mBtnFreeSpace:Landroid/widget/Button;

    if-eqz v0, :cond_15

    new-instance v1, Li11;

    invoke-direct {v1}, Li11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$drawable;->bg_cloud_des:I

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_16
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mClCloudInfo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q0()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_18

    new-instance v1, Lcom/transsion/cloud/adapter/CloudItemDecoration;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/transsion/cloud/adapter/CloudItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_18
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_19

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_19
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1a
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/transsion/cloud/adapter/CloudRecentlyItemDecoration;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/transsion/cloud/adapter/CloudRecentlyItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1b
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1c

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v2}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1c
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1d
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1e

    new-instance v1, Lcom/transsion/cloud/adapter/CloudRecentlyItemDecoration;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/transsion/cloud/adapter/CloudRecentlyItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1e
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1f

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v2}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1f
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudFavoriteAdapter:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_20
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_22

    new-instance v1, Lmo1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmo1;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lmo1;->a(Ljava/lang/Boolean;)Lmo1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    :cond_22
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_23
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_24

    new-instance v1, Lj11;

    invoke-direct {v1, p0}, Lj11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_24
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_25

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$b;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->setOnDragListener(Lcom/transsion/cloud/adapter/CloudDataAdapter$a;)V

    :cond_25
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_26

    new-instance v1, Lk11;

    invoke-direct {v1, p0}, Lk11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_26
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_27

    new-instance v1, Ll11;

    invoke-direct {v1, p0}, Ll11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    :cond_27
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    if-eqz v0, :cond_28

    new-instance v1, Lm11;

    invoke-direct {v1, p0}, Lm11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_28
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudFavoriteAdapter:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    if-eqz v0, :cond_29

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$d;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->h(Ls74;)V

    :cond_29
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudFavoriteAdapter:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$e;

    invoke-direct {v1}, Lcom/transsion/cloud/fragment/CloudFragment$e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->g(Le74;)V

    :cond_2a
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlFavoriteItemView:Landroid/view/View;

    if-eqz v0, :cond_2b

    new-instance v1, Ln11;

    invoke-direct {v1}, Ln11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_2c

    new-instance v1, Lo11;

    invoke-direct {v1, p0}, Lo11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    :cond_2c
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_2d

    new-instance v1, Lp11;

    invoke-direct {v1, p0}, Lp11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnChildScrollUpCallback(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;)V

    :cond_2d
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2e

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2e
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2f

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$initView$29;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$initView$29;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2f
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSort:Landroid/view/View;

    if-eqz v0, :cond_30

    new-instance v1, Lr11;

    invoke-direct {v1, p0}, Lr11;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_30
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_31

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_31
    sget v0, Lcom/transsion/netdisk/R$id;->cd_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    return-void
.end method

.method private static final initView$lambda$13(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/transsion/cloud/fragment/CloudDownloadMainFragment;

    invoke-direct {p1}, Lcom/transsion/cloud/fragment/CloudDownloadMainFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/fragment/CloudDownloadMainFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p0()V

    return-void
.end method

.method private static final initView$lambda$14(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->P()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->C(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$15(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->goToPurchaseCloudSpace()V

    return-void
.end method

.method private static final initView$lambda$16(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->goToPurchaseCloudSpace()V

    return-void
.end method

.method private static final initView$lambda$17(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->P()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->C(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$18(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-direct {p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, La64;->m(Lcom/transsion/playercommon/fragments/BaseFragment;Z)V

    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p0}, Laz5$a;->p()V

    return-void
.end method

.method private static final initView$lambda$19(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, ""

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->j0(Ljava/lang/String;IZZ)Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-static {p0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method private static final initView$lambda$21(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showLoginLoadingDialog()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->d0(Landroid/app/Activity;)V

    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p0}, Laz5$a;->k()V

    return-void
.end method

.method private static final initView$lambda$23(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p1

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/cloud/activity/SearchCloudActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "source"

    const-string v1, "cloud page"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p0}, Laz5$a;->q()V

    return-void
.end method

.method private static final initView$lambda$25(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "upload_btn"

    invoke-static {p1}, Lcz5;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p1

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->checkCloudSpace()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/transsion/cloud/fragment/CloudUploadFragment;

    invoke-direct {p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, La64;->m(Lcom/transsion/playercommon/fragments/BaseFragment;Z)V

    return-void
.end method

.method private static final initView$lambda$26(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-interface {p1, v2, v3, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->updateBottomOperationBar()V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    sget v2, Lcom/transsion/netdisk/R$string;->items:I

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method private static final initView$lambda$27(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->backToPage()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :goto_0
    return-void
.end method

.method private static final initView$lambda$28(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final initView$lambda$31(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->g0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final initView$lambda$33(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->selectItem(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-interface {p1, p3, v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->updateBottomOperationBar()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    :cond_3
    move-object p3, p2

    :goto_2
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, p2

    :goto_3
    invoke-static {p3, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->J()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_6

    sget p2, Lcom/transsion/netdisk/R$string;->visha_upload_video:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_9

    sget v0, Lcom/transsion/netdisk/R$string;->items:I

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_8
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getParentFileId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_b

    move v2, v1

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object p2, Laz5;->a:Laz5$a;

    invoke-static {v3, v4, v1}, Lcz5;->a(JZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_c

    const-string v1, "own"

    goto :goto_4

    :cond_c
    const-string v1, "shared"

    :goto_4
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Laz5$a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/16 p2, 0x32

    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->startPlay(Lcom/transsion/dbdata/beans/VideoCloudData;II)V

    :cond_e
    :goto_5
    return-void
.end method

.method private static final initView$lambda$34(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_item_more:I

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    sget-object p2, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lm21;->a:Lm21;

    invoke-virtual {p0}, Lm21;->d()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->showMenuDialog(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->o0(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Laz5$a;->m(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final initView$lambda$35(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_5

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string p2, "medialibrary"

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getParentFileId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "shared"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "own"

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcz5;->b(JZ)F

    move-result v0

    sget-object v1, Laz5;->a:Laz5$a;

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Laz5$a;->o(Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3ee

    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->startPlay(Lcom/transsion/dbdata/beans/VideoCloudData;II)V

    :cond_5
    return-void
.end method

.method private static final initView$lambda$36(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p0

    const-string v0, "/clouddrive/medialibrarylistactivity"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p0}, Laz5$a;->f()V

    return-void
.end method

.method private static final initView$lambda$38(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->c0(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/cloud/fragment/CloudFragment$initView$lambda$38$$inlined$Runnable$1;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/fragment/CloudFragment$initView$lambda$38$$inlined$Runnable$1;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final initView$lambda$40(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v3, :cond_1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    instance-of v3, p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_4
    move p1, v0

    :goto_4
    if-ltz p1, :cond_6

    :cond_5
    move p1, p2

    goto :goto_5

    :cond_6
    move p1, v0

    :goto_5
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_7

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    goto :goto_6

    :cond_7
    move v3, v0

    :goto_6
    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_8
    move-object v4, v2

    :goto_7
    invoke-static {v4, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_9
    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p1, :cond_b

    if-nez v3, :cond_b

    if-eqz v4, :cond_b

    if-nez p0, :cond_a

    goto :goto_8

    :cond_a
    move p2, v0

    :cond_b
    :goto_8
    return p2
.end method

.method private static final initView$lambda$41(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->showSortPopupWindow(Landroid/view/View;Z)V

    return-void
.end method

.method private final initViewModel()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lf21;

    invoke-direct {v2, p0}, Lf21;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Ld01;

    invoke-direct {v2, p0}, Ld01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Le01;

    invoke-direct {v2, p0}, Le01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lf01;

    invoke-direct {v2, p0}, Lf01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lg01;

    invoke-direct {v2, p0}, Lg01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lh01;

    invoke-direct {v2, p0}, Lh01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->P()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Li01;

    invoke-direct {v2, p0}, Li01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lj01;

    invoke-direct {v2, p0}, Lj01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->E()Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getAllUploadedTaskLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lk01;

    invoke-direct {v2, p0}, Lk01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lm01;

    invoke-direct {v2, p0}, Lm01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lb01;

    invoke-direct {v3, p0}, Lb01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    new-instance v4, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v4, v3}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    new-instance v1, Lc01;

    invoke-direct {v1}, Lc01;-><init>()V

    new-instance v2, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v2, v1}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final initViewModel$lambda$62(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    :cond_0
    sget p0, Lcom/transsion/netdisk/R$string;->network_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$63(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlAllVideosView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mSvNoContentView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlAllVideosView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    iget-boolean v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Triple;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mSvNoContentView:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mSvNoContentView:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$64(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showLoadingView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->hideLoadingView()V

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$69(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Triple;)Lzfb;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/transsion/cloud/fragment/CloudFragment;->setCloudDataNewData(Ljava/util/List;)V

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->R()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->updateUIForDataState(Z)V

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-ne v2, v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lcom/transsion/cloud/fragment/CloudFragment;->updateUIForDataState(Z)V

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-ne v2, v1, :cond_6

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :cond_5
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_6
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_c

    iget-boolean v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_7
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->g()V

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->setCloudDataNewData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ld21;

    invoke-direct {v0, p0}, Ld21;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$69$lambda$68$lambda$67$lambda$66(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->refreshScrollerBar()V

    :cond_0
    return-void
.end method

.method private static final initViewModel$lambda$71(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/high16 v1, 0x41d80000    # 27.0f

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->filterRecentlyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    if-eqz v1, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_9
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$74(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/high16 v1, 0x41d80000    # 27.0f

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlFavoriteItemView:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlFavoriteItemView:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudFavoriteAdapter:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_a
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_b

    goto :goto_2

    :cond_b
    const v2, 0x800003

    :goto_2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$75(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Pair;)Lzfb;
    .locals 1

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->updateLoginState(ZLjava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$77(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)Lzfb;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvStorageInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvCloudStorageForNoContent:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setMIsCloudContentShow(Z)V

    sget-object v1, Laz5;->a:Laz5$a;

    invoke-static {}, Lcom/transsion/palmsdk/b;->m()Ljava/lang/String;

    move-result-object v3

    const-string p0, "getPalmIdUniqueId(...)"

    invoke-static {v3, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v6

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Laz5$a;->g(ILjava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$78(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;
    .locals 6

    iget v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadedCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->L()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    check-cast v2, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    instance-of v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v5, :cond_3

    move-object v3, v2

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->R()I

    move-result v3

    iget v5, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mOffset:I

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_5

    invoke-direct {p0, v4}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshData(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->m0(J)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-direct {p0, v4}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshData(Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadedCount:I

    :cond_8
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$79(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/Pair;)Lzfb;
    .locals 1

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/netdisk/R$string;->network_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initNetWorkError(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->hideNetWorkError()V

    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$80(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezeDialog()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshData(Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final initViewModel$lambda$81(Ljava/lang/Boolean;)Lzfb;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lm21;->a:Lm21;

    invoke-virtual {p0}, Lm21;->d()V

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic j1(Lcom/transsion/cloud/fragment/CloudFragment;JLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/cloud/fragment/CloudFragment;->showReceiveFreeSpaceDialog$lambda$55(Lcom/transsion/cloud/fragment/CloudFragment;JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k1(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$74(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$25(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$40(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final mVideoBarShowStateObserver$lambda$102(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method private final markCloudTransmitList(Ljava/util/List;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    new-instance v0, Lb21;

    invoke-direct {v0, p1, p2}, Lb21;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lc21;

    invoke-direct {v0, p1, p2}, Lc21;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method private static final markCloudTransmitList$lambda$107(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Long;
    .locals 1

    const-string v0, "videoList"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcz5;->c(Ljava/util/List;Z)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static final markCloudTransmitList$lambda$108(Ljava/util/List;ZLjava/lang/Long;)V
    .locals 2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcz5;->f(JIZ)V

    return-void
.end method

.method public static synthetic n1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->initReceiveFreeSpaceInfo$lambda$54$lambda$52(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;Landroid/view/View;)V

    return-void
.end method

.method private final notifyVideoBarShowStateChange(Z)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->getBottomPadding(Z)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v5, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42fc0000    # 126.0f

    invoke-static {p1, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {p1, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public static synthetic o1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$19(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onSelectInViewPage$lambda$7$lambda$6(Lcom/transsion/cloud/fragment/CloudFragment;I)Lzfb;
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvDownLoad:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/netdisk/R$string;->visha_global_network_download_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x800055

    invoke-static {p1, p0, v0}, Lea7;->p(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/PopupWindow;

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onViewCreated$lambda$2(Ljava/lang/Boolean;)Lzfb;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lm21;->a:Lm21;

    invoke-virtual {p0}, Lm21;->d()V

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic p1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/playercommon/widgets/SortGroup;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/CloudFragment;->showSortPopupWindow$lambda$61(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/playercommon/widgets/SortGroup;II)V

    return-void
.end method

.method public static synthetic q1(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->mVideoBarShowStateObserver$lambda$102(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$34(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final refreshCloudDataWithDelay()V
    .locals 4

    const-string v0, "refreshCloudDataWithDelay"

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lkt1;->c(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lu01;

    invoke-direct {v3, p0}, Lu01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static final refreshCloudDataWithDelay$lambda$4(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->getMediaLibraryDataFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->s()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->W()V

    return-void
.end method

.method private static final refreshCloudListData$lambda$94(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z
    .locals 3

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private static final refreshCloudListData$lambda$96(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z
    .locals 3

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private final refreshData(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsNeedUploadData:Z

    iget-boolean v1, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->c0(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v8

    const/16 v14, 0x17

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->c0(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final refreshStorageData()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->pollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;

    const/4 v5, 0x5

    const-wide/16 v6, 0x7d0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/jvm/internal/Ref$IntRef;IJ)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic s1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$27(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method private final selectItem(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/VideoCloudData;

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    const-string v0, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData"

    invoke-static {v2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    sget p0, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    :cond_2
    const/4 p2, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    const-string v0, "null cannot be cast to non-null type com.transsion.cloud.adapter.CloudDataAdapter"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-ne p4, p0, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->w(Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;ZIZILjava/lang/Object;)V

    return-void
.end method

.method private final setCloudDataNewData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper;->g(Ljava/util/List;)V

    return-void
.end method

.method private final setViewsHide()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTranslate:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private final showFreezeDialog()V
    .locals 4

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezePrompt()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTranslate:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCardViewAdd:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private final showFreezePrompt()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mFreezeDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mDidFreezeDialog:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezeView()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->setViewsHide()V

    return-void

    :cond_3
    sget v0, Lcom/transsion/playercommon/R$string;->freeze_dialog_msg:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->confirm:I

    new-instance v2, Ll01;

    invoke-direct {v2, p0}, Ll01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v1, Lw01;

    invoke-direct {v1, p0}, Lw01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->r(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mFreezeDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_4
    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p0}, Laz5$a;->i()V

    return-void
.end method

.method private static final showFreezePrompt$lambda$8(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezeView()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->setViewsHide()V

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mFreezeDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static final showFreezePrompt$lambda$9(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezeView()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->setViewsHide()V

    return-void
.end method

.method private final showFreezeView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/transsion/netdisk/R$id;->ll_freeze_state:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v2, Lcom/transsion/netdisk/R$id;->vb_freeze_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->freezeView:Landroid/view/View;

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0, v1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->r(Z)V

    return-void
.end method

.method private final showLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVlsContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final showLoginLoadingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLoginLoadingDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/netdisk/R$string;->visha_loading_login:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/b;->c(I)Lcom/transsion/widgetslib/dialog/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/b;->e()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mLoginLoadingDialog:Lcom/transsion/widgetslib/dialog/d;

    :goto_1
    return-void
.end method

.method private final showReceiveFreeSpaceDialog(J)V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/netdisk/R$string;->visha_get_free_cloud_space:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$string;->visha_get_free_cloud_space_message:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$string;->visha_get_space:I

    new-instance v2, Lp01;

    invoke-direct {v2, p0, p1, p2}, Lp01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;J)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance p2, Lq01;

    invoke-direct {p2}, Lq01;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method private static final showReceiveFreeSpaceDialog$lambda$55(Lcom/transsion/cloud/fragment/CloudFragment;JLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->goToReceiveFreeSpace(J)V

    return-void
.end method

.method private static final showReceiveFreeSpaceDialog$lambda$56(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final showSortPopupWindow$lambda$61(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/playercommon/widgets/SortGroup;II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private final startPlay(Lcom/transsion/dbdata/beans/VideoCloudData;II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->k0(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->l0(I)V

    const/16 p2, 0x3ee

    if-ne p3, p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->jumpToPlayForRecent(Lcom/transsion/dbdata/beans/VideoCloudData;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->jumpToPlayerPage(Lcom/transsion/dbdata/beans/VideoCloudData;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic t0(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$62(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel$lambda$80(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u1(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->markCloudTransmitList$lambda$107(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private final updateAppBarScrollBehavior(Z)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mAppBarContent:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private final updateBottomOperationBar()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setAllEnable(Z)V

    nop

    :cond_2
    return-void
.end method

.method private final updateLoginState(ZLjava/lang/String;)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->dismissLoginLoadingDialog()V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUserIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    sget v3, Lcom/transsion/netdisk/R$drawable;->icon_cloud_login_default:I

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvForOnContent:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget v2, Lcom/transsion/netdisk/R$drawable;->icon_cloud_login_default:I

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    invoke-static {}, Lcom/transsion/palmsdk/b;->p()Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    iget-object v2, p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->mPalmNickName:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p2

    :goto_2
    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->mPalmUserName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v3

    :goto_4
    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, p2

    :goto_5
    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->nickName:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    move v4, v1

    goto :goto_7

    :cond_9
    :goto_6
    move v4, v3

    :goto_7
    if-nez v4, :cond_a

    goto :goto_8

    :cond_a
    move-object v2, p2

    :goto_8
    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->userName:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    move v3, v1

    :cond_c
    :goto_9
    if-nez v3, :cond_d

    goto :goto_a

    :cond_d
    move-object v2, p2

    :cond_e
    :goto_a
    if-nez v2, :cond_11

    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_10

    sget v3, Lcom/transsion/netdisk/R$string;->visha_unknown:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_10
    move-object v2, p2

    :goto_b
    if-nez v2, :cond_11

    const-string v2, " "

    :cond_11
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvCloudUserName:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz p1, :cond_13

    iget-object v3, p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->userName:Ljava/lang/String;

    goto :goto_c

    :cond_13
    move-object v3, p2

    :goto_c
    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->nickName:Ljava/lang/String;

    goto :goto_d

    :cond_14
    move-object p1, p2

    :goto_d
    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvCloudUserName:Landroid/widget/TextView;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLoginState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CloudFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvCloudUserNameNoContent:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVideoMainLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_17

    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    :cond_17
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvAdd:Landroid/widget/ImageView;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudUnLogin:Landroid/view/View;

    if-eqz p1, :cond_19

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    sput-boolean v1, Lcom/transsion/playercommon/core/MainApp;->s:Z

    goto :goto_e

    :cond_1b
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mVideoMainLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_1c

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    :cond_1c
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvAdd:Landroid/widget/ImageView;

    if-eqz p1, :cond_1d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1d
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudUnLogin:Landroid/view/View;

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mSvNoContentView:Landroid/view/View;

    if-eqz p1, :cond_1f

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    if-eqz p1, :cond_20

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->hideLoadingView()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->hideNetWorkError()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->o()V

    :goto_e
    return-void
.end method

.method private final updateRecentlyListAfterDelete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->filterRecentlyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v3, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->applyRecentlyListData(Ljava/util/List;Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;)V

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    if-eqz p0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final updateTaskCount()V
    .locals 3

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result v0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v1

    invoke-virtual {v1}, Lri4;->c()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final updateUIForDataState(Z)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlAllVideosView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v4, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->updateAppBarScrollBehavior(Z)V

    return-void
.end method

.method public static synthetic v0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->showReceiveFreeSpaceDialog$lambda$56(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic v1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initNetWorkError$lambda$59$lambda$58(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->checkCloudSpace$lambda$50(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w1(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$31(Lcom/transsion/cloud/fragment/CloudFragment;)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$13(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initNoContentView$lambda$49$lambda$45(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/cloud/fragment/CloudFragment;I)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->onSelectInViewPage$lambda$7$lambda$6(Lcom/transsion/cloud/fragment/CloudFragment;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y1(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView$lambda$26(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment;->initReceiveFreeSpaceInfo$lambda$54$lambda$53(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 8

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x45c

    const/16 v1, 0x467

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_8

    if-eq p1, v1, :cond_8

    const/16 v0, 0x4a2

    if-eq p1, v0, :cond_7

    const/16 v0, 0x46d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x46e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4a5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4a6

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->backToPage()V

    invoke-direct {p0, v2}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshData(Z)V

    goto/16 :goto_6

    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->backToPage()V

    goto/16 :goto_6

    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->backToPage()V

    goto/16 :goto_6

    :pswitch_3
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_10

    aget-object p1, p2, v3

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->userLogout()V

    goto/16 :goto_6

    :pswitch_5
    array-length p1, p2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_10

    aget-object p1, p2, v3

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    goto/16 :goto_6

    :cond_2
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->dismissLoginLoadingDialog()V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v1, 0x1

    const-string v2, "create_at"

    const-string v3, "DESC"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    array-length p1, p2

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-nez v2, :cond_10

    aget-object p1, p2, v3

    instance-of p2, p1, Lcom/transsion/dbdata/beans/FileHandlerData;

    if-eqz p2, :cond_10

    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.FileHandlerData"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/FileHandlerData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/FileHandlerData;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/FileHandlerData;->getData()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/FileHandlerData;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/FileHandlerData;->getHandleType()I

    move-result p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshCloudListData(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    goto/16 :goto_6

    :cond_8
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p2

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0}, Lri4;->c()I

    move-result v0

    add-int/2addr p2, v0

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz v0, :cond_b

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_3
    if-ne p1, v1, :cond_f

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1}, Lri4;->c()I

    move-result p1

    if-nez p1, :cond_f

    iput-boolean v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsNeedUploadData:Z

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    goto :goto_4

    :cond_c
    move-object p1, v0

    :goto_4
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_d

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_5

    :cond_e
    move p1, v3

    :goto_5
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->R()I

    move-result v0

    iget v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mOffset:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_f

    invoke-direct {p0, v3}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshData(Z)V

    :cond_f
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :cond_10
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x469
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public editMode(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->changeEditMode(Z)V

    :cond_0
    sget-boolean v0, Lpp3;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModelEditMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, v2, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->d(ZIZ)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-interface {v0, v4, v5, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_4
    sget-boolean v0, Lpp3;->w:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initBottomOperationBar()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->updateViewWhenEditMode(Z)V

    sget-boolean v0, Lpp3;->w:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->ensureCloudTabEditBackCallback()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudTabEditBackCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->y(Z)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    sget-boolean v0, Lpp3;->w:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->updateBottomOperationBar()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p1, v2, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->enterEditMode(ZIZ)V

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_9
    invoke-direct {p0, v3}, Lcom/transsion/cloud/fragment/CloudFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_a
    return-void
.end method

.method public final getMRecyclerViewFastScroller()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    return-object p0
.end method

.method public isAppBarLayoutExpand(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->isAppBarLayoutExpand(II)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setMIsAppbarExpanded(Z)V

    return-void
.end method

.method public final isUploadSelectModel()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->J()Z

    move-result p0

    return p0
.end method

.method public loadData(Z)V
    .locals 8

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->Y()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->c0(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->backToPage()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0, p1}, Laz5$a;->n(I)V

    new-instance p1, Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-direct {p1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    new-instance p1, Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    invoke-direct {p1}, Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    new-instance p1, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    invoke-direct {p1}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudFavoriteAdapter:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->E()V

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->h()I

    move-result p0

    invoke-static {}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    move-result-object p1

    sget-object v0, Lfpb;->a:Lfpb;

    invoke-virtual {v0}, Lfpb;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudFragment onCreate, finishedTaskCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x469

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x467

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45c

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46a

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46b

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46e

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x4a2

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x4a5

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x4a6

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->G()V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRefreshView:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnChildScrollUpCallback(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;)V

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x469

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x467

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45c

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46a

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46b

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46e

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x4a2

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x409

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x4a5

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x4a6

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->L()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->pollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mPopupWindowRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->dismissLoginLoadingDialog()V

    const-string p0, "CloudFragment"

    invoke-static {p0}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshCloudDataWithDelay()V

    :cond_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/netdisk/R$layout;->cloud_fragment_main:I

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onPause()V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->I()Lsq3$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsq3;->c(Lsq3$a;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsClosePopupWindowOnPause:Z

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onResume()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0}, Laz5$a;->j()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->m()V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->I()Lsq3$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsq3;->b(Lsq3$a;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->K()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/VideoCloudData;->setWatchStatus(Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->k0(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->l0(I)V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->updateTaskCount()V

    iget-boolean v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsClosePopupWindowOnPause:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsClosePopupWindowOnPause:Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mPopupWindowRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mDidFreezeDialog:Z

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showFreezeDialog()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshCloudDataWithDelay()V

    return-void
.end method

.method public onSelectInViewPage()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsShowNotNetWork:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsShowNotNetWork:Z

    sget v0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsShowTips:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIsShowTips:Z

    sget-boolean v0, Lpp3;->w:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    new-instance v1, Le21;

    invoke-direct {v1, p0}, Le21;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->X(Le74;)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->updateTaskCount()V

    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 8

    const-string p1, "CloudFragment"

    const-string v0, "onUserLogin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->showLoadingView()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p0}, Laz5$a;->l()V

    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 8

    const-string v0, "CloudFragment"

    const-string v1, "onUserReLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-boolean v0, Lpp3;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initLoadingView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initLoginView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initNoContentView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->initViewModel()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->loadData(Z)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/palmsdk/b;->D()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->addVideoBarShowStateObserver()V

    new-instance v0, Lcom/transsion/cloud/fragment/CloudFragment$g;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/fragment/CloudFragment$g;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    const-string v1, "CloudFragment"

    invoke-static {v1, v0}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/netdisk/R$id;->tv_logo_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    new-instance p2, Ls11;

    invoke-direct {p2}, Ls11;-><init>()V

    new-instance v0, Lcom/transsion/cloud/fragment/CloudFragment$h;

    invoke-direct {v0, p2}, Lcom/transsion/cloud/fragment/CloudFragment$h;-><init>(Le74;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public refreshCloudListData(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoCloudData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCloudDataList"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudDataAdapter:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    check-cast v1, Ljava/util/Collection;

    goto :goto_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_2
    check-cast v2, Ljava/util/Collection;

    goto :goto_3

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :goto_3
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshStorageData()V

    new-instance p1, Ls01;

    invoke-direct {p1, p3}, Ls01;-><init>(Ljava/util/List;)V

    invoke-static {v0, p1}, Ld81;->I(Ljava/util/List;Le74;)Z

    new-instance p1, Lt01;

    invoke-direct {p1, p3}, Lt01;-><init>(Ljava/util/List;)V

    invoke-static {v1, p1}, Ld81;->I(Ljava/util/List;Le74;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->setCloudDataNewData(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->updateRecentlyListAfterDelete(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v3

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->setCloudDataNewData(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->updateRecentlyListAfterDelete(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move v2, p3

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_5
    if-eq v2, v4, :cond_7

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->setCloudDataNewData(Ljava/util/List;)V

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_9
    move p3, v4

    :goto_7
    if-eq p3, v4, :cond_b

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->copy()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_8

    :cond_a
    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->refreshStorageData()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudFragment;->setCloudDataNewData(Ljava/util/List;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/transsion/cloud/fragment/CloudFragment;->updateRecentlyListAfterDelete(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v3

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    :cond_b
    :goto_8
    return-void
.end method

.method public final setMRecyclerViewFastScroller(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    return-void
.end method

.method public showSortPopupWindow(Landroid/view/View;Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laf9;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laf9;->d:J

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/transsion/netdisk/R$style;->popup_anim:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/netdisk/R$dimen;->os_popup_menu_shadow_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v3, Lcom/transsion/netdisk/R$drawable;->os_popup_background:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/netdisk/R$layout;->video_sort_item_list:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$id;->sort_by_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/SortGroup;

    sget v3, Lcom/transsion/netdisk/R$id;->item_by_order_num:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemNum:Lcom/transsion/playercommon/widgets/SortItem;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/netdisk/R$id;->item_by_date:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemDate:Lcom/transsion/playercommon/widgets/SortItem;

    sget v3, Lcom/transsion/netdisk/R$id;->item_by_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemName:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/netdisk/R$id;->item_by_length:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemLength:Lcom/transsion/playercommon/widgets/SortItem;

    sget v3, Lcom/transsion/netdisk/R$id;->item_by_size:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemSize:Lcom/transsion/playercommon/widgets/SortItem;

    sget v3, Lcom/transsion/netdisk/R$id;->item_by_count:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemCount:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/netdisk/R$id;->item_by_manual:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemManual:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/widgets/SortGroup;->setIsSortVideo(Z)V

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initSortItem(Z)V

    new-instance p2, Lo01;

    invoke-direct {p2, p0}, Lo01;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/widgets/SortGroup;->setOnSelectedChangeListener(Lcom/transsion/playercommon/widgets/SortGroup$b;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, p2

    :goto_3
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    instance-of v5, v3, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v5, :cond_6

    const-string v5, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity"

    invoke-static {v3, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    goto :goto_4

    :cond_6
    move v3, p2

    :goto_4
    invoke-static {}, Lav3;->z()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_5
    neg-int v1, v1

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    goto :goto_5

    :cond_8
    move v1, p2

    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v4

    neg-int v0, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    :cond_9
    invoke-static {v2}, Lcom/transsion/utils/a;->z(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_7

    :cond_a
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, v1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_7
    return-void
.end method

.method public startEditMode(ZIZ)V
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->v(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final stopEdit()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->backToPage()V

    return-void
.end method

.method public updateViewWhenEditMode(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->updateViewWhenEditMode(Z)V

    sget-boolean v0, Lpp3;->w:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTitleBarBack:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mTvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mNavTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRecyclerViewFastScroller:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_8

    const/high16 v4, 0x42700000    # 60.0f

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvSearch:Landroid/view/View;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    move v3, v2

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvTranslate:Landroid/view/View;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_c

    move v3, v1

    goto :goto_6

    :cond_c
    move v3, v2

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvAdd:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_e

    move v3, v1

    goto :goto_7

    :cond_e
    move v3, v2

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_10

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_10
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mIvDownLoad:Landroid/view/View;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_11

    move v3, v1

    goto :goto_8

    :cond_11
    move v3, v2

    :goto_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result v0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v3

    invoke-virtual {v3}, Lri4;->c()I

    move-result v3

    add-int/2addr v0, v3

    const/4 v3, 0x1

    if-eqz p1, :cond_14

    :cond_13
    move v0, v2

    goto :goto_9

    :cond_14
    if-lez v0, :cond_13

    move v0, v3

    :goto_9
    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mUploadCountView:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz v4, :cond_16

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_a

    :cond_15
    move v0, v1

    :goto_a
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    const/4 v0, 0x0

    if-nez p1, :cond_1a

    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcCloudView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    goto :goto_b

    :cond_17
    move-object v4, v0

    :goto_b
    instance-of v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v5, :cond_18

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_c

    :cond_18
    move-object v4, v0

    :goto_c
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_1b

    invoke-virtual {v4, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_d

    :cond_19
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_1b

    invoke-virtual {v3, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_d

    :cond_1a
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_1b

    invoke-virtual {v3, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_1b
    :goto_d
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mClStorageInfo:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1d

    if-eqz p1, :cond_1c

    move v4, v1

    goto :goto_e

    :cond_1c
    move v4, v2

    :goto_e
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mCloudRecentlyDataAdapter:Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    :cond_1e
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlRecentlyView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_22

    if-eqz p1, :cond_20

    :cond_1f
    :goto_f
    move v4, v1

    goto :goto_10

    :cond_20
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_1f

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_f

    :cond_21
    move v4, v2

    :goto_10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcRecentlyView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_26

    if-eqz p1, :cond_24

    :cond_23
    :goto_11
    move v0, v1

    goto :goto_12

    :cond_24
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_11

    :cond_25
    move v0, v2

    :goto_12
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRcFavoriteView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_27

    move v3, v1

    goto :goto_13

    :cond_27
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlFavoriteItemView:Landroid/view/View;

    if-eqz v0, :cond_2b

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_2a

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_14

    :cond_29
    move v3, v2

    goto :goto_15

    :cond_2a
    :goto_14
    move v3, v1

    :goto_15
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment;->mRlAllVideosView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2d

    if-eqz p1, :cond_2c

    goto :goto_16

    :cond_2c
    move v1, v2

    :goto_16
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2d
    return-void
.end method

.method public userLogout()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->q0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->o()V

    return-void
.end method
