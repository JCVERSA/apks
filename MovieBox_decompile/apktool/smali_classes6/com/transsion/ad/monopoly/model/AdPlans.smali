.class public final Lcom/transsion/ad/monopoly/model/AdPlans;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008}\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008b\u0004\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-\u0012\u0008\u0008\u0002\u0010.\u001a\u00020/\u0012\u0008\u0008\u0002\u00100\u001a\u00020/\u0012\u0008\u0008\u0002\u00101\u001a\u00020/\u0012\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u00083\u00104J\u000c\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u00109J\u000c\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u00109J\u000c\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0012\u0010\u0088\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\u0011\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u00109J\u0012\u0010\u008a\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\u0012\u0010\u008b\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\u0012\u0010\u008c\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\u0012\u0010\u008d\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\u0012\u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rH\u00c6\u0003J\u000c\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0012\u0010\u0093\u0001\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\rH\u00c6\u0003J\u000c\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u009b\u0001\u001a\u0004\u0018\u00010\"H\u00c6\u0003J\u000c\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u00a0\u0001\u001a\u0004\u0018\u00010(H\u00c6\u0003J\u000c\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u00a2\u0001\u001a\u0004\u0018\u00010+H\u00c6\u0003\u00a2\u0006\u0002\u0010pJ\u0011\u0010\u00a3\u0001\u001a\u0004\u0018\u00010-H\u00c6\u0003\u00a2\u0006\u0002\u0010uJ\n\u0010\u00a4\u0001\u001a\u00020/H\u00c6\u0003J\n\u0010\u00a5\u0001\u001a\u00020/H\u00c6\u0003J\n\u0010\u00a6\u0001\u001a\u00020/H\u00c6\u0003J\u000c\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0094\u0004\u0010\u00a8\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0008\u0002\u0010.\u001a\u00020/2\u0008\u0008\u0002\u00100\u001a\u00020/2\u0008\u0008\u0002\u00101\u001a\u00020/2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00a9\u0001J\u0007\u0010\u00aa\u0001\u001a\u00020\u0006J\u0016\u0010\u00ab\u0001\u001a\u00020/2\n\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00ad\u0001H\u00d6\u0003J\n\u0010\u00ae\u0001\u001a\u00020\u0006H\u00d6\u0001J\n\u0010\u00af\u0001\u001a\u00020\u0003H\u00d6\u0001J\u001b\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0008\u0010\u00b2\u0001\u001a\u00030\u00b3\u00012\u0007\u0010\u00b4\u0001\u001a\u00020\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00106R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010:\u001a\u0004\u00088\u00109R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00106\"\u0004\u0008<\u0010=R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u00106\"\u0004\u0008?\u0010=R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u00106\"\u0004\u0008A\u0010=R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u0008B\u00109\"\u0004\u0008C\u0010DR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u00106\"\u0004\u0008F\u0010=R\u0019\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010HR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010:\u001a\u0004\u0008I\u00109R\u0019\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010HR\u0019\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010HR\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010HR\u0019\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010HR\u0019\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010HR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u00106R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u00106R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u00106R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u00106R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010H\"\u0004\u0008T\u0010UR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u00106R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u00106R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u00106R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u00106R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u00106R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u00106R\u0013\u0010 \u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u00106R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u00106\"\u0004\u0008b\u0010=R\u001c\u0010$\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u00106\"\u0004\u0008d\u0010=R\u001c\u0010%\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u00106\"\u0004\u0008f\u0010=R\u001c\u0010&\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u00106\"\u0004\u0008h\u0010=R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u001c\u0010)\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u00106\"\u0004\u0008n\u0010=R\u001e\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010s\u001a\u0004\u0008o\u0010p\"\u0004\u0008q\u0010rR\u001e\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010x\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u001a\u0010.\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010y\"\u0004\u0008z\u0010{R\u0011\u00100\u001a\u00020/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008|\u0010yR\u0011\u00101\u001a\u00020/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008}\u0010yR\u001c\u00102\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008~\u00106\"\u0004\u0008\u007f\u0010=\u00a8\u0006\u00b5\u0001"
    }
    d2 = {
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "name",
        "sort",
        "",
        "advertiserName",
        "advertiserAvatar",
        "advertiserAvatarPath",
        "showedTimes",
        "showDate",
        "scenes",
        "",
        "displayTimes",
        "country",
        "brand",
        "denyBrand",
        "model",
        "denyModel",
        "filterClientVersion",
        "startTime",
        "endTime",
        "extraConfig",
        "adMaterialList",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "adPlanCreateTime",
        "adPlanUpdateTime",
        "adShowLevel",
        "appStarDesc",
        "appSizeDesc",
        "ctxEnableExpr",
        "ctxDisableExpr",
        "ctxAttributeConfig",
        "Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;",
        "dispatchTimeStart",
        "dispatchTimeEnd",
        "adSource",
        "extAdSlot",
        "extImage",
        "Lcom/transsion/ad/monopoly/model/MbAdImage;",
        "version",
        "bidEcpmCent",
        "",
        "ecpmCent",
        "",
        "isValid",
        "",
        "h5LinkPreload",
        "h5LinkOpenByCct",
        "countryCode",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getName",
        "getSort",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getAdvertiserName",
        "setAdvertiserName",
        "(Ljava/lang/String;)V",
        "getAdvertiserAvatar",
        "setAdvertiserAvatar",
        "getAdvertiserAvatarPath",
        "setAdvertiserAvatarPath",
        "getShowedTimes",
        "setShowedTimes",
        "(Ljava/lang/Integer;)V",
        "getShowDate",
        "setShowDate",
        "getScenes",
        "()Ljava/util/List;",
        "getDisplayTimes",
        "getCountry",
        "getBrand",
        "getDenyBrand",
        "getModel",
        "getDenyModel",
        "getFilterClientVersion",
        "getStartTime",
        "getEndTime",
        "getExtraConfig",
        "getAdMaterialList",
        "setAdMaterialList",
        "(Ljava/util/List;)V",
        "getAdPlanCreateTime",
        "getAdPlanUpdateTime",
        "getAdShowLevel",
        "getAppStarDesc",
        "getAppSizeDesc",
        "getCtxEnableExpr",
        "getCtxDisableExpr",
        "getCtxAttributeConfig",
        "()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;",
        "setCtxAttributeConfig",
        "(Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;)V",
        "getDispatchTimeStart",
        "setDispatchTimeStart",
        "getDispatchTimeEnd",
        "setDispatchTimeEnd",
        "getAdSource",
        "setAdSource",
        "getExtAdSlot",
        "setExtAdSlot",
        "getExtImage",
        "()Lcom/transsion/ad/monopoly/model/MbAdImage;",
        "setExtImage",
        "(Lcom/transsion/ad/monopoly/model/MbAdImage;)V",
        "getVersion",
        "setVersion",
        "getBidEcpmCent",
        "()Ljava/lang/Double;",
        "setBidEcpmCent",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getEcpmCent",
        "()Ljava/lang/Long;",
        "setEcpmCent",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "()Z",
        "setValid",
        "(Z)V",
        "getH5LinkPreload",
        "getH5LinkOpenByCct",
        "getCountryCode",
        "setCountryCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "component39",
        "component40",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/ad/monopoly/model/AdPlans;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_ad_gpRelease"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/ad/monopoly/model/AdPlans;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adMaterialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
            ">;"
        }
    .end annotation
.end field

.field private final adPlanCreateTime:Ljava/lang/String;

.field private final adPlanUpdateTime:Ljava/lang/String;

.field private final adShowLevel:Ljava/lang/String;

.field private adSource:Ljava/lang/String;

.field private advertiserAvatar:Ljava/lang/String;

.field private advertiserAvatarPath:Ljava/lang/String;

.field private advertiserName:Ljava/lang/String;

.field private final appSizeDesc:Ljava/lang/String;

.field private final appStarDesc:Ljava/lang/String;

.field private bidEcpmCent:Ljava/lang/Double;

.field private final brand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final country:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryCode:Ljava/lang/String;

.field private ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

.field private final ctxDisableExpr:Ljava/lang/String;

.field private final ctxEnableExpr:Ljava/lang/String;

.field private final denyBrand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final denyModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dispatchTimeEnd:Ljava/lang/String;

.field private dispatchTimeStart:Ljava/lang/String;

.field private final displayTimes:Ljava/lang/Integer;

.field private ecpmCent:Ljava/lang/Long;

.field private final endTime:Ljava/lang/String;

.field private extAdSlot:Ljava/lang/String;

.field private extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

.field private final extraConfig:Ljava/lang/String;

.field private final filterClientVersion:Ljava/lang/String;

.field private final h5LinkOpenByCct:Z

.field private final h5LinkPreload:Z

.field private final id:Ljava/lang/String;

.field private isValid:Z

.field private final model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final scenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showDate:Ljava/lang/String;

.field private showedTimes:Ljava/lang/Integer;

.field private final sort:Ljava/lang/Integer;

.field private final startTime:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/monopoly/model/AdPlans$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/model/AdPlans$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/monopoly/model/AdPlans;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    const/16 v42, 0xff

    const/16 v43, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x1

    invoke-direct/range {v0 .. v43}, Lcom/transsion/ad/monopoly/model/AdPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/monopoly/model/MbAdImage;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    move-object v1, p13

    .line 15
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 24
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 27
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 28
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 29
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 30
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    move-object/from16 v1, p29

    .line 31
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 32
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 33
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 34
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 35
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-object/from16 v1, p34

    .line 36
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 37
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    move-object/from16 v1, p36

    .line 38
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    move/from16 v1, p37

    .line 39
    iput-boolean v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    move/from16 v1, p38

    .line 40
    iput-boolean v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    move/from16 v1, p39

    .line 41
    iput-boolean v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    move-object/from16 v1, p40

    .line 42
    iput-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 41

    move/from16 v0, p41

    move/from16 v1, p42

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const v5, 0x7fffffff

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v3, p14

    :goto_d
    move-object/from16 v16, v3

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v3, p15

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v17, p16

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v18, p17

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v19, p18

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v20, p19

    :goto_12
    const/high16 v21, 0x80000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v21, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p21

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v23, p22

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p23

    :goto_16
    const/high16 v25, 0x800000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p24

    :goto_17
    const/high16 v26, 0x1000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    const/16 v26, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v26, p25

    :goto_18
    const/high16 v27, 0x2000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v27, p26

    :goto_19
    const/high16 v28, 0x4000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v28, p27

    :goto_1a
    const/high16 v29, 0x8000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v29, p28

    :goto_1b
    const/high16 v30, 0x10000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v30, p29

    :goto_1c
    const/high16 v31, 0x20000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1d

    const/16 v31, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v31, p30

    :goto_1d
    const/high16 v32, 0x40000000    # 2.0f

    and-int v32, v0, v32

    if-eqz v32, :cond_1e

    const/16 v32, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v32, p31

    :goto_1e
    const/high16 v33, -0x80000000

    and-int v0, v0, v33

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v33, v1, 0x1

    if-eqz v33, :cond_20

    const/16 v33, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v33, p33

    :goto_20
    and-int/lit8 v34, v1, 0x2

    if-eqz v34, :cond_21

    const/16 v34, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v34, p34

    :goto_21
    and-int/lit8 v35, v1, 0x4

    if-eqz v35, :cond_22

    const/16 v35, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v35, p35

    :goto_22
    and-int/lit8 v36, v1, 0x8

    if-eqz v36, :cond_23

    const/16 v36, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v36, p36

    :goto_23
    and-int/lit8 v37, v1, 0x10

    const/16 v38, 0x0

    if-eqz v37, :cond_24

    move/from16 v37, v38

    goto :goto_24

    :cond_24
    move/from16 v37, p37

    :goto_24
    and-int/lit8 v39, v1, 0x20

    if-eqz v39, :cond_25

    move/from16 v39, v38

    goto :goto_25

    :cond_25
    move/from16 v39, p38

    :goto_25
    and-int/lit8 v40, v1, 0x40

    if-eqz v40, :cond_26

    goto :goto_26

    :cond_26
    move/from16 v38, p39

    :goto_26
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v16

    move-object/from16 p16, v3

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move-object/from16 p26, v26

    move-object/from16 p27, v27

    move-object/from16 p28, v28

    move-object/from16 p29, v29

    move-object/from16 p30, v30

    move-object/from16 p31, v31

    move-object/from16 p32, v32

    move-object/from16 p33, v0

    move-object/from16 p34, v33

    move-object/from16 p35, v34

    move-object/from16 p36, v35

    move-object/from16 p37, v36

    move/from16 p38, v37

    move/from16 p39, v39

    move/from16 p40, v38

    move-object/from16 p41, v1

    .line 44
    invoke-direct/range {p1 .. p41}, Lcom/transsion/ad/monopoly/model/AdPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;IILjava/lang/Object;)Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p41

    move/from16 v2, p42

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, v2, 0x1

    move-object/from16 p32, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v16, v2, 0x2

    move-object/from16 p33, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v16, v2, 0x4

    move-object/from16 p34, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v16, v2, 0x8

    move-object/from16 p35, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v16, v2, 0x10

    move-object/from16 p36, v1

    if-eqz v16, :cond_24

    iget-boolean v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    goto :goto_24

    :cond_24
    move/from16 v1, p37

    :goto_24
    and-int/lit8 v16, v2, 0x20

    move/from16 p37, v1

    if-eqz v16, :cond_25

    iget-boolean v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    goto :goto_25

    :cond_25
    move/from16 v1, p38

    :goto_25
    and-int/lit8 v16, v2, 0x40

    move/from16 p38, v1

    if-eqz v16, :cond_26

    iget-boolean v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    goto :goto_26

    :cond_26
    move/from16 v1, p39

    :goto_26
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    goto :goto_27

    :cond_27
    move-object/from16 v2, p40

    :goto_27
    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p31, v15

    move/from16 p39, v1

    move-object/from16 p40, v2

    invoke-virtual/range {p0 .. p40}, Lcom/transsion/ad/monopoly/model/AdPlans;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component28()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component33()Lcom/transsion/ad/monopoly/model/MbAdImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component35()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component36()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component37()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component38()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component39()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component40()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/monopoly/model/MbAdImage;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/ad/monopoly/model/AdPlans;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move/from16 v37, p37

    move/from16 v38, p38

    move/from16 v39, p39

    move-object/from16 v40, p40

    new-instance v41, Lcom/transsion/ad/monopoly/model/AdPlans;

    move-object/from16 v0, v41

    invoke-direct/range {v0 .. v40}, Lcom/transsion/ad/monopoly/model/AdPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    return-object v41
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_14

    .line 220
    .line 221
    return v2

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 223
    .line 224
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    return v2

    .line 233
    :cond_15
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_17

    .line 253
    .line 254
    return v2

    .line 255
    :cond_17
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_18

    .line 264
    .line 265
    return v2

    .line 266
    :cond_18
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    .line 267
    .line 268
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_19

    .line 275
    .line 276
    return v2

    .line 277
    :cond_19
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_1a

    .line 286
    .line 287
    return v2

    .line 288
    :cond_1a
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_1b

    .line 297
    .line 298
    return v2

    .line 299
    :cond_1b
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_1c

    .line 308
    .line 309
    return v2

    .line 310
    :cond_1c
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 311
    .line 312
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 313
    .line 314
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_1d

    .line 319
    .line 320
    return v2

    .line 321
    :cond_1d
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 322
    .line 323
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_1e

    .line 330
    .line 331
    return v2

    .line 332
    :cond_1e
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 335
    .line 336
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_1f

    .line 341
    .line 342
    return v2

    .line 343
    :cond_1f
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 344
    .line 345
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_20

    .line 352
    .line 353
    return v2

    .line 354
    :cond_20
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_21

    .line 363
    .line 364
    return v2

    .line 365
    :cond_21
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 366
    .line 367
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 368
    .line 369
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_22

    .line 374
    .line 375
    return v2

    .line 376
    :cond_22
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 377
    .line 378
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 379
    .line 380
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_23

    .line 385
    .line 386
    return v2

    .line 387
    :cond_23
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 388
    .line 389
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 390
    .line 391
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_24

    .line 396
    .line 397
    return v2

    .line 398
    :cond_24
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 399
    .line 400
    iget-object v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 401
    .line 402
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_25

    .line 407
    .line 408
    return v2

    .line 409
    :cond_25
    iget-boolean v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 410
    .line 411
    iget-boolean v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 412
    .line 413
    if-eq v1, v3, :cond_26

    .line 414
    .line 415
    return v2

    .line 416
    :cond_26
    iget-boolean v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    .line 417
    .line 418
    iget-boolean v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    .line 419
    .line 420
    if-eq v1, v3, :cond_27

    .line 421
    .line 422
    return v2

    .line 423
    :cond_27
    iget-boolean v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    .line 424
    .line 425
    iget-boolean v3, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    .line 426
    .line 427
    if-eq v1, v3, :cond_28

    .line 428
    .line 429
    return v2

    .line 430
    :cond_28
    iget-object v1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 431
    .line 432
    iget-object p1, p1, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-nez p1, :cond_29

    .line 439
    .line 440
    return v2

    .line 441
    :cond_29
    return v0
.end method

.method public final getAdMaterialList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdPlanCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdPlanUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdShowLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdvertiserAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdvertiserAvatarPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdvertiserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppSizeDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppStarDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBidEcpmCent()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBrand()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCtxAttributeConfig()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCtxDisableExpr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCtxEnableExpr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDenyBrand()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDenyModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDispatchTimeEnd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDispatchTimeStart()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayTimes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEcpmCent()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEndTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtAdSlot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtImage()Lcom/transsion/ad/monopoly/model/MbAdImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtraConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFilterClientVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH5LinkOpenByCct()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getH5LinkPreload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScenes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowedTimes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSort()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    move v2, v1

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    move v2, v1

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    move v2, v1

    .line 214
    goto :goto_10

    .line 215
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_10
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    .line 223
    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    move v2, v1

    .line 227
    goto :goto_11

    .line 228
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_11
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    move v2, v1

    .line 240
    goto :goto_12

    .line 241
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_12
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    move v2, v1

    .line 253
    goto :goto_13

    .line 254
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_13
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    .line 262
    .line 263
    if-nez v2, :cond_14

    .line 264
    .line 265
    move v2, v1

    .line 266
    goto :goto_14

    .line 267
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_14
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    .line 275
    .line 276
    if-nez v2, :cond_15

    .line 277
    .line 278
    move v2, v1

    .line 279
    goto :goto_15

    .line 280
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_15
    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    .line 287
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    .line 288
    .line 289
    if-nez v2, :cond_16

    .line 290
    .line 291
    move v2, v1

    .line 292
    goto :goto_16

    .line 293
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :goto_16
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    .line 299
    .line 300
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    .line 301
    .line 302
    if-nez v2, :cond_17

    .line 303
    .line 304
    move v2, v1

    .line 305
    goto :goto_17

    .line 306
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    :goto_17
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    .line 312
    .line 313
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    .line 314
    .line 315
    if-nez v2, :cond_18

    .line 316
    .line 317
    move v2, v1

    .line 318
    goto :goto_18

    .line 319
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    :goto_18
    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    .line 325
    .line 326
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    .line 327
    .line 328
    if-nez v2, :cond_19

    .line 329
    .line 330
    move v2, v1

    .line 331
    goto :goto_19

    .line 332
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_19
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    .line 338
    .line 339
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    .line 340
    .line 341
    if-nez v2, :cond_1a

    .line 342
    .line 343
    move v2, v1

    .line 344
    goto :goto_1a

    .line 345
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    :goto_1a
    add-int/2addr v0, v2

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    .line 352
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 353
    .line 354
    if-nez v2, :cond_1b

    .line 355
    .line 356
    move v2, v1

    .line 357
    goto :goto_1b

    .line 358
    :cond_1b
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    :goto_1b
    add-int/2addr v0, v2

    .line 363
    mul-int/lit8 v0, v0, 0x1f

    .line 364
    .line 365
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 366
    .line 367
    if-nez v2, :cond_1c

    .line 368
    .line 369
    move v2, v1

    .line 370
    goto :goto_1c

    .line 371
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    :goto_1c
    add-int/2addr v0, v2

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    .line 377
    .line 378
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 379
    .line 380
    if-nez v2, :cond_1d

    .line 381
    .line 382
    move v2, v1

    .line 383
    goto :goto_1d

    .line 384
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    :goto_1d
    add-int/2addr v0, v2

    .line 389
    mul-int/lit8 v0, v0, 0x1f

    .line 390
    .line 391
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 392
    .line 393
    if-nez v2, :cond_1e

    .line 394
    .line 395
    move v2, v1

    .line 396
    goto :goto_1e

    .line 397
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    :goto_1e
    add-int/2addr v0, v2

    .line 402
    mul-int/lit8 v0, v0, 0x1f

    .line 403
    .line 404
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 405
    .line 406
    if-nez v2, :cond_1f

    .line 407
    .line 408
    move v2, v1

    .line 409
    goto :goto_1f

    .line 410
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    :goto_1f
    add-int/2addr v0, v2

    .line 415
    mul-int/lit8 v0, v0, 0x1f

    .line 416
    .line 417
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 418
    .line 419
    if-nez v2, :cond_20

    .line 420
    .line 421
    move v2, v1

    .line 422
    goto :goto_20

    .line 423
    :cond_20
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    :goto_20
    add-int/2addr v0, v2

    .line 428
    mul-int/lit8 v0, v0, 0x1f

    .line 429
    .line 430
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 431
    .line 432
    if-nez v2, :cond_21

    .line 433
    .line 434
    move v2, v1

    .line 435
    goto :goto_21

    .line 436
    :cond_21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    :goto_21
    add-int/2addr v0, v2

    .line 441
    mul-int/lit8 v0, v0, 0x1f

    .line 442
    .line 443
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 444
    .line 445
    if-nez v2, :cond_22

    .line 446
    .line 447
    move v2, v1

    .line 448
    goto :goto_22

    .line 449
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    :goto_22
    add-int/2addr v0, v2

    .line 454
    mul-int/lit8 v0, v0, 0x1f

    .line 455
    .line 456
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 457
    .line 458
    if-nez v2, :cond_23

    .line 459
    .line 460
    move v2, v1

    .line 461
    goto :goto_23

    .line 462
    :cond_23
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    :goto_23
    add-int/2addr v0, v2

    .line 467
    mul-int/lit8 v0, v0, 0x1f

    .line 468
    .line 469
    iget-boolean v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 470
    .line 471
    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    add-int/2addr v0, v2

    .line 476
    mul-int/lit8 v0, v0, 0x1f

    .line 477
    .line 478
    iget-boolean v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    .line 479
    .line 480
    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    add-int/2addr v0, v2

    .line 485
    mul-int/lit8 v0, v0, 0x1f

    .line 486
    .line 487
    iget-boolean v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    .line 488
    .line 489
    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    add-int/2addr v0, v2

    .line 494
    mul-int/lit8 v0, v0, 0x1f

    .line 495
    .line 496
    iget-object v2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 497
    .line 498
    if-nez v2, :cond_24

    .line 499
    .line 500
    goto :goto_24

    .line 501
    :cond_24
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    :goto_24
    add-int/2addr v0, v1

    .line 506
    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAdMaterialList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdvertiserAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdvertiserAvatarPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdvertiserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBidEcpmCent(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCtxAttributeConfig(Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setDispatchTimeEnd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDispatchTimeStart(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEcpmCent(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtAdSlot(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtImage(Lcom/transsion/ad/monopoly/model/MbAdImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowedTimes(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 112
    .line 113
    move-object/from16 v36, v15

    .line 114
    .line 115
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    iget-boolean v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 120
    .line 121
    move/from16 v38, v15

    .line 122
    .line 123
    iget-boolean v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    .line 124
    .line 125
    move/from16 v39, v15

    .line 126
    .line 127
    iget-boolean v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    .line 128
    .line 129
    move/from16 v40, v15

    .line 130
    .line 131
    iget-object v15, v0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    move-object/from16 v41, v15

    .line 139
    .line 140
    const-string v15, "AdPlans(id="

    .line 141
    .line 142
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", name="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", sort="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ", advertiserName="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", advertiserAvatar="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", advertiserAvatarPath="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, ", showedTimes="

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", showDate="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, ", scenes="

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, ", displayTimes="

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, ", country="

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ", brand="

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", denyBrand="

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", model="

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", denyModel="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-object/from16 v1, v16

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, ", filterClientVersion="

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-object/from16 v1, v17

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", startTime="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    move-object/from16 v1, v18

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, ", endTime="

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-object/from16 v1, v19

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, ", extraConfig="

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-object/from16 v1, v20

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v1, ", adMaterialList="

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    move-object/from16 v1, v21

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, ", adPlanCreateTime="

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-object/from16 v1, v22

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v1, ", adPlanUpdateTime="

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-object/from16 v1, v23

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v1, ", adShowLevel="

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    move-object/from16 v1, v24

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v1, ", appStarDesc="

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    move-object/from16 v1, v25

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, ", appSizeDesc="

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-object/from16 v1, v26

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v1, ", ctxEnableExpr="

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    move-object/from16 v1, v27

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v1, ", ctxDisableExpr="

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    move-object/from16 v1, v28

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v1, ", ctxAttributeConfig="

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    move-object/from16 v1, v29

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v1, ", dispatchTimeStart="

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    move-object/from16 v1, v30

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v1, ", dispatchTimeEnd="

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    move-object/from16 v1, v31

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v1, ", adSource="

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    move-object/from16 v1, v32

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v1, ", extAdSlot="

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    move-object/from16 v1, v33

    .line 428
    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v1, ", extImage="

    .line 433
    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    move-object/from16 v1, v34

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v1, ", version="

    .line 443
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    move-object/from16 v1, v35

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v1, ", bidEcpmCent="

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    move-object/from16 v1, v36

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v1, ", ecpmCent="

    .line 463
    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    move-object/from16 v1, v37

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v1, ", isValid="

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    move/from16 v1, v38

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v1, ", h5LinkPreload="

    .line 483
    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    move/from16 v1, v39

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v1, ", h5LinkOpenByCct="

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    move/from16 v1, v40

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    const-string v1, ", countryCode="

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    move-object/from16 v1, v41

    .line 508
    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v1, ")"

    .line 513
    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->id:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->sort:Ljava/lang/Integer;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatar:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->advertiserAvatarPath:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showedTimes:Ljava/lang/Integer;

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->showDate:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->scenes:Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->displayTimes:Ljava/lang/Integer;

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    :goto_2
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->country:Ljava/util/List;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->brand:Ljava/util/List;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyBrand:Ljava/util/List;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->model:Ljava/util/List;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->denyModel:Ljava/util/List;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->filterClientVersion:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->startTime:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->endTime:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extraConfig:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adMaterialList:Ljava/util/List;

    .line 143
    .line 144
    if-nez v0, :cond_3

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_4

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 175
    .line 176
    invoke-virtual {v3, p1, p2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanCreateTime:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adPlanUpdateTime:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adShowLevel:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appStarDesc:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->appSizeDesc:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxEnableExpr:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxDisableExpr:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ctxAttributeConfig:Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 216
    .line 217
    if-nez v0, :cond_5

    .line 218
    .line 219
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, p1, p2}, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    .line 228
    .line 229
    :goto_5
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeStart:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->dispatchTimeEnd:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->adSource:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extAdSlot:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->extImage:Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 250
    .line 251
    if-nez v0, :cond_6

    .line 252
    .line 253
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p1, p2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    .line 262
    .line 263
    :goto_6
    iget-object p2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->version:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object p2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->bidEcpmCent:Ljava/lang/Double;

    .line 269
    .line 270
    if-nez p2, :cond_7

    .line 271
    .line 272
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 280
    .line 281
    .line 282
    move-result-wide v3

    .line 283
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 284
    .line 285
    .line 286
    :goto_7
    iget-object p2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->ecpmCent:Ljava/lang/Long;

    .line 287
    .line 288
    if-nez p2, :cond_8

    .line 289
    .line 290
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 298
    .line 299
    .line 300
    move-result-wide v0

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 302
    .line 303
    .line 304
    :goto_8
    iget-boolean p2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid:Z

    .line 305
    .line 306
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    .line 308
    .line 309
    iget-boolean p2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkPreload:Z

    .line 310
    .line 311
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    .line 313
    .line 314
    iget-boolean p2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->h5LinkOpenByCct:Z

    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    .line 318
    .line 319
    iget-object p2, p0, Lcom/transsion/ad/monopoly/model/AdPlans;->countryCode:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-void
.end method
