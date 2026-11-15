.class public final Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$a;,
        Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0007\u0018\u0000 \u00cd\u0001*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u0003:\u0004\u009e\u0001\u00ce\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\'\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u000f\u0010!\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u001f\u0010$\u001a\u00020\u000f2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010(\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0016J\u000f\u0010,\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008,\u0010\u001fJ\u000f\u0010-\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008-\u0010\u001fJ\u0017\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u0002002\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00083\u00102J\u0017\u00106\u001a\u00020\u000f2\u0006\u00105\u001a\u000204H\u0014\u00a2\u0006\u0004\u00086\u00107J\u000f\u00109\u001a\u000208H\u0014\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010;\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u000208H\u0014\u00a2\u0006\u0004\u0008;\u0010<J\r\u0010=\u001a\u00020\u000f\u00a2\u0006\u0004\u0008=\u0010\u001fJ\r\u0010>\u001a\u00020\u000f\u00a2\u0006\u0004\u0008>\u0010\u001fJ\r\u0010?\u001a\u00020\u000f\u00a2\u0006\u0004\u0008?\u0010\u001fJ#\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000e\u0010A\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010@\u00a2\u0006\u0004\u0008B\u0010CJ\u001d\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010D\u001a\u00020\u0008\u00a2\u0006\u0004\u0008E\u0010FJ7\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010G\u001a\u00020\u00082\u0008\u0008\u0001\u0010H\u001a\u00020\u00082\u0006\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u0008\u00a2\u0006\u0004\u0008E\u0010KJ\u001b\u0010M\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010L\u001a\u000200\u00a2\u0006\u0004\u0008M\u0010NJ\u001b\u0010P\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010O\u001a\u000200\u00a2\u0006\u0004\u0008P\u0010NJ\u001b\u0010R\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010Q\u001a\u00020\u0008\u00a2\u0006\u0004\u0008R\u0010FJ\u001d\u0010U\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010T\u001a\u0004\u0018\u00010S\u00a2\u0006\u0004\u0008U\u0010VJ\u001d\u0010W\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010T\u001a\u0004\u0018\u00010S\u00a2\u0006\u0004\u0008W\u0010VJ\u0017\u0010X\u001a\u00020\u000f2\u0008\u0010T\u001a\u0004\u0018\u00010S\u00a2\u0006\u0004\u0008X\u0010YJ\r\u0010Z\u001a\u00020\u000f\u00a2\u0006\u0004\u0008Z\u0010\u001fJ\r\u0010[\u001a\u00020\u000f\u00a2\u0006\u0004\u0008[\u0010\u001fJ\u001d\u0010]\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010\\\u001a\u00020\u0008\u00a2\u0006\u0004\u0008]\u0010FJ\u001b\u0010`\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010_\u001a\u00020^\u00a2\u0006\u0004\u0008`\u0010aJ#\u0010`\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010_\u001a\u00020^2\u0006\u0010b\u001a\u000200\u00a2\u0006\u0004\u0008`\u0010cJ\u001b\u0010e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010d\u001a\u00020\u0008\u00a2\u0006\u0004\u0008e\u0010FJ!\u0010h\u001a\u00020\u000f2\u0010\u0008\u0002\u0010g\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010fH\u0007\u00a2\u0006\u0004\u0008h\u0010%J\u001b\u0010j\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010i\u001a\u00020\u0008\u00a2\u0006\u0004\u0008j\u0010FJ\u001d\u0010n\u001a\u00020\u000f2\u0006\u0010l\u001a\u00020k2\u0006\u0010m\u001a\u00020\u0008\u00a2\u0006\u0004\u0008n\u0010oJ\u0015\u0010n\u001a\u00020\u000f2\u0006\u0010l\u001a\u00020k\u00a2\u0006\u0004\u0008n\u0010pJ)\u0010s\u001a\u00020\u000f2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010f2\n\u0008\u0002\u0010r\u001a\u0004\u0018\u00010q\u00a2\u0006\u0004\u0008s\u0010tJ\r\u0010u\u001a\u00020\u000f\u00a2\u0006\u0004\u0008u\u0010\u001fJ\u001d\u0010v\u001a\u00020\u000f2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010f\u00a2\u0006\u0004\u0008v\u0010%J\u0015\u0010w\u001a\u00020\u000f2\u0006\u0010m\u001a\u00020\u0008\u00a2\u0006\u0004\u0008w\u0010\u0016J\u001d\u0010x\u001a\u00020\u000f2\u0006\u0010m\u001a\u00020\u00082\u0006\u0010*\u001a\u00028\u0000\u00a2\u0006\u0004\u0008x\u0010yJ\r\u0010z\u001a\u00020\u000f\u00a2\u0006\u0004\u0008z\u0010\u001fJ\r\u0010{\u001a\u00020\u000f\u00a2\u0006\u0004\u0008{\u0010\u001fJ\u001d\u0010}\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u00082\u0006\u0010|\u001a\u000200\u00a2\u0006\u0004\u0008}\u0010~J\u001f\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010\u007f\u001a\u00020\u0008\u00a2\u0006\u0005\u0008\u0080\u0001\u0010FJ,\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\t\u0008\u0001\u0010\u0081\u0001\u001a\u00020\u00082\t\u0008\u0001\u0010\u0082\u0001\u001a\u00020\u0008\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0083\u0001J\u001e\u0010\u0085\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0084\u0001\u001a\u00020\u0008\u00a2\u0006\u0005\u0008\u0085\u0001\u0010FJ\u001e\u0010\u0087\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0086\u0001\u001a\u000200\u00a2\u0006\u0005\u0008\u0087\u0001\u0010NJ\"\u0010\u008a\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u0001\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u008b\u0001J\"\u0010\u008e\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u008d\u0001\u001a\u00030\u008c\u0001H\u0007\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001J \u0010\u0090\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u008d\u0001\u001a\u00030\u008c\u0001\u00a2\u0006\u0006\u0008\u0090\u0001\u0010\u008f\u0001J \u0010\u0091\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u008d\u0001\u001a\u00030\u008c\u0001\u00a2\u0006\u0006\u0008\u0091\u0001\u0010\u008f\u0001J\u0011\u0010\u0092\u0001\u001a\u00020\u000fH\u0007\u00a2\u0006\u0005\u0008\u0092\u0001\u0010\u001fJ\u0011\u0010\u0093\u0001\u001a\u00020\u000fH\u0007\u00a2\u0006\u0005\u0008\u0093\u0001\u0010\u001fJ\u0011\u0010\u0094\u0001\u001a\u00020\u000fH\u0007\u00a2\u0006\u0005\u0008\u0094\u0001\u0010\u001fJ\u001e\u0010\u0095\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0095\u0001\u001a\u000200\u00a2\u0006\u0005\u0008\u0095\u0001\u0010NJ\u001e\u0010\u0097\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0096\u0001\u001a\u000200\u00a2\u0006\u0005\u0008\u0097\u0001\u0010NJ\u001e\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0098\u0001\u001a\u000200\u00a2\u0006\u0005\u0008\u0098\u0001\u0010NJ\u001e\u0010\u009a\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0099\u0001\u001a\u000200\u00a2\u0006\u0005\u0008\u009a\u0001\u0010NJ \u0010\u009c\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u009b\u0001\u001a\u000200H\u0007\u00a2\u0006\u0005\u0008\u009c\u0001\u0010NJ!\u0010\u009d\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010D\u001a\u00020\u0008H\u0007\u00a2\u0006\u0005\u0008\u009d\u0001\u0010FJ;\u0010\u009d\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010G\u001a\u00020\u00082\u0008\u0008\u0001\u0010H\u001a\u00020\u00082\u0006\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u0008H\u0007\u00a2\u0006\u0005\u0008\u009d\u0001\u0010KR\u0019\u0010\u00a0\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u0018\u0010\u00a2\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001e\u0010\u00a1\u0001R\u0018\u0010\u00a3\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008 \u0010\u00a1\u0001R\u0019\u0010\u00a6\u0001\u001a\u00030\u00a4\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008(\u0010\u00a5\u0001R\u0017\u0010\u00a9\u0001\u001a\u00030\u00a7\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008!\u0010\u00a8\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030\u00aa\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R/\u0010A\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001\"\u0005\u0008B\u0010\u00b2\u0001R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u0017\u0010\u00b7\u0001\u001a\u00020q8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R\u001b\u0010\u00ba\u0001\u001a\u0005\u0018\u00010\u00b8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u00b9\u0001R\u001b\u0010\u00bd\u0001\u001a\u0005\u0018\u00010\u00bb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0010\u0010\u00bc\u0001R\u0018\u0010\u00be\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0015\u0010\u009f\u0001R\u0018\u0010\u00bf\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001c\u0010\u009f\u0001R\u001b\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u00c0\u0001R\u0018\u0010\u00c2\u0001\u001a\u00030\u0088\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00b4\u0001R\u0017\u0010\u00c4\u0001\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b3\u0001\u0010\u00c3\u0001R\u0016\u0010Q\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R\u0017\u0010\u00c7\u0001\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ab\u0001\u0010\u00c3\u0001R\u0017\u0010\u00c8\u0001\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ae\u0001\u0010\u00c3\u0001R\u0019\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000f8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R\'\u0010\u00cc\u0001\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0006\u0008\u00cb\u0001\u0010\u00c6\u0001\"\u0004\u0008}\u0010\u0016\u00a8\u0006\u00cf\u0001"
    }
    d2 = {
        "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "T",
        "Landroid/widget/RelativeLayout;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "endY",
        "disX",
        "disY",
        "Lzfb;",
        "l",
        "(III)V",
        "endX",
        "k",
        "state",
        "m",
        "(I)V",
        "position",
        "o",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "n",
        "(IFI)V",
        "c",
        "()V",
        "d",
        "f",
        "",
        "list",
        "setupViewPager",
        "(Ljava/util/List;)V",
        "Lt70;",
        "bannerOptions",
        "e",
        "(Lt70;)V",
        "item",
        "q",
        "onDetachedFromWindow",
        "onAttachedToWindow",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "onInterceptTouchEvent",
        "Landroid/graphics/Canvas;",
        "canvas",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "startLoop",
        "startLoopNow",
        "stopLoop",
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "adapter",
        "setAdapter",
        "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "radius",
        "setRoundCorner",
        "(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "topLeftRadius",
        "topRightRadius",
        "bottomLeftRadius",
        "bottomRightRadius",
        "(IIII)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "autoPlay",
        "setAutoPlay",
        "(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "canLoop",
        "setCanLoop",
        "interval",
        "setInterval",
        "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
        "transformer",
        "setPageTransformer",
        "(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "addPageTransformer",
        "removeTransformer",
        "(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V",
        "removeDefaultPageTransformer",
        "removeMarginPageTransformer",
        "pageMargin",
        "setPageMargin",
        "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;",
        "onPageClickListener",
        "setOnPageClickListener",
        "(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "scrollToThisItem",
        "(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "scrollDuration",
        "setScrollDuration",
        "",
        "data",
        "create",
        "orientation",
        "setOrientation",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "decor",
        "index",
        "addItemDecoration",
        "(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V",
        "(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V",
        "Ljava/lang/Runnable;",
        "runnable",
        "refreshData",
        "(Ljava/util/List;Ljava/lang/Runnable;)V",
        "refreshCurrentItem",
        "addData",
        "removeItem",
        "insertItem",
        "(ILjava/lang/Object;)V",
        "previousPage",
        "nextPage",
        "smoothScroll",
        "setCurrentItem",
        "(IZ)V",
        "revealWidth",
        "setRevealWidth",
        "leftRevealWidth",
        "rightRevealWidth",
        "(II)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "offScreenPageLimit",
        "setOffScreenPageLimit",
        "userInputEnabled",
        "setUserInputEnabled",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageChangeCallback",
        "registerOnPageChangeCallback",
        "(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycleRegistry",
        "setLifecycleRegistry",
        "(Landroidx/lifecycle/Lifecycle;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "registerLifecycleObserver",
        "removeLifecycleObserver",
        "onPause",
        "onResume",
        "onDestroy",
        "disallowParentInterceptDownEvent",
        "rtlMode",
        "setRTLMode",
        "stopLoopWhenDetachedFromWindow",
        "autoScrollSmoothly",
        "setAutoPlaySmoothly",
        "disallowIntercept",
        "disallowInterceptTouchEvent",
        "setRoundRect",
        "b",
        "I",
        "currentPosition",
        "Z",
        "isCustomIndicator",
        "isLooping",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "mViewPager",
        "Ls70;",
        "Ls70;",
        "mBannerManager",
        "Landroid/os/Handler;",
        "g",
        "Landroid/os/Handler;",
        "mHandler",
        "h",
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "getAdapter",
        "()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V",
        "i",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "j",
        "Ljava/lang/Runnable;",
        "mRunnable",
        "Landroid/graphics/RectF;",
        "Landroid/graphics/RectF;",
        "mRadiusRectF",
        "Landroid/graphics/Path;",
        "Landroid/graphics/Path;",
        "mRadiusPath",
        "startX",
        "startY",
        "Landroidx/lifecycle/Lifecycle;",
        "p",
        "mOnPageChangeCallback",
        "()Z",
        "isStopLoopWhenDetachedFromWindow",
        "getInterval",
        "()I",
        "isAutoPlay",
        "isCanLoopSafely",
        "getData",
        "()Ljava/util/List;",
        "getCurrentItem",
        "currentItem",
        "Companion",
        "a",
        "playercommon_release"
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
.field public static final Companion:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$a;


# instance fields
.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroidx/viewpager2/widget/ViewPager2;

.field public final f:Ls70;

.field public final g:Landroid/os/Handler;

.field public h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

.field public i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public final j:Ljava/lang/Runnable;

.field public k:Landroid/graphics/RectF;

.field public l:Landroid/graphics/Path;

.field public m:I

.field public n:I

.field public o:Landroidx/lifecycle/Lifecycle;

.field public final p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->Companion:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Ls70;

    invoke-direct {p3}, Ls70;-><init>()V

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g:Landroid/os/Handler;

    .line 7
    new-instance v0, La80;

    invoke-direct {v0, p0}, La80;-><init>(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->j:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p3, p1, p2}, Ls70;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    sget p2, Lcom/transsion/playercommon/R$layout;->bvp_layout_self:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    sget p1, Lcom/transsion/playercommon/R$id;->vp_main:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    invoke-virtual {p3}, Ls70;->c()Landroidx/viewpager2/widget/CompositePageTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 12
    new-instance p1, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1;-><init>(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->j(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)V

    return-void
.end method

.method public static final synthetic access$getMViewPager$p(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static final synthetic access$pageScrollStateChanged(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->m(I)V

    return-void
.end method

.method public static final synthetic access$pageScrolled(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;IFI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->n(IFI)V

    return-void
.end method

.method public static final synthetic access$pageSelected(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->o(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->p(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic create$default(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->create(Ljava/util/List;)V

    return-void
.end method

.method private final getInterval()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p0}, Ls70;->d()Lt70;

    move-result-object p0

    invoke-virtual {p0}, Lt70;->a()I

    move-result p0

    return p0
.end method

.method public static final j(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->c()V

    return-void
.end method

.method public static final p(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshData: new.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , old.size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BannerViewPagerSelf"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->stopLoop()V

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->x(Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->startLoop()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic refreshData$default(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->refreshData(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final setupViewPager(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0}, Lt70;->i()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lvq8;->a:Lvq8;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lt70;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lvq8;->a(Landroidx/viewpager2/widget/ViewPager2;I)V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lt70;->l()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->w(Z)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    sget-object v3, Lw70;->a:Lw70;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Lw70;->b(I)I

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lt70;->d()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lt70;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e(Lt70;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->startLoop()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "You must set adapter for BannerViewPagerSelf"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    const-string v0, "decor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 4

    const-string v0, "decor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v2}, Ls70;->d()Lt70;

    move-result-object v2

    invoke-virtual {v2}, Lt70;->l()Z

    .line 5
    sget-object v2, Lw70;->a:Lw70;

    invoke-virtual {v2, v1, v0}, Lw70;->c(II)I

    move-result v2

    if-eq v1, p2, :cond_4

    if-nez p2, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 6
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p2, v2

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ")",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0, p1}, Ls70;->a(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-object p0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v1}, Ls70;->d()Lt70;

    move-result-object v1

    invoke-virtual {v1}, Lt70;->k()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->j:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getInterval()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final create()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->create$default(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final create(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->x(Ljava/util/List;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d()V

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "You must set adapter for BannerViewPagerSelf"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setupViewPager(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f()V

    :cond_1
    return-void
.end method

.method public final disallowInterceptTouchEvent(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->r(Z)V

    return-object p0
.end method

.method public final disallowParentInterceptDownEvent(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->r(Z)V

    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0}, Lt70;->h()[F

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->k:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->l:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->k:Landroid/graphics/RectF;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->l:Landroid/graphics/Path;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->k:Landroid/graphics/RectF;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->l:Landroid/graphics/Path;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->startLoop()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->stopLoop()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e(Lt70;)V
    .locals 5

    invoke-virtual {p1}, Lt70;->f()I

    move-result v0

    invoke-virtual {p1}, Lt70;->b()I

    move-result v1

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_0

    if-eq v0, v2, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-static {v0, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lt70;->d()I

    move-result v3

    invoke-virtual {p1}, Lt70;->e()I

    move-result v4

    invoke-virtual {p1}, Lt70;->e()I

    move-result p1

    add-int/2addr p1, v1

    if-gez p1, :cond_1

    move p1, v2

    :cond_1
    if-gez v4, :cond_2

    move v4, v2

    :cond_2
    if-eqz v3, :cond_4

    const/4 v1, 0x1

    if-eq v3, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2, p1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p0}, Ls70;->b()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0}, Lt70;->g()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lgdc;->a:Lgdc;

    int-to-float v0, v0

    invoke-virtual {v1, p0, v0}, Lgdc;->a(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p0}, Ls70;->d()Lt70;

    move-result-object p0

    invoke-virtual {p0}, Lt70;->j()Z

    move-result p0

    return p0
.end method

.method public final getAdapter()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    return-object p0
.end method

.method public final getCurrentItem()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    return p0
.end method

.method public final getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0}, Lt70;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p0}, Ls70;->d()Lt70;

    move-result-object p0

    invoke-virtual {p0}, Lt70;->n()Z

    move-result p0

    return p0
.end method

.method public final insertItem(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-gt p1, v1, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public final k(III)V
    .locals 3

    const/4 v0, 0x0

    if-le p2, p3, :cond_4

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p2}, Ls70;->d()Lt70;

    move-result-object p2

    invoke-virtual {p2}, Lt70;->l()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    iget p2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->m:I

    sub-int p2, p1, p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->m:I

    sub-int/2addr p1, p0

    if-ltz p1, :cond_2

    :cond_1
    move v0, p3

    :cond_2
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-le p3, p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final l(III)V
    .locals 3

    const/4 v0, 0x0

    if-le p3, p2, :cond_4

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p2}, Ls70;->d()Lt70;

    move-result-object p2

    invoke-virtual {p2}, Lt70;->l()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    iget p2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->n:I

    sub-int p2, p1, p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->n:I

    sub-int/2addr p1, p0

    if-ltz p1, :cond_2

    :cond_1
    move v0, p3

    :cond_2
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-le p2, p3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final m(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final n(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lw70;->a:Lw70;

    invoke-virtual {v1, p1, v0}, Lw70;->c(II)I

    move-result p1

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public final nextPage()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setCurrentItem(I)V

    return-void
.end method

.method public final o(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v1}, Ls70;->d()Lt70;

    move-result-object v1

    invoke-virtual {v1}, Lt70;->l()Z

    move-result v1

    sget-object v2, Lw70;->a:Lw70;

    invoke-virtual {v2, p1, v0}, Lw70;->c(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    if-lez v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->q(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->startLoop()V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->stopLoop()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->stopLoop()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->m:I

    sub-int v3, v0, v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->n:I

    sub-int v4, v1, v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v5}, Ls70;->d()Lt70;

    move-result-object v5

    invoke-virtual {v5}, Lt70;->d()I

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v1, v3, v4}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->l(III)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0, v3, v4}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->k(III)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v1}, Ls70;->d()Lt70;

    move-result-object v1

    invoke-virtual {v1}, Lt70;->m()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->stopLoop()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SUPER_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    const-string v0, "IS_CUSTOM_INDICATOR"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->c:Z

    iget p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setCurrentItem(IZ)V

    return-void
.end method

.method public final onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->startLoop()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SUPER_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_POSITION"

    iget v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "IS_CUSTOM_INDICATOR"

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->c:Z

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final previousPage()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setCurrentItem(I)V

    return-void
.end method

.method public final q(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    sget-object v2, Lw70;->a:Lw70;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {v2, p0}, Lw70;->b(I)I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_1
    return-void
.end method

.method public final refreshCurrentItem()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final refreshData(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Lb80;

    invoke-direct {v0, p0, p1, p2}, Lb80;-><init>(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerLifecycleObserver(Landroidx/lifecycle/Lifecycle;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lifecycleRegistry"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->o:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public final registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
            ")",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->i:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method public final removeDefaultPageTransformer()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p0}, Ls70;->f()V

    return-void
.end method

.method public final removeItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge p1, v1, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public final removeLifecycleObserver(Landroidx/lifecycle/Lifecycle;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lifecycleRegistry"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p0
.end method

.method public final removeMarginPageTransformer()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p0}, Ls70;->g()V

    return-void
.end method

.method public final removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p0, p1}, Ls70;->h(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public final setAdapter(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter<",
            "TT;>;)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    return-object p0
.end method

.method public final setAdapter(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    return-void
.end method

.method public final setAutoPlay(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->o(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p1}, Ls70;->d()Lt70;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt70;->q(Z)V

    :cond_0
    return-object p0
.end method

.method public final setAutoPlaySmoothly(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->p(Z)V

    return-object p0
.end method

.method public final setCanLoop(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->q(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p1}, Ls70;->d()Lt70;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt70;->o(Z)V

    :cond_0
    return-object p0
.end method

.method public final setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->stopLoop()V

    .line 4
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 5
    sget-object v1, Lw70;->a:Lw70;

    .line 6
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v0, v2}, Lw70;->c(II)I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->startLoop()V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_1
    return-void
.end method

.method public final setInterval(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->s(I)V

    return-object p0
.end method

.method public final setLifecycleRegistry(Landroidx/lifecycle/Lifecycle;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lifecycleRegistry"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->registerLifecycleObserver(Landroidx/lifecycle/Lifecycle;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    return-object p0
.end method

.method public final setOffScreenPageLimit(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->u(I)V

    return-object p0
.end method

.method public final setOnPageClickListener(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;",
            ")",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onPageClickListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setOnPageClickListener(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    return-object p0
.end method

.method public final setOnPageClickListener(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;",
            "Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onPageClickListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$c;

    invoke-direct {v1, p1, p2, p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$c;-><init>(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;ZLcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->z(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;)V

    :cond_0
    return-object p0
.end method

.method public final setOrientation(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->v(I)V

    return-object p0
.end method

.method public final setPageMargin(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0, p1}, Ls70;->i(I)V

    return-object p0
.end method

.method public final setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ")",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-object p0
.end method

.method public final setRTLMode(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->A(Z)V

    return-object p0
.end method

.method public final setRevealWidth(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setRevealWidth(II)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    return-object p0
.end method

.method public final setRevealWidth(II)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p2}, Lt70;->x(I)V

    .line 3
    iget-object p2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {p2}, Ls70;->d()Lt70;

    move-result-object p2

    invoke-virtual {p2, p1}, Lt70;->t(I)V

    return-object p0
.end method

.method public final setRoundCorner(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->y(I)V

    return-object p0
.end method

.method public final setRoundCorner(IIII)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->k:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->l:Landroid/graphics/Path;

    .line 4
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lt70;->z(IIII)V

    return-object p0
.end method

.method public final setRoundRect(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setRoundCorner(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p0

    return-object p0
.end method

.method public final setRoundRect(IIII)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setRoundCorner(IIII)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p0

    return-object p0
.end method

.method public final setScrollDuration(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->B(I)V

    return-object p0
.end method

.method public final setUserInputEnabled(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->D(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    return-object p0
.end method

.method public final startLoop()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->o:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->o:Landroidx/lifecycle/Lifecycle;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->j:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    :cond_2
    return-void
.end method

.method public final startLoopNow()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->h:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    :cond_1
    return-void
.end method

.method public final stopLoop()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->d:Z

    :cond_0
    return-void
.end method

.method public final stopLoopWhenDetachedFromWindow(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->f:Ls70;

    invoke-virtual {v0}, Ls70;->d()Lt70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt70;->C(Z)V

    return-object p0
.end method
