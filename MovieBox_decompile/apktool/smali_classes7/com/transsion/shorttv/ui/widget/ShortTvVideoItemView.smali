.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/shorttv/ui/widget/d;
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0002\u00a8\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B!\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eB\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000fB\u001b\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\r\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0013JU\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010\'\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J-\u0010)\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00107\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u0010C\u001a\u00020\u001a2\u0006\u0010B\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u001f\u0010H\u001a\u00020\u00112\u0006\u0010F\u001a\u00020E2\u0006\u0010B\u001a\u00020GH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008J\u0010\u0013J\r\u0010K\u001a\u00020\u0011\u00a2\u0006\u0004\u0008K\u0010\u0013J\r\u0010L\u001a\u00020\u0011\u00a2\u0006\u0004\u0008L\u0010\u0013J\u000f\u0010M\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0013J\u0015\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u001c\u00a2\u0006\u0004\u0008O\u0010PJ\u0015\u0010R\u001a\u00020\u00112\u0006\u0010Q\u001a\u00020\u001c\u00a2\u0006\u0004\u0008R\u0010PJ\u000f\u0010S\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008S\u0010\u0013J\u000f\u0010T\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008T\u0010\u0013J\u0019\u0010W\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\u0019\u0010Y\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008Y\u0010XJ\u0019\u0010Z\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008Z\u0010XJ!\u0010]\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020[2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010_\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008_\u0010XJ\u0019\u0010`\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008`\u0010XJ!\u0010c\u001a\u00020\u00112\u0006\u0010b\u001a\u00020a2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008e\u0010\u0013J\u0019\u0010f\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008f\u0010XJ\u0019\u0010i\u001a\u00020\u00112\u0008\u0010h\u001a\u0004\u0018\u00010gH\u0016\u00a2\u0006\u0004\u0008i\u0010jJ\r\u0010k\u001a\u00020\u0011\u00a2\u0006\u0004\u0008k\u0010\u0013J\u000f\u0010l\u001a\u00020[H\u0016\u00a2\u0006\u0004\u0008l\u0010mJ\u0019\u0010q\u001a\u00020\u00112\u0008\u0010n\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008o\u0010pJ\u0019\u0010t\u001a\u00020\u00112\u0008\u0008\u0002\u0010r\u001a\u00020\u001aH\u0000\u00a2\u0006\u0004\u0008s\u0010@J\r\u0010u\u001a\u00020\u0011\u00a2\u0006\u0004\u0008u\u0010\u0013J\u000f\u0010v\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008v\u0010\u0013J\u000f\u0010w\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008w\u0010\u0013J\u001f\u0010z\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020\u000b2\u0006\u0010y\u001a\u00020xH\u0016\u00a2\u0006\u0004\u0008z\u0010{J\u0017\u0010|\u001a\u00020\u00112\u0006\u0010y\u001a\u00020xH\u0016\u00a2\u0006\u0004\u0008|\u0010}J(\u0010\u0082\u0001\u001a\u00020\u00112\u000b\u0010\u0080\u0001\u001a\u00060~j\u0002`\u007f2\u0007\u0010\u0081\u0001\u001a\u00020xH\u0016\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u0013J\u001e\u0010\u0087\u0001\u001a\u00020\u00112\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0002\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J\u0019\u0010\u0089\u0001\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0005\u0008\u0089\u0001\u0010\u000fJ\u0011\u0010\u008a\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u008a\u0001\u0010\u0013J\u0011\u0010\u008b\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u008b\u0001\u0010\u0013J\u001a\u0010\u008d\u0001\u001a\u00020\u00112\u0007\u0010\u008c\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0005\u0008\u008d\u0001\u0010@J(\u0010\u0090\u0001\u001a\u00020\u00112\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0006\u0008\u0090\u0001\u0010\u0091\u0001J:\u0010\u0096\u0001\u001a\u00020\u00112\u0007\u0010\u0092\u0001\u001a\u00020\u001c2\u0008\u0010\u0094\u0001\u001a\u00030\u0093\u00012\t\u0010\u0016\u001a\u0005\u0018\u00010\u0095\u00012\u0008\u0008\u0002\u0010 \u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0005\u0008\u0098\u0001\u00101J\u001a\u0010\u0099\u0001\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020[H\u0002\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J\u001b\u0010\u009c\u0001\u001a\u00020\u00112\u0007\u0010\u009b\u0001\u001a\u00020[H\u0002\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009a\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009f\u0001\u0010\u0013J\u0011\u0010\u00a0\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a0\u0001\u0010\u0013J\u001a\u0010\u00a2\u0001\u001a\u00020\u00112\u0007\u0010\u00a1\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010@J\u001a\u0010\u00a4\u0001\u001a\u00020\u00112\u0007\u0010\u00a3\u0001\u001a\u00020gH\u0002\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010jJ\u0011\u0010\u00a5\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a5\u0001\u0010\u0013J\u0011\u0010\u00a6\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a6\u0001\u0010\u0013J\u0011\u0010\u00a7\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a7\u0001\u0010\u0013J\u0011\u0010\u00a8\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a8\u0001\u0010\u0013J&\u0010\u00ab\u0001\u001a\u00020\u00112\u0006\u0010&\u001a\u00020%2\n\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00a9\u0001H\u0002\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010\u0013J\u0011\u0010\u00ae\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00ae\u0001\u0010\u0013J\u001b\u0010\u00af\u0001\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0005\u0008\u00af\u0001\u00101J\u0011\u0010\u00b0\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00b0\u0001\u0010\u0013J)\u0010\u00b1\u0001\u001a\u00020\u00112\t\u0010\u00a3\u0001\u001a\u0004\u0018\u00010g2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0002\u00a2\u0006\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001J)\u0010\u00b3\u0001\u001a\u00020\u00112\t\u0010\u00a3\u0001\u001a\u0004\u0018\u00010g2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0002\u00a2\u0006\u0006\u0008\u00b3\u0001\u0010\u00b2\u0001J\u0011\u0010\u00b4\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010\u0013J\u0011\u0010\u00b5\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010\u0013J\u001c\u0010\u00b8\u0001\u001a\u00030\u00b7\u00012\u0007\u0010\u00b6\u0001\u001a\u00020\u001cH\u0002\u00a2\u0006\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001J\u001b\u0010\u00bb\u0001\u001a\u00020\u00112\u0007\u0010\u00ba\u0001\u001a\u00020[H\u0002\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u009a\u0001J\u0011\u0010\u00bc\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00bc\u0001\u0010\u0013J\u001c\u0010\u00be\u0001\u001a\u00020\u00112\t\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0005\u0008\u00be\u0001\u0010PJ\u0011\u0010\u00bf\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00bf\u0001\u0010\u0013J\u0011\u0010\u00c0\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c0\u0001\u0010\u0013J\u0011\u0010\u00c1\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c1\u0001\u0010\u0013J\u0011\u0010\u00c2\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c2\u0001\u0010\u0013J\u0011\u0010\u00c3\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c3\u0001\u0010\u0013J\u0011\u0010\u00c4\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c4\u0001\u0010\u0013J\u0011\u0010\u00c5\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c5\u0001\u0010\u0013J\u0011\u0010\u00c6\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c6\u0001\u0010\u0013J\u001b\u0010\u00c8\u0001\u001a\u00020\u00112\u0007\u0010\u0016\u001a\u00030\u00c7\u0001H\u0002\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001J\u001c\u0010\u00cc\u0001\u001a\u00020\u00112\u0008\u0010\u00cb\u0001\u001a\u00030\u00ca\u0001H\u0002\u00a2\u0006\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001J\u001b\u0010\u00ce\u0001\u001a\u00020\u00112\u0007\u0010\u0016\u001a\u00030\u00c7\u0001H\u0002\u00a2\u0006\u0006\u0008\u00ce\u0001\u0010\u00c9\u0001J\u0012\u0010\u00cf\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001J\u0012\u0010\u00d1\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u00d1\u0001\u0010\u00d0\u0001J\u0019\u0010\u00d2\u0001\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0005\u0008\u00d2\u0001\u00101J\u0019\u0010\u00d3\u0001\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0005\u0008\u00d3\u0001\u00101R\u0017\u0010\u00d6\u0001\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R\u0017\u0010\u00d8\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u00ab\u0001R\u0018\u0010\u00dc\u0001\u001a\u00030\u00d9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00da\u0001\u0010\u00db\u0001R\u001b\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u00de\u0001R\u001c\u0010\u00e1\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u00e0\u0001R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u00e6\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e7\u0001\u0010\u00d5\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ea\u0001\u0010\u00eb\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001R\u001c\u0010\u00f1\u0001\u001a\u0005\u0018\u00010\u00ee\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ef\u0001\u0010\u00f0\u0001R\u001c\u0010\u00f5\u0001\u001a\u0005\u0018\u00010\u00f2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R\u0019\u0010\u00f7\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f6\u0001\u0010\u0089\u0001R\u0019\u0010\u00f9\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f8\u0001\u0010\u0089\u0001R\u0019\u0010\u00fb\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fa\u0001\u0010\u0089\u0001R\u0019\u0010\u00fd\u0001\u001a\u00020[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00b1\u0001R(\u0010\u00ff\u0001\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00fe\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u00ff\u0001\u0010\u00d0\u0001\"\u0005\u0008\u0080\u0002\u0010@R\u001c\u0010\u0084\u0002\u001a\u0005\u0018\u00010\u0081\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0002\u0010\u0083\u0002R\u0017\u0010\u0086\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0002\u0010\u00ab\u0001R\u0016\u0010\u0087\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008h\u0010\u00ab\u0001R\u0017\u0010\u0088\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u00ab\u0001R\u0017\u0010\u008a\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0002\u0010\u00ab\u0001R\u0018\u0010N\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0002\u0010\u00d5\u0001R\u001b\u0010\u008e\u0002\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0002\u0010\u008d\u0002R\u001c\u0010\u0092\u0002\u001a\u0005\u0018\u00010\u008f\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0002\u0010\u0091\u0002R\u0019\u0010\u0094\u0002\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0002\u0010\u00ab\u0001R\u0019\u0010\u0096\u0002\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0002\u0010\u00ab\u0001R\u001c\u0010\u009a\u0002\u001a\u0005\u0018\u00010\u0097\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0002\u0010\u0099\u0002R\u001a\u0010\u009e\u0002\u001a\u00030\u009b\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0002\u0010\u009d\u0002R\u0017\u0010\u00a0\u0002\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0002\u0010\u0089\u0001R\u0019\u0010\u00a2\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0002\u0010\u0089\u0001R\u001e\u0010\u00a6\u0002\u001a\t\u0012\u0004\u0012\u00020\u001a0\u00a3\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0002\u0010\u00a5\u0002R \u0010\u00a7\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00a3\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00a5\u0002R\u0018\u0010\u00aa\u0002\u001a\u00030\u00a8\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00a9\u0002R\u0019\u0010\u00ab\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u0089\u0001R\u0019\u0010\u00ac\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u0089\u0001R\u001d\u0010\u00b1\u0002\u001a\u00080\u00ad\u0002j\u0003`\u00ae\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0002\u0010\u00b0\u0002R\u0019\u0010\u00b2\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u0089\u0001R\u0018\u0010\u00b5\u0002\u001a\u00030\u00b3\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00b4\u0002R\u001d\u0010\u00b7\u0002\u001a\u00080\u00ad\u0002j\u0003`\u00ae\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0002\u0010\u00b0\u0002R\u001b\u0010\u00b8\u0002\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00e6\u0001R\u001b\u0010\u00bb\u0002\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0002\u0010\u00ba\u0002R\u0019\u0010\u00bc\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u0089\u0001R\u001c\u0010\u00c0\u0002\u001a\u0005\u0018\u00010\u00bd\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0002\u0010\u00bf\u0002R\u0019\u0010\u00c1\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0089\u0001R,\u0010\u00c8\u0002\u001a\u0005\u0018\u00010\u00c2\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b5\u0001\u0010\u00c3\u0002\u001a\u0006\u0008\u00c4\u0002\u0010\u00c5\u0002\"\u0006\u0008\u00c6\u0002\u0010\u00c7\u0002R\u001c\u0010\u00ca\u0002\u001a\u0005\u0018\u00010\u00c7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00c9\u0002R\u0019\u0010\u00cb\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u0089\u0001\u00a8\u0006\u00cc\u0002"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/e;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/r;",
        "Lcom/transsion/shorttv/ui/widget/d;",
        "Lcom/transsion/subtitle_download/a;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Lnr/e;",
        "item",
        "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
        "fragment",
        "position",
        "",
        "videoLoadMore",
        "",
        "basePostId",
        "baseItemType",
        "isPayloads",
        "fromTrending",
        "setData",
        "(Lnr/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V",
        "Lcom/transsion/player/orplayer/f;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "onPageSelected",
        "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V",
        "updateShortTvInfo",
        "onPageRelease",
        "(I)V",
        "width",
        "height",
        "onVideoSizeChanged",
        "(II)V",
        "updateLockState",
        "(Lnr/e;)V",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "setPagerLayoutManager",
        "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V",
        "Landroid/widget/FrameLayout;",
        "getPlayerContainer",
        "()Landroid/widget/FrameLayout;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "getViewModel",
        "(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "hasWindowFocus",
        "onWindowFocusChanged",
        "(Z)V",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroidx/lifecycle/u;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onStateChanged",
        "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V",
        "onPlayerReset",
        "onMediaItemTransition",
        "reset",
        "app2Background",
        "pageFrom",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "onRenderFirstFrame",
        "Lgn/e;",
        "mediaSource",
        "onVideoStart",
        "(Lgn/e;)V",
        "onPrepare",
        "onVideoPause",
        "",
        "progress",
        "onProgress",
        "(JLgn/e;)V",
        "onLoadingBegin",
        "onLoadingEnd",
        "Lcom/transsion/player/orplayer/PlayError;",
        "errorInfo",
        "onPlayError",
        "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V",
        "onLoopingStart",
        "onCompletion",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "showEpisodeListDialog",
        "getProgress",
        "()J",
        "remaining",
        "updateUnlockCountdownText$shortTvLib_release",
        "(Ljava/lang/Integer;)V",
        "updateUnlockCountdownText",
        "isAuto",
        "watchAdToUnlock$shortTvLib_release",
        "watchAdToUnlock",
        "onNetConnect",
        "onGetDubsInfo",
        "onAudioTrackChange",
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
        "stDownloadTable",
        "onDownloading",
        "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "onComplete",
        "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "dbBean",
        "onFail",
        "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "T0",
        "Lnr/f;",
        "result",
        "U",
        "(Lnr/f;)V",
        "Z",
        "Y",
        "Q0",
        "isImmersive",
        "Y0",
        "w",
        "h",
        "Z0",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "ep",
        "Lcom/transsion/shorttv/bean/Subject;",
        "subject",
        "Lcom/transsion/shorttv/bean/ShortTVItem;",
        "I0",
        "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;Z)V",
        "b1",
        "V0",
        "(J)V",
        "max",
        "W0",
        "v0",
        "H0",
        "O0",
        "a0",
        "show",
        "setLoading",
        "view",
        "B0",
        "e0",
        "X",
        "L",
        "P0",
        "Lcom/transsion/shorttv/bean/Video;",
        "video",
        "I",
        "(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/bean/Video;)V",
        "R0",
        "S0",
        "K0",
        "W",
        "J",
        "(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V",
        "K",
        "J0",
        "V",
        "time",
        "Landroid/text/SpannableString;",
        "N",
        "(Ljava/lang/String;)Landroid/text/SpannableString;",
        "remainingMs",
        "U0",
        "O",
        "userId",
        "Q",
        "h0",
        "C0",
        "g0",
        "z0",
        "b0",
        "x0",
        "q0",
        "E0",
        "Lxr/b;",
        "G0",
        "(Lxr/b;)V",
        "Lcom/transsion/shorttv/bean/DubsInfo;",
        "info",
        "s0",
        "(Lcom/transsion/shorttv/bean/DubsInfo;)V",
        "S",
        "j0",
        "()Z",
        "i0",
        "o0",
        "k0",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "b",
        "screenWidth",
        "Lqr/k0;",
        "c",
        "Lqr/k0;",
        "viewBinding",
        "d",
        "Lnr/e;",
        "data",
        "Lcom/transsion/shorttv/bean/Subject;",
        "shortTvInfo",
        "f",
        "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
        "g",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "i",
        "j",
        "Lcom/transsion/player/orplayer/f;",
        "k",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "l",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "Landroid/view/GestureDetector;",
        "m",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lwr/c;",
        "n",
        "Lwr/c;",
        "dotLayer",
        "o",
        "isClickPause",
        "p",
        "isHorizontalDragging",
        "q",
        "isPageHide",
        "r",
        "currentSaveProgress",
        "s",
        "isFirstPlayInSession",
        "setFirstPlayInSession",
        "Lcom/transsion/shorttv/ui/widget/c;",
        "t",
        "Lcom/transsion/shorttv/ui/widget/c;",
        "downloadGuideBubbleController",
        "u",
        "resImgLargeWidth",
        "resImgLargeHeight",
        "resImgSmallWidth",
        "x",
        "resImgSmallHeight",
        "y",
        "z",
        "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "mShortTvViewModel",
        "Las/a;",
        "A",
        "Las/a;",
        "mShortTvSubViewModel",
        "B",
        "videoWidth",
        "C",
        "videoHeight",
        "Lcom/transsion/shorttv/subtitle/a;",
        "D",
        "Lcom/transsion/shorttv/subtitle/a;",
        "subtitleControl",
        "Landroidx/constraintlayout/widget/Group;",
        "E",
        "Landroidx/constraintlayout/widget/Group;",
        "groupContent",
        "F",
        "isOptimizeEnable",
        "G",
        "hasAd",
        "Landroidx/lifecycle/c0;",
        "H",
        "Landroidx/lifecycle/c0;",
        "observer",
        "favoriteObserver",
        "com/transsion/shorttv/ui/widget/ShortTvVideoItemView$d",
        "Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;",
        "favoriteResultObserver",
        "isFirstFrame",
        "isPrepare",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "M",
        "Ljava/lang/Runnable;",
        "delayToastNetErrRunnable",
        "isLoading",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "autoHideRightMenuHandle",
        "P",
        "autoHideRightMenuRunnable",
        "watchAdUnlockSeconds",
        "R",
        "Landroid/view/View;",
        "lockedView",
        "isEpisodeLocked",
        "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;",
        "T",
        "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;",
        "videoAdHelper",
        "isFreePreviewMode",
        "Lcom/transsion/shorttv/ui/widget/a1;",
        "Lcom/transsion/shorttv/ui/widget/a1;",
        "getCountdownController",
        "()Lcom/transsion/shorttv/ui/widget/a1;",
        "setCountdownController",
        "(Lcom/transsion/shorttv/ui/widget/a1;)V",
        "countdownController",
        "Lxr/b;",
        "subDownloadBean",
        "hasSubDownloading",
        "shortTvLib_release"
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


# instance fields
.field private A:Las/a;

.field private B:I

.field private C:I

.field private D:Lcom/transsion/shorttv/subtitle/a;

.field private E:Landroidx/constraintlayout/widget/Group;

.field private final F:Z

.field private G:Z

.field private final H:Landroidx/lifecycle/c0;

.field private final I:Landroidx/lifecycle/c0;

.field private final J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

.field private K:Z

.field private L:Z

.field private final M:Ljava/lang/Runnable;

.field private N:Z

.field private final O:Landroid/os/Handler;

.field private final P:Ljava/lang/Runnable;

.field private Q:Ljava/lang/Integer;

.field private R:Landroid/view/View;

.field private S:Z

.field private T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

.field private U:Z

.field private V:Lcom/transsion/shorttv/ui/widget/a1;

.field private W:Lxr/b;

.field private final a:Ljava/lang/String;

.field private a0:Z

.field private final b:I

.field private final c:Lqr/k0;

.field private d:Lnr/e;

.field private e:Lcom/transsion/shorttv/bean/Subject;

.field private f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:Lcom/transsion/player/orplayer/f;

.field private k:Lcom/transsion/player/ui/ORPlayerView;

.field private l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private m:Landroid/view/GestureDetector;

.field private n:Lwr/c;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Lcom/transsion/shorttv/ui/widget/c;

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private y:Ljava/lang/String;

.field private z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    const-string p2, "ShortTv-Imm"

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b:I

    .line 4
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y:Ljava/lang/String;

    .line 5
    sget-object p3, Lpq/a;->a:Lpq/a;

    invoke-virtual {p3}, Lpq/a;->c()Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_layout_video_item_view:I

    invoke-static {p3, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    invoke-static {p0}, Lqr/k0;->a(Landroid/view/View;)Lqr/k0;

    move-result-object p3

    const-string v0, "bind(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 8
    iget-object v0, p3, Lqr/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result p2

    .line 10
    iget-object v0, p3, Lqr/k0;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 11
    iget-object v0, p3, Lqr/k0;->H:Lcom/noober/background/view/BLTextView;

    const-string v1, "tvWatchFreeCountdown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/high16 v2, 0x41200000    # 10.0f

    .line 13
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    add-int/2addr p2, v2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p2, p3, Lqr/k0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p3, Lqr/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p2, p3, Lqr/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p2, p3, Lqr/k0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p2, p3, Lqr/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p2, p3, Lqr/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p2, p3, Lqr/k0;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p2, p3, Lqr/k0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p2, p3, Lqr/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p2, p3, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p2, p3, Lqr/k0;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p2, p3, Lqr/k0;->F:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p3, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p2, 0x42400000    # 48.0f

    .line 28
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->u:I

    const/high16 p2, 0x42800000    # 64.0f

    .line 29
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v:I

    const/high16 p2, 0x41c00000    # 24.0f

    .line 30
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->w:I

    const/high16 p2, 0x42000000    # 32.0f

    .line 31
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->x:I

    .line 32
    sget-object p2, Lpq/c;->a:Lpq/c;

    invoke-virtual {p2}, Lpq/c;->b()Lpq/b;

    move-result-object p2

    invoke-virtual {p2}, Lpq/b;->d()Lpq/b$d;

    move-result-object p2

    invoke-interface {p2}, Lpq/b$d;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    iget-object p2, p3, Lqr/k0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivShare"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcr/b;->b(Landroid/view/View;)V

    .line 34
    iget-object p2, p3, Lqr/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvFavorite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcr/b;->b(Landroid/view/View;)V

    .line 35
    iget-object p2, p3, Lqr/k0;->g:Landroidx/constraintlayout/widget/Group;

    .line 36
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p2, p3, Lqr/k0;->h:Landroidx/constraintlayout/widget/Group;

    .line 38
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    :goto_0
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E:Landroidx/constraintlayout/widget/Group;

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0()V

    .line 42
    new-instance p1, Lcom/transsion/shorttv/ui/widget/q0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/q0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H:Landroidx/lifecycle/c0;

    .line 43
    new-instance p1, Lcom/transsion/shorttv/ui/widget/r0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/r0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I:Landroidx/lifecycle/c0;

    .line 44
    new-instance p1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    .line 45
    new-instance p1, Lcom/transsion/shorttv/ui/widget/s0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/s0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M:Ljava/lang/Runnable;

    .line 46
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    .line 47
    new-instance p1, Lcom/transsion/shorttv/ui/widget/t0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/t0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    .line 48
    sget-object p1, Lyq/a;->a:Lyq/a;

    const-string p1, "autoWatchAdCountDown"

    const-string p2, "ShortTvPlayerUnlockPlayScene"

    const/4 p3, 0x0

    .line 49
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p2}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    move-object p1, p3

    :goto_1
    const-class p2, Ljava/lang/Integer;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 52
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    :cond_2
    :goto_2
    move-object p1, p3

    goto :goto_4

    .line 53
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, p3

    :goto_3
    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_7

    goto :goto_2

    .line 54
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    goto :goto_2

    .line 55
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    goto :goto_2

    .line 56
    :cond_7
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_8

    move-object p3, p1

    .line 58
    :cond_8
    check-cast p3, Ljava/lang/Integer;

    .line 59
    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q:Ljava/lang/Integer;

    return-void

    .line 60
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic A(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final A0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 12

    .line 1
    const-string v0, "clickItem"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    cmpg-float p1, p1, v0

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p1, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    float-to-int v1, v1

    .line 34
    const-string v2, "k_short_tv_resolution"

    .line 35
    .line 36
    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 40
    .line 41
    iget-object p1, p1, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    float-to-int v1, v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "P"

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 p2, 0x0

    .line 69
    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_d

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_d

    .line 77
    .line 78
    check-cast p1, Ljava/lang/Iterable;

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    move-object v3, v2

    .line 95
    check-cast v3, Lcom/transsion/shorttv/bean/Video;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move v3, v1

    .line 115
    :goto_0
    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    float-to-int v4, v4

    .line 120
    if-ne v3, v4, :cond_1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object v2, p2

    .line 124
    :goto_1
    check-cast v2, Lcom/transsion/shorttv/bean/Video;

    .line 125
    .line 126
    if-eqz v2, :cond_d

    .line 127
    .line 128
    new-instance p1, Lgn/e;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const-string v11, ""

    .line 139
    .line 140
    if-nez v3, :cond_4

    .line 141
    .line 142
    move-object v5, v11

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move-object v5, v3

    .line 145
    :goto_2
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 146
    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_5

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    move v6, v3

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    move v6, v1

    .line 162
    :goto_3
    const/16 v9, 0x18

    .line 163
    .line 164
    const/4 v10, 0x0

    .line 165
    const/4 v7, 0x0

    .line 166
    const/4 v8, 0x0

    .line 167
    move-object v3, p1

    .line 168
    invoke-direct/range {v3 .. v10}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    .line 170
    .line 171
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 172
    .line 173
    instance-of v4, v3, Lpn/f;

    .line 174
    .line 175
    if-eqz v4, :cond_6

    .line 176
    .line 177
    check-cast v3, Lpn/f;

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    move-object v3, p2

    .line 181
    :goto_4
    if-eqz v3, :cond_7

    .line 182
    .line 183
    invoke-interface {v3}, Lpn/f;->b()Ljava/util/Map;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-eqz v3, :cond_7

    .line 188
    .line 189
    invoke-virtual {p1}, Lgn/e;->e()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    goto :goto_5

    .line 198
    :cond_7
    move v3, v1

    .line 199
    :goto_5
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 200
    .line 201
    iget-object v5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 208
    .line 209
    if-eqz v6, :cond_8

    .line 210
    .line 211
    invoke-virtual {v6}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    if-eqz v6, :cond_8

    .line 216
    .line 217
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    goto :goto_6

    .line 226
    :cond_8
    move-object v6, p2

    .line 227
    :goto_6
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v8, "resolution play, res:"

    .line 237
    .line 238
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string p3, ", EP:"

    .line 245
    .line 246
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p3, ", inList:"

    .line 253
    .line 254
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string p3, ", url:"

    .line 261
    .line 262
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    const/4 v8, 0x4

    .line 273
    const/4 v9, 0x0

    .line 274
    const/4 v7, 0x0

    .line 275
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 279
    .line 280
    if-eqz p3, :cond_9

    .line 281
    .line 282
    invoke-interface {p3}, Lcom/transsion/player/orplayer/f;->getCurrentPosition()J

    .line 283
    .line 284
    .line 285
    move-result-wide v4

    .line 286
    goto :goto_7

    .line 287
    :cond_9
    const-wide/16 v4, 0x0

    .line 288
    .line 289
    :goto_7
    if-nez v3, :cond_b

    .line 290
    .line 291
    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 292
    .line 293
    if-eqz p3, :cond_a

    .line 294
    .line 295
    invoke-interface {p3, p1}, Lcom/transsion/player/orplayer/f;->addDataSource(Lgn/e;)Z

    .line 296
    .line 297
    .line 298
    :cond_a
    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 299
    .line 300
    if-eqz p3, :cond_b

    .line 301
    .line 302
    invoke-interface {p3}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 303
    .line 304
    .line 305
    :cond_b
    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 306
    .line 307
    if-eqz p3, :cond_d

    .line 308
    .line 309
    invoke-virtual {p1}, Lgn/e;->e()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    if-nez p1, :cond_c

    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_c
    move-object v11, p1

    .line 317
    :goto_8
    invoke-interface {p3, v11, v4, v5}, Lcom/transsion/player/orplayer/f;->seekTo(Ljava/lang/String;J)V

    .line 318
    .line 319
    .line 320
    :cond_d
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 321
    .line 322
    if-eqz p1, :cond_10

    .line 323
    .line 324
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p3

    .line 328
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 329
    .line 330
    if-eqz v0, :cond_e

    .line 331
    .line 332
    invoke-virtual {v0}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_e

    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    :cond_e
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 343
    .line 344
    instance-of v0, p0, Lpn/f;

    .line 345
    .line 346
    if-eqz v0, :cond_f

    .line 347
    .line 348
    move-object p2, p0

    .line 349
    check-cast p2, Lpn/f;

    .line 350
    .line 351
    :cond_f
    invoke-virtual {p1, p3, v1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W0(Ljava/lang/String;ILpn/f;)V

    .line 352
    .line 353
    .line 354
    :cond_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 355
    .line 356
    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B0(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget-object v0, Lwr/b;->a:Lwr/b;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v3, v7

    .line 45
    :goto_0
    const/16 v5, 0x8

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static/range {v0 .. v6}, Lwr/b;->n(Lwr/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C0()Lur/k;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv/bean/Subject;

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    :cond_3
    const-string v2, ""

    .line 87
    .line 88
    :cond_4
    invoke-interface {v0, v1, p1, v7, v2}, Lur/k;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic C(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lnr/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lnr/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final C0()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "VideoSpeed, click"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "k_short_tv_speed"

    .line 23
    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {}, Lcom/transsion/shorttv/utils/l;->b()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    cmpg-float v3, v3, v0

    .line 57
    .line 58
    if-nez v3, :cond_0

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/4 v3, 0x0

    .line 63
    :goto_1
    invoke-virtual {v2, v3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->setSelect(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 68
    .line 69
    iget-object v1, v1, Lqr/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    const-string v2, "tvSpeed"

    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/transsion/shorttv/utils/l;->b()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Lcom/transsion/shorttv/ui/widget/l0;

    .line 81
    .line 82
    invoke-direct {v3, p0, v0}, Lcom/transsion/shorttv/ui/widget/l0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;F)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2, v3}, Lcom/transsion/shorttv/utils/l;->c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static synthetic D(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->m0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final D0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;FLcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "clickItem"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    cmpg-float p1, p1, p2

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object p1, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "k_short_tv_speed"

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    float-to-int p1, p2

    .line 32
    int-to-float v0, p1

    .line 33
    cmpg-float v0, v0, p2

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 47
    .line 48
    iget-object v0, v0, Lqr/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, "x"

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 71
    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    invoke-interface {p0, p2}, Lcom/transsion/player/orplayer/f;->setSpeed(F)V

    .line 75
    .line 76
    .line 77
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method

.method public static synthetic E(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->u0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final E0()V
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
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A:Las/a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Las/a;->d()Landroidx/lifecycle/b0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/List;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->D0(I)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/transsion/shorttv/ui/widget/d0;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/d0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->C0(Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const-string v2, "ShortTvLanguageSelectDialog_Subtitle"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->j0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void

    .line 81
    :cond_4
    :goto_1
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 82
    .line 83
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_error_content:I

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static synthetic F(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "off"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/transsion/shorttv/subtitle/a;->f()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubInfo()Lxr/b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G0(Lxr/b;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static synthetic G(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G0(Lxr/b;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onSubtitleSelect"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "k_subtitle_language"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "k_subtitle_select_lan"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lxr/b;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S(Lxr/b;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-interface {v0, p1}, Lcom/transsion/shorttv/subtitle/a;->h(Lxr/b;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lxr/b;

    .line 70
    .line 71
    return-void
.end method

.method public static synthetic H(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final H0()V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v4, "playVideo   data:"

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "  orPlayer:"

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v4, 0x4

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v0, v6

    .line 38
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 42
    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 46
    .line 47
    invoke-static {v0}, Lnr/l;->b(Lnr/e;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 59
    .line 60
    invoke-static {v0}, Lnr/l;->b(Lnr/e;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v4, 0x4

    .line 81
    const/4 v5, 0x0

    .line 82
    const-string v2, "player- no free now, show pay dialog"

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    move-object v0, v6

    .line 86
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isComplete()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v1, 0x1

    .line 110
    if-ne v0, v1, :cond_4

    .line 111
    .line 112
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    const-wide/16 v1, 0x0

    .line 117
    .line 118
    invoke-interface {v0, v1, v2}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 129
    .line 130
    const/4 v4, 0x4

    .line 131
    const/4 v5, 0x0

    .line 132
    const-string v2, "player- startplay    "

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    move-object v0, v6

    .line 136
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_1
    return-void
.end method

.method private final I(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/bean/Video;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 6
    .line 7
    iget-object v1, v1, Lqr/k0;->e:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 31
    .line 32
    iget-object v1, v1, Lqr/k0;->e:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private final I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;Z)V
    .locals 4

    .line 1
    const/4 p4, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 5
    .line 6
    iget-object v2, v2, Lqr/k0;->d:Lcom/transsion/shorttv/base/widget/expand/ExpandView;

    .line 7
    .line 8
    new-instance v3, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$h;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$h;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/transsion/shorttv/base/widget/expand/ExpandView;->setExpandListener(Lcom/transsion/shorttv/base/widget/expand/ExpandView$c;)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDescription()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    const-string p2, ""

    .line 42
    .line 43
    :cond_1
    :goto_0
    const-string p3, "format(...)"

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 55
    .line 56
    new-array v3, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object p1, v3, p4

    .line 59
    .line 60
    aput-object p2, v3, v1

    .line 61
    .line 62
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, "EP%s | %s"

    .line 67
    .line 68
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 77
    .line 78
    new-array p2, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p1, p2, p4

    .line 81
    .line 82
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "EP%s"

    .line 87
    .line 88
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    :goto_3
    invoke-virtual {v2, p1}, Lcom/transsion/shorttv/base/widget/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private final J(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    sget v2, Lcom/transsion/shorttv/R$id;->iv_lock_icon:I

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object v2, v1

    .line 42
    :goto_0
    if-eqz p1, :cond_3

    .line 43
    .line 44
    sget v3, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move-object v3, v1

    .line 52
    :goto_1
    if-eqz p1, :cond_4

    .line 53
    .line 54
    sget v4, Lcom/transsion/shorttv/R$id;->tv_buy_to_continue:I

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    move-object v4, v1

    .line 62
    :goto_2
    if-eqz p1, :cond_5

    .line 63
    .line 64
    sget v1, Lcom/transsion/shorttv/R$id;->container_series_info:I

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_5
    if-eqz v0, :cond_9

    .line 71
    .line 72
    if-eqz p2, :cond_9

    .line 73
    .line 74
    if-eqz v2, :cond_6

    .line 75
    .line 76
    invoke-static {v2}, Lcr/b;->e(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    if-eqz v3, :cond_7

    .line 80
    .line 81
    invoke-static {v3}, Lcr/b;->e(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :cond_7
    if-eqz v4, :cond_8

    .line 85
    .line 86
    invoke-static {v4}, Lcr/b;->b(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_8
    if-eqz v1, :cond_15

    .line 90
    .line 91
    invoke-static {v1}, Lcr/b;->e(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_9
    if-eqz v0, :cond_d

    .line 96
    .line 97
    if-eqz v2, :cond_a

    .line 98
    .line 99
    invoke-static {v2}, Lcr/b;->e(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    :cond_a
    if-eqz v3, :cond_b

    .line 103
    .line 104
    invoke-static {v3}, Lcr/b;->b(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_b
    if-eqz v4, :cond_c

    .line 108
    .line 109
    invoke-static {v4}, Lcr/b;->e(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    :cond_c
    if-eqz v1, :cond_15

    .line 113
    .line 114
    invoke-static {v1}, Lcr/b;->e(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_d
    if-eqz p2, :cond_11

    .line 119
    .line 120
    if-eqz v2, :cond_e

    .line 121
    .line 122
    invoke-static {v2}, Lcr/b;->e(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    :cond_e
    if-eqz v3, :cond_f

    .line 126
    .line 127
    invoke-static {v3}, Lcr/b;->e(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    :cond_f
    if-eqz v4, :cond_10

    .line 131
    .line 132
    invoke-static {v4}, Lcr/b;->b(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    :cond_10
    if-eqz v1, :cond_15

    .line 136
    .line 137
    invoke-static {v1}, Lcr/b;->b(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_11
    if-eqz v2, :cond_12

    .line 142
    .line 143
    invoke-static {v2}, Lcr/b;->b(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    :cond_12
    if-eqz v3, :cond_13

    .line 147
    .line 148
    invoke-static {v3}, Lcr/b;->b(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    :cond_13
    if-eqz v4, :cond_14

    .line 152
    .line 153
    invoke-static {v4}, Lcr/b;->b(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    :cond_14
    if-eqz v1, :cond_15

    .line 157
    .line 158
    invoke-static {v1}, Lcr/b;->b(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    :cond_15
    :goto_3
    return-void
.end method

.method private final J0()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v2

    .line 28
    :goto_0
    if-gtz v3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U:Z

    .line 32
    .line 33
    div-int/lit8 v4, v3, 0x3c

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    rem-int/lit8 v3, v3, 0x3c

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-array v5, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v4, v5, v2

    .line 48
    .line 49
    aput-object v3, v5, v1

    .line 50
    .line 51
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "%02d:%02d"

    .line 56
    .line 57
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "format(...)"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 67
    .line 68
    iget-object v1, v1, Lqr/k0;->H:Lcom/noober/background/view/BLTextView;

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N(Ljava/lang/String;)Landroid/text/SpannableString;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 78
    .line 79
    iget-object v0, v0, Lqr/k0;->H:Lcom/noober/background/view/BLTextView;

    .line 80
    .line 81
    const-string v1, "tvWatchFreeCountdown"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private final K(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    sget v1, Lcom/transsion/shorttv/R$id;->iv_lock_icon:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move-object v1, v0

    .line 24
    :goto_0
    if-eqz p1, :cond_3

    .line 25
    .line 26
    sget v2, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move-object v2, v0

    .line 34
    :goto_1
    if-eqz p1, :cond_4

    .line 35
    .line 36
    sget v3, Lcom/transsion/shorttv/R$id;->tv_buy_to_continue:I

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_2

    .line 43
    :cond_4
    move-object v3, v0

    .line 44
    :goto_2
    if-eqz p1, :cond_5

    .line 45
    .line 46
    sget v0, Lcom/transsion/shorttv/R$id;->container_series_info:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_5
    const/4 p1, 0x1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_9

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    invoke-static {v1}, Lcr/b;->e(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    if-eqz v2, :cond_7

    .line 69
    .line 70
    invoke-static {v2}, Lcr/b;->b(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_7
    if-eqz v3, :cond_8

    .line 74
    .line 75
    invoke-static {v3}, Lcr/b;->e(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :cond_8
    if-eqz v0, :cond_11

    .line 79
    .line 80
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_9
    const/4 p1, 0x2

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_d

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    invoke-static {v1}, Lcr/b;->e(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    :cond_a
    if-eqz v2, :cond_b

    .line 101
    .line 102
    invoke-static {v2}, Lcr/b;->e(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_b
    if-eqz v3, :cond_c

    .line 106
    .line 107
    invoke-static {v3}, Lcr/b;->b(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_c
    if-eqz v0, :cond_11

    .line 111
    .line 112
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_d
    if-eqz v1, :cond_e

    .line 117
    .line 118
    invoke-static {v1}, Lcr/b;->b(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    :cond_e
    if-eqz v2, :cond_f

    .line 122
    .line 123
    invoke-static {v2}, Lcr/b;->b(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :cond_f
    if-eqz v3, :cond_10

    .line 127
    .line 128
    invoke-static {v3}, Lcr/b;->b(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    :cond_10
    if-eqz v0, :cond_11

    .line 132
    .line 133
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    :cond_11
    :goto_3
    return-void
.end method

.method private final K0(Lnr/e;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 8
    .line 9
    iget-object v2, v2, Lqr/k0;->L:Landroid/view/ViewStub;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget v3, Lcom/transsion/shorttv/R$id;->btn_buy_full_series:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v3, Lcom/transsion/shorttv/ui/widget/y;

    .line 28
    .line 29
    invoke-direct {v3, p0}, Lcom/transsion/shorttv/ui/widget/y;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    sget v3, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    new-instance v3, Lcom/transsion/shorttv/ui/widget/z;

    .line 50
    .line 51
    invoke-direct {v3, p0}, Lcom/transsion/shorttv/ui/widget/z;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v2, v3

    .line 76
    :goto_0
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    sget v5, Lcom/transsion/shorttv/R$id;->tv_series_title:I

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move-object v5, v3

    .line 98
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 102
    .line 103
    if-eqz v4, :cond_9

    .line 104
    .line 105
    sget v5, Lcom/transsion/shorttv/R$id;->tv_series_price:I

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    if-eqz v4, :cond_9

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getSkuInfo()Lcom/transsion/shorttv/bean/SkuInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    if-eqz v5, :cond_5

    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/SkuInfo;->getPrice()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v5, :cond_5

    .line 128
    .line 129
    invoke-static {v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    move-object v5, v3

    .line 135
    :goto_2
    if-eqz v2, :cond_6

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getSkuInfo()Lcom/transsion/shorttv/bean/SkuInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-eqz v6, :cond_6

    .line 142
    .line 143
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/SkuInfo;->getCurrencySymbol()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    if-nez v6, :cond_7

    .line 148
    .line 149
    :cond_6
    const-string v6, "$"

    .line 150
    .line 151
    :cond_7
    if-eqz v5, :cond_8

    .line 152
    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v8, "From "

    .line 159
    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v6, "%.2f"

    .line 167
    .line 168
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-array v7, v1, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object v5, v7, v0

    .line 178
    .line 179
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    const-string v6, "format(...)"

    .line 188
    .line 189
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v4}, Lcr/b;->e(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_8
    invoke-static {v4}, Lcr/b;->b(Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 203
    .line 204
    if-eqz v4, :cond_a

    .line 205
    .line 206
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    if-nez v4, :cond_c

    .line 211
    .line 212
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    instance-of v5, v4, Landroidx/fragment/app/FragmentActivity;

    .line 217
    .line 218
    if-eqz v5, :cond_b

    .line 219
    .line 220
    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_b
    move-object v4, v3

    .line 224
    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-eqz v5, :cond_d

    .line 231
    .line 232
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    goto :goto_5

    .line 237
    :cond_d
    move-object v5, v3

    .line 238
    :goto_5
    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 239
    .line 240
    if-eqz v6, :cond_e

    .line 241
    .line 242
    sget v7, Lcom/transsion/shorttv/R$id;->iv_series_cover:I

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_e
    move-object v6, v3

    .line 252
    :goto_6
    if-eqz v6, :cond_10

    .line 253
    .line 254
    if-eqz v5, :cond_10

    .line 255
    .line 256
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-nez v7, :cond_f

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_f
    if-eqz v4, :cond_10

    .line 264
    .line 265
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Lcom/bumptech/glide/RequestBuilder;

    .line 278
    .line 279
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 280
    .line 281
    .line 282
    :cond_10
    :goto_7
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 283
    .line 284
    if-eqz v4, :cond_11

    .line 285
    .line 286
    sget v5, Lcom/transsion/shorttv/R$id;->iv_blur_bg:I

    .line 287
    .line 288
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_11
    move-object v4, v3

    .line 296
    :goto_8
    if-eqz p1, :cond_12

    .line 297
    .line 298
    invoke-virtual {p1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    if-eqz p1, :cond_12

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    if-eqz p1, :cond_12

    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-eqz p1, :cond_12

    .line 315
    .line 316
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    :cond_12
    move-object v6, v3

    .line 321
    if-eqz v4, :cond_14

    .line 322
    .line 323
    if-eqz v6, :cond_14

    .line 324
    .line 325
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_13

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_13
    sget-object v5, Lcom/transsion/shorttv/base/image/blurhash/e;->a:Lcom/transsion/shorttv/base/image/blurhash/e;

    .line 333
    .line 334
    new-instance v9, Lcom/transsion/shorttv/ui/widget/a0;

    .line 335
    .line 336
    invoke-direct {v9, v4}, Lcom/transsion/shorttv/ui/widget/a0;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 337
    .line 338
    .line 339
    const/4 v10, 0x6

    .line 340
    const/4 v11, 0x0

    .line 341
    const/4 v7, 0x0

    .line 342
    const/4 v8, 0x0

    .line 343
    invoke-static/range {v5 .. v11}, Lcom/transsion/shorttv/base/image/blurhash/e;->d(Lcom/transsion/shorttv/base/image/blurhash/e;Ljava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    :cond_14
    :goto_9
    const/4 p1, 0x2

    .line 347
    if-eqz v2, :cond_15

    .line 348
    .line 349
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-ne v3, p1, :cond_15

    .line 354
    .line 355
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 356
    .line 357
    invoke-direct {p0, v3, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V

    .line 358
    .line 359
    .line 360
    goto :goto_a

    .line 361
    :cond_15
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 362
    .line 363
    invoke-direct {p0, v3, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V

    .line 364
    .line 365
    .line 366
    :goto_a
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 367
    .line 368
    if-eqz v3, :cond_16

    .line 369
    .line 370
    invoke-static {v3}, Lcr/b;->e(Landroid/view/View;)V

    .line 371
    .line 372
    .line 373
    :cond_16
    iput-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    .line 374
    .line 375
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    .line 376
    .line 377
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    .line 378
    .line 379
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    .line 381
    .line 382
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 383
    .line 384
    .line 385
    if-eqz v2, :cond_17

    .line 386
    .line 387
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    if-eqz v3, :cond_17

    .line 392
    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-ne v3, v1, :cond_17

    .line 402
    .line 403
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 404
    .line 405
    iget-object v3, v3, Lqr/k0;->i:Landroidx/constraintlayout/widget/Group;

    .line 406
    .line 407
    const-string v4, "groupPayLockHide"

    .line 408
    .line 409
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v3}, Lcr/b;->b(Landroid/view/View;)V

    .line 413
    .line 414
    .line 415
    :cond_17
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    .line 416
    .line 417
    .line 418
    if-eqz v2, :cond_18

    .line 419
    .line 420
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-ne v3, p1, :cond_18

    .line 425
    .line 426
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    if-eqz v3, :cond_18

    .line 431
    .line 432
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-ne v3, v1, :cond_18

    .line 441
    .line 442
    move v3, v1

    .line 443
    goto :goto_b

    .line 444
    :cond_18
    move v3, v0

    .line 445
    :goto_b
    if-eqz v2, :cond_19

    .line 446
    .line 447
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    if-eqz v4, :cond_19

    .line 452
    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    if-ne p1, v1, :cond_19

    .line 462
    .line 463
    if-nez v3, :cond_19

    .line 464
    .line 465
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R0()V

    .line 466
    .line 467
    .line 468
    :cond_19
    sget-object p1, Lwr/b;->a:Lwr/b;

    .line 469
    .line 470
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 471
    .line 472
    if-eqz v1, :cond_1a

    .line 473
    .line 474
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    :cond_1a
    invoke-virtual {p1, v2, v0}, Lwr/b;->i(Lcom/transsion/shorttv/bean/Subject;I)V

    .line 479
    .line 480
    .line 481
    return-void
.end method

.method private final L()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 7
    .line 8
    iget-object v0, v0, Lqr/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    const-string v1, "ivDownload"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    .line 31
    .line 32
    const-wide/16 v2, 0xbb8

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private static final L0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final M(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final M0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v1, p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->watchAdToUnlock$shortTvLib_release$default(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;ZILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final N(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_watch_free_countdown:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "getString(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/text/SpannableString;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    const/4 v8, 0x6

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v4, v0

    .line 32
    move-object v5, p1

    .line 33
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-gez v2, :cond_0

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/2addr p1, v2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sget v5, Lcom/transsion/shorttv/R$color;->short_tv_white_60:I

    .line 50
    .line 51
    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    sget v6, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    .line 60
    .line 61
    invoke-static {v5, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/16 v6, 0x21

    .line 66
    .line 67
    if-lez v2, :cond_1

    .line 68
    .line 69
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 70
    .line 71
    invoke-direct {v7, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v7, v3, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 75
    .line 76
    .line 77
    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 78
    .line 79
    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v2, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ge p1, v2, :cond_2

    .line 90
    .line 91
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 92
    .line 93
    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v1, v2, p1, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-object v1
.end method

.method private static final N0(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "drawable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final O()V
    .locals 5

    .line 1
    sget-object v0, Lwr/b;->a:Lwr/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lnr/e;->c()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    const-string v3, "minitv_pay"

    .line 32
    .line 33
    const-string v4, ""

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3, v4}, Lwr/b;->h(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B0()Lur/i;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-interface {v0}, Lur/i;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    invoke-interface {v0}, Lur/i;->getUserId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    new-instance v2, Lcom/transsion/shorttv/ui/widget/e0;

    .line 72
    .line 73
    invoke-direct {v2, p0, v1, v0}, Lcom/transsion/shorttv/ui/widget/e0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lur/i;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->e1(Lur/i;Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_2
    return-void
.end method

.method private final O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->p1()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final P(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lur/i;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lnr/e;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-instance v2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;

    .line 21
    .line 22
    invoke-direct {v2, p0, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lur/i;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l0()Landroidx/lifecycle/b0;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, p1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method

.method private final P0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q1(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final Q(Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 4
    .line 5
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Ljr/b;->a:Ljr/b$a;

    .line 12
    .line 13
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    if-eqz p1, :cond_d

    .line 28
    .line 29
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v1, v2

    .line 40
    :goto_0
    if-nez v1, :cond_2

    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_2
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 45
    .line 46
    if-eqz v3, :cond_c

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_c

    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    move-object v15, v3

    .line 59
    check-cast v15, Lcom/transsion/shorttv/bean/Subject;

    .line 60
    .line 61
    if-nez v15, :cond_3

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v15}, Lcom/transsion/shorttv/bean/Subject;->getSkuInfo()Lcom/transsion/shorttv/bean/SkuInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 72
    .line 73
    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v8, 0x4

    .line 76
    const/4 v9, 0x0

    .line 77
    const-string v6, "callPayMethod failed, no sku info."

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-static/range {v4 .. v9}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/SkuInfo;->getSkuId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_b

    .line 89
    .line 90
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-lez v4, :cond_5

    .line 95
    .line 96
    move-object v5, v3

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    move-object v5, v2

    .line 99
    :goto_1
    if-nez v5, :cond_6

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    invoke-virtual {v15}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_a

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-lez v4, :cond_7

    .line 113
    .line 114
    move-object v2, v3

    .line 115
    :cond_7
    if-nez v2, :cond_8

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_8
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 119
    .line 120
    if-eqz v3, :cond_9

    .line 121
    .line 122
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    :goto_2
    move v14, v3

    .line 127
    goto :goto_3

    .line 128
    :cond_9
    const/4 v3, 0x0

    .line 129
    goto :goto_2

    .line 130
    :goto_3
    sget-object v13, Lcom/transsion/shorttv/order/d;->a:Lcom/transsion/shorttv/order/d;

    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    const-string v3, "subject_id"

    .line 137
    .line 138
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    new-instance v2, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 147
    .line 148
    const/16 v16, 0x138

    .line 149
    .line 150
    const/16 v17, 0x0

    .line 151
    .line 152
    const-string v4, "MovieBox"

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v11, 0x0

    .line 158
    const/16 v18, 0x0

    .line 159
    .line 160
    move-object v3, v2

    .line 161
    move-object v6, v1

    .line 162
    move-object/from16 v19, v12

    .line 163
    .line 164
    move-object/from16 v12, v18

    .line 165
    .line 166
    move-object/from16 v20, v13

    .line 167
    .line 168
    move/from16 v13, v16

    .line 169
    .line 170
    move-object/from16 p1, v2

    .line 171
    .line 172
    move v2, v14

    .line 173
    move-object/from16 v14, v17

    .line 174
    .line 175
    invoke-direct/range {v3 .. v14}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 176
    .line 177
    .line 178
    new-instance v3, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;

    .line 179
    .line 180
    invoke-direct {v3, v0, v15, v2, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    move-object/from16 v4, p1

    .line 184
    .line 185
    move-object/from16 v2, v19

    .line 186
    .line 187
    move-object/from16 v1, v20

    .line 188
    .line 189
    invoke-virtual {v1, v2, v4, v3}, Lcom/transsion/shorttv/order/d;->d(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/b;)V

    .line 190
    .line 191
    .line 192
    :cond_a
    :goto_4
    return-void

    .line 193
    :cond_b
    :goto_5
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 194
    .line 195
    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 196
    .line 197
    const/4 v9, 0x4

    .line 198
    const/4 v10, 0x0

    .line 199
    const-string v7, "callPayMethod failed, skuId is empty."

    .line 200
    .line 201
    const/4 v8, 0x0

    .line 202
    invoke-static/range {v5 .. v10}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_c
    :goto_6
    return-void

    .line 206
    :cond_d
    :goto_7
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 207
    .line 208
    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 209
    .line 210
    const/4 v15, 0x4

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    const-string v13, "callPayMethod failed, userId is empty."

    .line 214
    .line 215
    const/4 v14, 0x0

    .line 216
    invoke-static/range {v11 .. v16}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method private final Q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x1e

    .line 22
    .line 23
    if-lt v1, v2, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-static {}, Landroidx/core/view/j2;->a()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v1, 0x400

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/16 v1, 0x100

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method private static final R(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final R0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {v1, v0}, Lcom/transsion/shorttv/ui/widget/a1;->a(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private final S(Lxr/b;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Ljr/b;->a:Ljr/b$a;

    .line 6
    .line 7
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_subtitle_is_downloading:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljr/b$a;->d(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 14
    .line 15
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object p1, Ljr/b;->a:Ljr/b$a;

    .line 22
    .line 23
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljr/b$a;->d(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    .line 48
    .line 49
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 52
    .line 53
    const-class v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, " --> downloadSubtitle() --> \u5185\u7f6e\u5b57\u5e55\u5217\u8868\uff0c\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    .line 100
    .line 101
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ", subtype = "

    .line 108
    .line 109
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ",download subtitleName = "

    .line 116
    .line 117
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", subResourceId = "

    .line 124
    .line 125
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, "~"

    .line 132
    .line 133
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const/4 v6, 0x4

    .line 141
    const/4 v7, 0x0

    .line 142
    const/4 v5, 0x0

    .line 143
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const/4 v2, 0x0

    .line 151
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setAutoDownload(Z)V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lxr/b;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {v0, p1}, Lcom/transsion/shorttv/subtitle/manager/b;->d(Lxr/b;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method private final S0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/a1;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final T(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final T0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    :goto_0
    invoke-static {v0, v1}, Lhr/f;->a(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 43
    .line 44
    iget-object v1, v1, Lqr/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 50
    .line 51
    iget-object v0, v0, Lqr/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v1, 0x0

    .line 83
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private final U(Lnr/f;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lnr/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_error_load_failed:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Lnr/h;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite_remove_toast:I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of p1, p1, Lnr/g;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite_toast:I

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljr/b$a;->d(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method private final U0(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->f(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const/16 v0, 0x3c

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    div-long v2, p1, v0

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    rem-long/2addr p1, v0

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x2

    .line 25
    new-array v0, p2, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    aput-object p1, v0, v1

    .line 32
    .line 33
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "%02d:%02d"

    .line 38
    .line 39
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "format(...)"

    .line 44
    .line 45
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 49
    .line 50
    iget-object p2, p2, Lqr/k0;->H:Lcom/noober/background/view/BLTextView;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N(Ljava/lang/String;)Landroid/text/SpannableString;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final V()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 5
    .line 6
    iget-object v0, v0, Lqr/k0;->H:Lcom/noober/background/view/BLTextView;

    .line 7
    .line 8
    const-string v1, "tvWatchFreeCountdown"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final V0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    long-to-int p1, p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 10
    .line 11
    iget-object p2, p2, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final W()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-static {v0, v2, v3, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 29
    .line 30
    iget-object v0, v0, Lqr/k0;->i:Landroidx/constraintlayout/widget/Group;

    .line 31
    .line 32
    const-string v1, "groupPayLockHide"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final W0(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    long-to-int v1, p1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 10
    .line 11
    iget-object v0, v0, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "updateProgressMax: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "  : "

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final X()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q1(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private static final X0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private final Y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x1e

    .line 22
    .line 23
    if-lt v1, v2, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-static {}, Landroidx/core/view/j2;->a()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-static {v0, v1}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/16 v1, 0x400

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/16 v1, 0x504

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method private final Y0(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-wide v1, 0x3fd147ae147ae148L    # 0.27

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-wide v1, 0x3fd999999999999aL    # 0.4

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-wide v1, 0x3fd70a3d70a3d70aL    # 0.36

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    :goto_0
    int-to-double v3, v0

    .line 29
    mul-double/2addr v3, v1

    .line 30
    double-to-int p1, v3

    .line 31
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 32
    .line 33
    iget-object v0, v0, Lqr/k0;->f:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    const-string v1, "flSubtitle"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 47
    .line 48
    const/4 v2, -0x1

    .line 49
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 53
    .line 54
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 55
    .line 56
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    .line 57
    .line 58
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 65
    .line 66
    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method private final Z(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$e;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->m:Landroid/view/GestureDetector;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e0()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    if-eqz p2, :cond_c

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 14
    .line 15
    const-string v1, "flContainer"

    .line 16
    .line 17
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 18
    .line 19
    if-eqz v0, :cond_a

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_9

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-gtz v0, :cond_1

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    iput-boolean v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G:Z

    .line 45
    .line 46
    const/high16 v5, 0x42580000    # 54.0f

    .line 47
    .line 48
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 49
    .line 50
    .line 51
    const/high16 v5, 0x41600000    # 14.0f

    .line 52
    .line 53
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/high16 v6, 0x40800000    # 4.0f

    .line 58
    .line 59
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/4 v8, -0x1

    .line 71
    const-string v9, "llCtr"

    .line 72
    .line 73
    if-le v6, v7, :cond_5

    .line 74
    .line 75
    const/high16 p1, 0x42480000    # 50.0f

    .line 76
    .line 77
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 82
    .line 83
    iget-object p2, p2, Lqr/k0;->e:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 95
    .line 96
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 97
    .line 98
    sub-int/2addr v3, p1

    .line 99
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    sget-object p2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 112
    .line 113
    invoke-interface {p1, p2}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 117
    .line 118
    iget-object p1, p1, Lqr/k0;->p:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    if-eqz p2, :cond_3

    .line 128
    .line 129
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 130
    .line 131
    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 132
    .line 133
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 134
    .line 135
    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 143
    .line 144
    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 149
    .line 150
    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_5
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 155
    .line 156
    iget-object v3, v3, Lqr/k0;->e:Landroid/widget/FrameLayout;

    .line 157
    .line 158
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_8

    .line 166
    .line 167
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 168
    .line 169
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    mul-int/2addr p2, v0

    .line 176
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    div-int/2addr p2, p1

    .line 181
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 182
    .line 183
    const/high16 p1, 0x3f000000    # 0.5f

    .line 184
    .line 185
    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    .line 186
    .line 187
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 191
    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    sget-object p2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FIT:Lcom/transsion/player/enum/ScaleMode;

    .line 195
    .line 196
    invoke-interface {p1, p2}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 200
    .line 201
    iget-object p1, p1, Lqr/k0;->p:Landroid/widget/LinearLayout;

    .line 202
    .line 203
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    if-eqz p2, :cond_7

    .line 211
    .line 212
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 213
    .line 214
    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 215
    .line 216
    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 217
    .line 218
    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 219
    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    .line 225
    .line 226
    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p1

    .line 230
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    .line 231
    .line 232
    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_9
    :goto_0
    new-instance v0, Lcom/transsion/shorttv/ui/widget/m0;

    .line 237
    .line 238
    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/m0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_a
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 246
    .line 247
    iget-object v0, v0, Lqr/k0;->e:Landroid/widget/FrameLayout;

    .line 248
    .line 249
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 259
    .line 260
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 265
    .line 266
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 271
    .line 272
    mul-int/2addr p2, v2

    .line 273
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    div-int/2addr p2, p1

    .line 278
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    :goto_1
    return-void

    .line 284
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 285
    .line 286
    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_c
    :goto_2
    return-void
.end method

.method private final a0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/widget/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 4
    .line 5
    iget-object v1, v1, Lqr/k0;->q:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    const-string v2, "llDownloadGuideBubble"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/c;-><init>(Landroid/view/View;Lcom/transsion/shorttv/ui/widget/c$b;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 21
    .line 22
    return-void
.end method

.method private static final a1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$autoHideRightMenu(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$callPayMethod(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$favoriteResultToast(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lnr/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U(Lnr/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lnr/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOrPlayerView$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/ui/ORPlayerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isLoading$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$onDoubleClick(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$playVideo(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLoading(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showRightMenu(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateProgress(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b0()V
    .locals 10

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "initLanguage"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 21
    .line 22
    iget-object v0, v0, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 23
    .line 24
    const/high16 v4, 0x41c00000    # 24.0f

    .line 25
    .line 26
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 27
    .line 28
    .line 29
    const-string v1, "sans-serif-medium"

    .line 30
    .line 31
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "#CC000000"

    .line 39
    .line 40
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/high16 v4, 0x40800000    # 4.0f

    .line 45
    .line 46
    const/high16 v5, 0x40000000    # 2.0f

    .line 47
    .line 48
    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x11

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 58
    .line 59
    iget-object v0, v0, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 60
    .line 61
    const/high16 v4, 0x41800000    # 16.0f

    .line 62
    .line 63
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    .line 90
    .line 91
    move-object v8, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object v8, v7

    .line 94
    :goto_1
    const/4 v9, 0x1

    .line 95
    if-eqz v8, :cond_3

    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/util/Collection;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    move v0, v9

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    :goto_2
    move v0, v3

    .line 115
    :goto_3
    iget-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 116
    .line 117
    const-string v2, "tvLanguage"

    .line 118
    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 122
    .line 123
    iget-object v1, v1, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v1}, Lcr/b;->b(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "tvAudio"

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    if-eqz v8, :cond_4

    .line 136
    .line 137
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    move v0, v3

    .line 149
    :goto_4
    if-le v0, v9, :cond_5

    .line 150
    .line 151
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 152
    .line 153
    iget-object v0, v0, Lqr/k0;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_8

    .line 162
    .line 163
    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 164
    .line 165
    iget-object v0, v0, Lqr/k0;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 176
    .line 177
    iget-object v1, v1, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Lcr/b;->e(Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    if-eqz v0, :cond_b

    .line 186
    .line 187
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v8, :cond_7

    .line 190
    .line 191
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    move-object v0, v7

    .line 197
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v3, "initLanguage--- hasDubs :"

    .line 203
    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const/4 v4, 0x4

    .line 215
    const/4 v5, 0x0

    .line 216
    const/4 v3, 0x0

    .line 217
    move-object v0, v6

    .line 218
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 222
    .line 223
    iget-object v0, v0, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 224
    .line 225
    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    .line 226
    .line 227
    .line 228
    if-eqz v8, :cond_a

    .line 229
    .line 230
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    check-cast v0, Ljava/lang/Iterable;

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    :cond_8
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_a

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Lcom/transsion/shorttv/bean/DubsInfo;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 259
    .line 260
    if-eqz v3, :cond_9

    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    if-eqz v3, :cond_9

    .line 267
    .line 268
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    .line 273
    .line 274
    if-eqz v3, :cond_9

    .line 275
    .line 276
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    goto :goto_7

    .line 281
    :cond_9
    move-object v3, v7

    .line 282
    :goto_7
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_8

    .line 287
    .line 288
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 289
    .line 290
    iget-object v2, v2, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_a
    return-void

    .line 301
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 302
    .line 303
    if-eqz v0, :cond_c

    .line 304
    .line 305
    invoke-virtual {v0}, Lnr/e;->c()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_c

    .line 310
    .line 311
    move v3, v9

    .line 312
    :cond_c
    if-eqz v3, :cond_d

    .line 313
    .line 314
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 315
    .line 316
    const/4 v4, 0x4

    .line 317
    const/4 v5, 0x0

    .line 318
    const-string v2, "\u9884\u544a\u7247\u6ca1\u6709\u5b57\u5e55\uff0c\u4e0d\u5904\u7406"

    .line 319
    .line 320
    const/4 v3, 0x0

    .line 321
    move-object v0, v6

    .line 322
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :cond_d
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 327
    .line 328
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    .line 329
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string v3, ">>>>>>>--------------------initLanguage subtitle, position:"

    .line 336
    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    const/4 v4, 0x4

    .line 348
    const/4 v5, 0x0

    .line 349
    const/4 v3, 0x0

    .line 350
    move-object v0, v6

    .line 351
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 355
    .line 356
    if-eqz v0, :cond_11

    .line 357
    .line 358
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    if-eqz v2, :cond_11

    .line 363
    .line 364
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_11

    .line 369
    .line 370
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_e

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_e
    iget-object v5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 378
    .line 379
    if-eqz v5, :cond_11

    .line 380
    .line 381
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 382
    .line 383
    if-eqz v0, :cond_f

    .line 384
    .line 385
    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->onDestroy()V

    .line 386
    .line 387
    .line 388
    :cond_f
    sget-object v1, Lcom/transsion/shorttv/subtitle/a;->a:Lcom/transsion/shorttv/subtitle/a$a;

    .line 389
    .line 390
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 391
    .line 392
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 393
    .line 394
    if-eqz v4, :cond_10

    .line 395
    .line 396
    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_10

    .line 401
    .line 402
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 407
    .line 408
    if-eqz v0, :cond_10

    .line 409
    .line 410
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    :cond_10
    move-object v6, v7

    .line 415
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/shorttv/subtitle/a$a;->a(Landroidx/fragment/app/FragmentActivity;Lqr/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lnr/e;Ljava/lang/String;)Lcom/transsion/shorttv/subtitle/a;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->e()V

    .line 420
    .line 421
    .line 422
    new-instance v1, Lcom/transsion/shorttv/ui/widget/b0;

    .line 423
    .line 424
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/b0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v0, v1}, Lcom/transsion/shorttv/subtitle/a;->a(Lkotlin/jvm/functions/Function1;)V

    .line 428
    .line 429
    .line 430
    new-instance v1, Lcom/transsion/shorttv/ui/widget/c0;

    .line 431
    .line 432
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/c0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 433
    .line 434
    .line 435
    invoke-interface {v0, v1}, Lcom/transsion/shorttv/subtitle/a;->b(Lkotlin/jvm/functions/Function1;)V

    .line 436
    .line 437
    .line 438
    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 439
    .line 440
    :cond_11
    :goto_9
    return-void
.end method

.method private final b1(Lnr/e;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    invoke-direct {p0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lnr/e;->c()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 16
    .line 17
    iget-object v0, v0, Lqr/k0;->G:Lcom/transsion/shorttv/base/widget/TnTextView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_trailer:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 34
    .line 35
    iget-object v2, v2, Lqr/k0;->G:Lcom/transsion/shorttv/base/widget/TnTextView;

    .line 36
    .line 37
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/transsion/shorttv/utils/i;->e(Ljava/lang/Integer;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-array v3, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    aput-object v1, v3, v4

    .line 51
    .line 52
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "EP%s"

    .line 57
    .line 58
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "format(...)"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 71
    if-eqz p1, :cond_7

    .line 72
    .line 73
    invoke-virtual {p1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_7

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getFirstFrame()Lcom/transsion/shorttv/bean/FirstFrame;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_1
    move-object v3, v1

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move-object v3, v0

    .line 112
    :goto_3
    if-eqz v3, :cond_7

    .line 113
    .line 114
    sget-object v2, Ler/b;->a:Ler/b$a;

    .line 115
    .line 116
    iget v5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b:I

    .line 117
    .line 118
    const/16 v10, 0x78

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    move v4, v5

    .line 126
    invoke-static/range {v2 .. v11}, Ler/b$a;->e(Ler/b$a;Ljava/lang/String;IIZZZIILjava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 131
    .line 132
    iget-object v0, v0, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 146
    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-nez v0, :cond_6

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 157
    .line 158
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v4, "into  "

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const/4 v5, 0x4

    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v4, 0x0

    .line 180
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 184
    .line 185
    iget-object v1, v1, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 186
    .line 187
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$i;

    .line 199
    .line 200
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$i;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 208
    .line 209
    iget-object v0, v0, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 216
    .line 217
    iget-object p1, p1, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    :goto_4
    return-void
.end method

.method private static final c0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 6
    .line 7
    iget-object p0, p0, Lqr/k0;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v0, "tvSubtitles"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 p1, 0x8

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_1
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/Collection;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 63
    .line 64
    iget-object v0, v0, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 67
    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 72
    .line 73
    iget-object p0, p0, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_language:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method private static final c1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Lnr/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorMessage"

    .line 7
    .line 8
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p6, :cond_0

    .line 12
    .line 13
    iget-object p6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 14
    .line 15
    if-eqz p6, :cond_1

    .line 16
    .line 17
    new-instance p7, Lcom/transsion/shorttv/ui/widget/j0;

    .line 18
    .line 19
    invoke-direct {p7, p0, p5}, Lcom/transsion/shorttv/ui/widget/j0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lnr/e;)V

    .line 20
    .line 21
    .line 22
    new-instance p8, Lcom/transsion/shorttv/ui/widget/k0;

    .line 23
    .line 24
    move-object v0, p8

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p2

    .line 27
    move v3, p3

    .line 28
    move-object v4, p5

    .line 29
    move-object v5, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/k0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILnr/e;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p6, p1, p7, p8}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->u(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lwr/b;->a:Lwr/b;

    .line 38
    .line 39
    const-string v3, "fail"

    .line 40
    .line 41
    const-string v6, "play"

    .line 42
    .line 43
    move-object v1, p2

    .line 44
    move v2, p3

    .line 45
    move-object v4, p8

    .line 46
    move-object v5, p7

    .line 47
    invoke-virtual/range {v0 .. v6}, Lwr/b;->l(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Ljr/b;->a:Ljr/b$a;

    .line 51
    .line 52
    sget p2, Lcom/transsion/shorttv/R$string;->short_tv_ad_unlocked_get_ad_failed:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljr/b$a;->d(I)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 59
    .line 60
    if-eqz p4, :cond_1

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    invoke-virtual {p4, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private static final d0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lxr/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 6
    .line 7
    iget-object p0, p0, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final d1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lnr/e;)Lkotlin/Unit;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_a

    .line 22
    .line 23
    invoke-virtual {p1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_a

    .line 28
    .line 29
    sget-object v1, Lyq/a;->a:Lyq/a;

    .line 30
    .line 31
    const-string v1, "unlockEpCount"

    .line 32
    .line 33
    const-string v2, "ShortTvPlayerUnlockPlayScene"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    .line 38
    sget-object v4, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_4

    .line 53
    :cond_1
    move-object v1, v3

    .line 54
    :goto_0
    const-class v2, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-class v4, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_1
    move-object v1, v3

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move-object v1, v3

    .line 103
    :goto_2
    instance-of v2, v1, Ljava/lang/Integer;

    .line 104
    .line 105
    if-nez v2, :cond_7

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 109
    .line 110
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 127
    .line 128
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_7
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    goto :goto_5

    .line 149
    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 150
    .line 151
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :goto_5
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-nez v2, :cond_8

    .line 164
    .line 165
    move-object v3, v1

    .line 166
    :cond_8
    check-cast v3, Ljava/lang/Integer;

    .line 167
    .line 168
    if-eqz v3, :cond_9

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    goto :goto_6

    .line 175
    :cond_9
    const/4 v1, 0x1

    .line 176
    :goto_6
    sget-object v2, Ldr/b;->a:Ldr/b;

    .line 177
    .line 178
    invoke-virtual {v2, v0, p1, v1}, Ldr/b;->g(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;I)V

    .line 179
    .line 180
    .line 181
    :cond_a
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_b

    .line 186
    .line 187
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 188
    .line 189
    if-eqz p0, :cond_b

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a1(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_c
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p0
.end method

.method private final e0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/shorttv/base/widget/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 8
    .line 9
    iget-object v2, v2, Lqr/k0;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/base/widget/e;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/widget/e;->r(Lcom/transsion/shorttv/base/widget/e$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 23
    .line 24
    iget-object v0, v0, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 25
    .line 26
    new-instance v1, Lcom/transsion/shorttv/ui/widget/n0;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/transsion/shorttv/ui/widget/n0;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final e1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILnr/e;Landroidx/appcompat/widget/AppCompatTextView;Z)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 3
    .line 4
    if-eqz p5, :cond_1

    .line 5
    .line 6
    sget-object v1, Lwr/b;->a:Lwr/b;

    .line 7
    .line 8
    const-string v6, "0"

    .line 9
    .line 10
    const-string v7, "play"

    .line 11
    .line 12
    const-string v4, "success"

    .line 13
    .line 14
    const-string v5, ""

    .line 15
    .line 16
    move-object v2, p1

    .line 17
    move v3, p2

    .line 18
    invoke-virtual/range {v1 .. v7}, Lwr/b;->l(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o0(Lnr/e;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p0, Ljr/b;->a:Ljr/b$a;

    .line 34
    .line 35
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_locked_episode_unlocked:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljr/b$a;->d(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lwr/b;->a:Lwr/b;

    .line 42
    .line 43
    const-string v5, "0"

    .line 44
    .line 45
    const-string v6, "play"

    .line 46
    .line 47
    const-string v3, "cancel"

    .line 48
    .line 49
    const-string v4, ""

    .line 50
    .line 51
    move-object v1, p1

    .line 52
    move v2, p2

    .line 53
    invoke-virtual/range {v0 .. v6}, Lwr/b;->l(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    if-eqz p4, :cond_2

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    invoke-virtual {p4, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method private static final f0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private final g0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0()Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v4}, Lnr/e;->c()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ne v3, v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v2, v1

    .line 55
    :goto_0
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v2, v1

    .line 69
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 82
    .line 83
    iget-object v0, v0, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    const-string v2, "tvResolution"

    .line 86
    .line 87
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    move-object v0, v1

    .line 94
    check-cast v0, Ljava/util/Collection;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    const-string v3, "k_short_tv_resolution"

    .line 98
    .line 99
    const-string v4, "P"

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/4 v5, 0x1

    .line 116
    if-ne v0, v5, :cond_7

    .line 117
    .line 118
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 119
    .line 120
    iget-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 121
    .line 122
    const/4 v10, 0x4

    .line 123
    const/4 v11, 0x0

    .line 124
    const-string v8, "initResolution, size 1"

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 131
    .line 132
    iget-object v0, v0, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/transsion/shorttv/bean/Video;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_7
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 174
    .line 175
    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v5, "initResolution, --save resolution:"

    .line 183
    .line 184
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    const/4 v9, 0x4

    .line 195
    const/4 v10, 0x0

    .line 196
    const/4 v8, 0x0

    .line 197
    move-object v5, v2

    .line 198
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v0}, Lcom/transsion/shorttv/utils/i;->d(Ljava/util/List;I)Lcom/transsion/shorttv/bean/Video;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_8

    .line 206
    .line 207
    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 208
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v5, "initResolution, --target resolution:"

    .line 215
    .line 216
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    const/4 v9, 0x4

    .line 227
    const/4 v10, 0x0

    .line 228
    const/4 v8, 0x0

    .line 229
    move-object v5, v2

    .line 230
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 234
    .line 235
    iget-object v0, v0, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    :cond_8
    return-void

    .line 260
    :cond_9
    :goto_2
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 261
    .line 262
    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 263
    .line 264
    const/4 v9, 0x4

    .line 265
    const/4 v10, 0x0

    .line 266
    const-string v7, "initResolution, \u5206\u8fa8\u7387\u5217\u8868\u4e3a\u7a7a"

    .line 267
    .line 268
    const/4 v8, 0x0

    .line 269
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 273
    .line 274
    iget-object v0, v0, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-eqz v0, :cond_a

    .line 281
    .line 282
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_c

    .line 287
    .line 288
    :cond_a
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-lez v0, :cond_b

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_b
    const/16 v0, 0x2d0

    .line 302
    .line 303
    :goto_3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 304
    .line 305
    iget-object v1, v1, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 306
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    :cond_c
    return-void
.end method

.method public static synthetic h(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h0()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "k_short_tv_speed"

    .line 8
    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    float-to-int v1, v0

    .line 16
    int-to-float v2, v1

    .line 17
    cmpg-float v2, v2, v0

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 31
    .line 32
    iget-object v2, v2, Lqr/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "x"

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/f;->setSpeed(F)V

    .line 59
    .line 60
    .line 61
    :cond_1
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "initVideoSpeed, speed:"

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v6, 0x4

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static synthetic i(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic j(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j0()Z
    .locals 4

    .line 1
    sget-object v0, Ldr/b;->a:Ldr/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :cond_1
    invoke-virtual {v0, v1, v2}, Ldr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public static synthetic k(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final k0(Lnr/e;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/k0;->b:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 4
    .line 5
    const-string v1, "adOverlayContainerView"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v2, Lyq/a;->a:Lyq/a;

    .line 22
    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    const-string v3, "overlay"

    .line 26
    .line 27
    const-string v4, "loadAd, this video is locked, don\'t load"

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lyq/a;->e(Lyq/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget-object v1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    .line 35
    .line 36
    invoke-virtual {p1}, Lnr/e;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c(Ljava/lang/String;)Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->d()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    sget-object v3, Lyq/a;->a:Lyq/a;

    .line 54
    .line 55
    invoke-virtual {p1}, Lnr/e;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "loadAd, this video no need to load, key="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const/4 v7, 0x4

    .line 77
    const/4 v8, 0x0

    .line 78
    const-string v4, "overlay"

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-static/range {v3 .. v8}, Lyq/a;->c(Lyq/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    const/4 p1, 0x1

    .line 86
    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->i(Z)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lyq/a;->a:Lyq/a;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c()Lcom/transsion/shorttv/ad/AdLoadState;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v4, "loadAd, adLoadState="

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/4 v6, 0x4

    .line 113
    const/4 v7, 0x0

    .line 114
    const-string v3, "overlay"

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    move-object v2, p1

    .line 118
    invoke-static/range {v2 .. v7}, Lyq/a;->g(Lyq/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c()Lcom/transsion/shorttv/ad/AdLoadState;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v3, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$a;->b:[I

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    aget v2, v3, v2

    .line 132
    .line 133
    packed-switch v2, :pswitch_data_0

    .line 134
    .line 135
    .line 136
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 137
    .line 138
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_3

    .line 147
    .line 148
    const/4 v6, 0x4

    .line 149
    const/4 v7, 0x0

    .line 150
    const-string v3, "overlay"

    .line 151
    .line 152
    const-string v4, "show cached ad, video is locked, skip show"

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    move-object v2, p1

    .line 156
    invoke-static/range {v2 .. v7}, Lyq/a;->e(Lyq/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_3
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    new-instance v2, Lcom/transsion/shorttv/ui/widget/i0;

    .line 167
    .line 168
    invoke-direct {v2, v1}, Lcom/transsion/shorttv/ui/widget/i0;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_1
    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 176
    .line 177
    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->g(Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_4

    .line 185
    .line 186
    new-instance v2, Lcom/transsion/shorttv/ui/widget/x;

    .line 187
    .line 188
    invoke-direct {v2, v1, p0, v0}, Lcom/transsion/shorttv/ui/widget/x;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->i(Lkotlin/jvm/functions/Function1;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    :goto_0
    :pswitch_2
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic l(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;FLcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;FLcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final l0(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    sget-object p3, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 4
    .line 5
    invoke-virtual {p0, p3}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->g(Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lyq/a;->a:Lyq/a;

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const-string v1, "overlay"

    .line 19
    .line 20
    const-string v2, "loadAd callback, video is now locked, skip show"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lyq/a;->e(Lyq/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-instance p3, Lcom/transsion/shorttv/ui/widget/f0;

    .line 36
    .line 37
    invoke-direct {p3, p0}, Lcom/transsion/shorttv/ui/widget/f0;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, p3}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->FAILED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->g(Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lxr/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lxr/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILnr/e;Landroidx/appcompat/widget/AppCompatTextView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILnr/e;Landroidx/appcompat/widget/AppCompatTextView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final n0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l0(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o0(Lnr/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k0(Lnr/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lur/i;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lur/i;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final p0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Y0(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const-string v0, "progressBar"

    .line 11
    .line 12
    const-string v1, "llCtr"

    .line 13
    .line 14
    const-string v2, "groupPayLockHide"

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E:Landroidx/constraintlayout/widget/Group;

    .line 19
    .line 20
    invoke-static {p1}, Lcr/b;->e(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 24
    .line 25
    iget-object p1, p1, Lqr/k0;->i:Landroidx/constraintlayout/widget/Group;

    .line 26
    .line 27
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcr/b;->e(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 34
    .line 35
    iget-object p1, p1, Lqr/k0;->p:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcr/b;->e(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, v1, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 83
    .line 84
    iget-object p1, p1, Lqr/k0;->i:Landroidx/constraintlayout/widget/Group;

    .line 85
    .line 86
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 97
    .line 98
    iget-object p1, p1, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 99
    .line 100
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcr/b;->e(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q0()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E:Landroidx/constraintlayout/widget/Group;

    .line 111
    .line 112
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 116
    .line 117
    iget-object p1, p1, Lqr/k0;->i:Landroidx/constraintlayout/widget/Group;

    .line 118
    .line 119
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 126
    .line 127
    iget-object p1, p1, Lqr/k0;->p:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 136
    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    .line 140
    .line 141
    .line 142
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 143
    .line 144
    if-eqz p1, :cond_5

    .line 145
    .line 146
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 147
    .line 148
    iget-object p1, p1, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 149
    .line 150
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Y()V

    .line 157
    .line 158
    .line 159
    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->w0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q0()V
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
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/Collection;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->D0(I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/transsion/shorttv/ui/widget/h0;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/h0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->C0(Lkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    const-string v2, "ShortTvLanguageSelectDialog_Audio"

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->j0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void

    .line 87
    :cond_4
    :goto_1
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 88
    .line 89
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_error_content:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public static synthetic r(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final r0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s0(Lcom/transsion/shorttv/bean/DubsInfo;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s0(Lcom/transsion/shorttv/bean/DubsInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v5, "onAudioTrackSelect, lanName:"

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", subjectId:"

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v5, 0x4

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v1, v7

    .line 44
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object v1, v8

    .line 72
    :goto_0
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    sget-object v2, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "k_audio_subject_"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v2, v1, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 111
    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f1(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 122
    .line 123
    const/4 v9, 0x0

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u0()Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    move v1, v9

    .line 142
    :goto_1
    const/4 v10, 0x1

    .line 143
    if-eqz v1, :cond_17

    .line 144
    .line 145
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u0()Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_7

    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroidx/lifecycle/b0;

    .line 164
    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ljava/util/List;

    .line 172
    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    check-cast v1, Ljava/lang/Iterable;

    .line 176
    .line 177
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_6

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object v3, v2

    .line 192
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 193
    .line 194
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 195
    .line 196
    if-eqz v4, :cond_5

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    invoke-virtual {v4}, Lnr/e;->c()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-ne v3, v4, :cond_5

    .line 207
    .line 208
    move v3, v10

    .line 209
    goto :goto_2

    .line 210
    :cond_5
    move v3, v9

    .line 211
    :goto_2
    if-eqz v3, :cond_4

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_6
    move-object v2, v8

    .line 215
    :goto_3
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_7
    move-object v2, v8

    .line 219
    :goto_4
    if-nez v2, :cond_c

    .line 220
    .line 221
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 222
    .line 223
    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 224
    .line 225
    const/4 v15, 0x4

    .line 226
    const/16 v16, 0x0

    .line 227
    .line 228
    const-string v13, "onAudioTrackSelect, \u6709\u8be5\u4f5c\u54c1\u4fe1\u606f\uff0c\u6ca1\u6709\u8be5\u96c6\u4fe1\u606f\uff0c\u9700\u8981\u8bf7\u6c42"

    .line 229
    .line 230
    const/4 v14, 0x0

    .line 231
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_1c

    .line 239
    .line 240
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 241
    .line 242
    if-eqz v2, :cond_8

    .line 243
    .line 244
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X()Landroidx/lifecycle/b0;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    if-eqz v2, :cond_8

    .line 249
    .line 250
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_8
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 256
    .line 257
    if-eqz v2, :cond_a

    .line 258
    .line 259
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 260
    .line 261
    if-eqz v3, :cond_9

    .line 262
    .line 263
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    goto :goto_5

    .line 268
    :cond_9
    move v3, v10

    .line 269
    :goto_5
    invoke-virtual {v2, v1, v8, v3, v9}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V

    .line 270
    .line 271
    .line 272
    :cond_a
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 273
    .line 274
    if-eqz v2, :cond_1c

    .line 275
    .line 276
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 277
    .line 278
    if-eqz v3, :cond_b

    .line 279
    .line 280
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    :cond_b
    invoke-virtual {v2, v1, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_b

    .line 288
    .line 289
    :cond_c
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 290
    .line 291
    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 292
    .line 293
    const/4 v15, 0x4

    .line 294
    const/16 v16, 0x0

    .line 295
    .line 296
    const-string v13, "onAudioTrackSelect, \u6709\u8be5\u4f5c\u54c1\u4fe1\u606f\uff0c\u76f4\u63a5\u64ad\u653e"

    .line 297
    .line 298
    const/4 v14, 0x0

    .line 299
    move-object v11, v1

    .line 300
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    if-eqz v2, :cond_16

    .line 308
    .line 309
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    if-eqz v2, :cond_16

    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    if-eqz v2, :cond_16

    .line 320
    .line 321
    new-instance v3, Lgn/e;

    .line 322
    .line 323
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 324
    .line 325
    if-eqz v4, :cond_d

    .line 326
    .line 327
    invoke-virtual {v4}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    if-eqz v4, :cond_d

    .line 332
    .line 333
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    move v14, v4

    .line 338
    goto :goto_6

    .line 339
    :cond_d
    move v14, v9

    .line 340
    :goto_6
    const/16 v17, 0x18

    .line 341
    .line 342
    const/16 v18, 0x0

    .line 343
    .line 344
    const/4 v15, 0x0

    .line 345
    const/16 v16, 0x0

    .line 346
    .line 347
    move-object v11, v3

    .line 348
    move-object v12, v2

    .line 349
    move-object v13, v2

    .line 350
    invoke-direct/range {v11 .. v18}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 351
    .line 352
    .line 353
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 354
    .line 355
    instance-of v5, v4, Lpn/f;

    .line 356
    .line 357
    if-eqz v5, :cond_e

    .line 358
    .line 359
    check-cast v4, Lpn/f;

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_e
    move-object v4, v8

    .line 363
    :goto_7
    if-eqz v4, :cond_f

    .line 364
    .line 365
    invoke-interface {v4}, Lpn/f;->b()Ljava/util/Map;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    if-eqz v4, :cond_f

    .line 370
    .line 371
    invoke-virtual {v3}, Lgn/e;->e()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    goto :goto_8

    .line 380
    :cond_f
    move v4, v9

    .line 381
    :goto_8
    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 384
    .line 385
    if-eqz v5, :cond_10

    .line 386
    .line 387
    invoke-virtual {v5}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    if-eqz v5, :cond_10

    .line 392
    .line 393
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    goto :goto_9

    .line 402
    :cond_10
    move-object v5, v8

    .line 403
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string v7, "onAudioTrackSelect, url:"

    .line 409
    .line 410
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v2, ",EP:"

    .line 417
    .line 418
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v2, ",inList:"

    .line 425
    .line 426
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v13

    .line 436
    const/4 v15, 0x4

    .line 437
    const/16 v16, 0x0

    .line 438
    .line 439
    const/4 v14, 0x0

    .line 440
    move-object v11, v1

    .line 441
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    if-nez v4, :cond_12

    .line 445
    .line 446
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 447
    .line 448
    if-eqz v1, :cond_11

    .line 449
    .line 450
    invoke-interface {v1, v3}, Lcom/transsion/player/orplayer/f;->addDataSource(Lgn/e;)Z

    .line 451
    .line 452
    .line 453
    :cond_11
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 454
    .line 455
    if-eqz v1, :cond_12

    .line 456
    .line 457
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 458
    .line 459
    .line 460
    :cond_12
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 461
    .line 462
    if-eqz v1, :cond_13

    .line 463
    .line 464
    invoke-virtual {v1, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    .line 465
    .line 466
    .line 467
    :cond_13
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 468
    .line 469
    if-eqz v1, :cond_15

    .line 470
    .line 471
    invoke-virtual {v3}, Lgn/e;->e()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    if-nez v2, :cond_14

    .line 476
    .line 477
    const-string v2, ""

    .line 478
    .line 479
    :cond_14
    const-wide/16 v3, 0x0

    .line 480
    .line 481
    invoke-interface {v1, v2, v3, v4}, Lcom/transsion/player/orplayer/f;->seekTo(Ljava/lang/String;J)V

    .line 482
    .line 483
    .line 484
    :cond_15
    new-instance v1, Lcom/transsion/shorttv/ui/widget/p0;

    .line 485
    .line 486
    invoke-direct {v1, v0}, Lcom/transsion/shorttv/ui/widget/p0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 490
    .line 491
    .line 492
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onAudioTrackChange()V

    .line 493
    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_17
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 497
    .line 498
    const/4 v5, 0x4

    .line 499
    const/4 v6, 0x0

    .line 500
    const-string v3, "onAudioTrackSelect, \u6ca1\u6709\u8be5\u4f5c\u54c1\u4fe1\u606f\uff0c\u9700\u8981\u91cd\u65b0\u8bf7\u6c42"

    .line 501
    .line 502
    const/4 v4, 0x0

    .line 503
    move-object v1, v7

    .line 504
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    if-eqz v1, :cond_1c

    .line 512
    .line 513
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 514
    .line 515
    if-eqz v2, :cond_18

    .line 516
    .line 517
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X()Landroidx/lifecycle/b0;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    if-eqz v2, :cond_18

    .line 522
    .line 523
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 524
    .line 525
    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    :cond_18
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 529
    .line 530
    if-eqz v2, :cond_1a

    .line 531
    .line 532
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 533
    .line 534
    if-eqz v3, :cond_19

    .line 535
    .line 536
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    goto :goto_a

    .line 541
    :cond_19
    move v3, v10

    .line 542
    :goto_a
    invoke-virtual {v2, v1, v8, v3, v9}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V

    .line 543
    .line 544
    .line 545
    :cond_1a
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 546
    .line 547
    if-eqz v2, :cond_1c

    .line 548
    .line 549
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 550
    .line 551
    if-eqz v3, :cond_1b

    .line 552
    .line 553
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 554
    .line 555
    .line 556
    move-result v10

    .line 557
    :cond_1b
    invoke-virtual {v2, v1, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    .line 558
    .line 559
    .line 560
    :cond_1c
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    if-eqz v1, :cond_1f

    .line 565
    .line 566
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 567
    .line 568
    if-eqz v2, :cond_1f

    .line 569
    .line 570
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 571
    .line 572
    if-eqz v3, :cond_1d

    .line 573
    .line 574
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 575
    .line 576
    .line 577
    move-result v9

    .line 578
    :cond_1d
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 579
    .line 580
    instance-of v4, v3, Lpn/f;

    .line 581
    .line 582
    if-eqz v4, :cond_1e

    .line 583
    .line 584
    move-object v8, v3

    .line 585
    check-cast v8, Lpn/f;

    .line 586
    .line 587
    :cond_1e
    invoke-virtual {v2, v1, v9, v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U0(Ljava/lang/String;ILpn/f;)V

    .line 588
    .line 589
    .line 590
    :cond_1f
    return-void
.end method

.method private final setLoading(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N:Z

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->startLoading()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->hideLoading()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final t0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final u0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lxr/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v7, "\u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u6210\u529f\uff0cname = "

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", videoResourceId = "

    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", download subtitleName = "

    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", lan = "

    .line 83
    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, "\uff0c status:"

    .line 91
    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, "~"

    .line 99
    .line 100
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v5, 0x4

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lxr/b;

    .line 114
    .line 115
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G0(Lxr/b;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    return-void
.end method

.method public static synthetic v(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Lnr/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Lnr/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N:Z

    .line 7
    .line 8
    const-string v1, "ivDownload"

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 13
    .line 14
    iget-object v0, v0, Lqr/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->X()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 34
    .line 35
    if-eqz v0, :cond_7

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-ne v0, v2, :cond_7

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 45
    .line 46
    iget-object v0, v0, Lqr/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Lwr/c;->b()V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_6
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 92
    .line 93
    iget-object v0, v0, Lqr/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_8

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_8
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 106
    .line 107
    .line 108
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 109
    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    invoke-virtual {v0}, Lwr/c;->c()V

    .line 113
    .line 114
    .line 115
    :cond_9
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    .line 116
    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    .line 120
    .line 121
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 122
    .line 123
    if-eqz v1, :cond_a

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    .line 126
    .line 127
    .line 128
    :cond_a
    :goto_2
    return-void
.end method

.method public static synthetic w(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final w0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lxr/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lxr/b;->e(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-class p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, " --> onFail() --> \u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u5931\u8d25TnT\uff0cname = "

    .line 47
    .line 48
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ", videoResourceId = "

    .line 55
    .line 56
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p0, ", download subtitleName = "

    .line 63
    .line 64
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, ", lan = "

    .line 71
    .line 72
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, "\uff0c status:"

    .line 79
    .line 80
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, "~"

    .line 87
    .line 88
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v5, 0x4

    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static synthetic watchAdToUnlock$shortTvLib_release$default(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->watchAdToUnlock$shortTvLib_release(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic x(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N0(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final x0()V
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
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v0, v1

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A:Las/a;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2}, Las/a;->d()Landroidx/lifecycle/b0;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/util/List;

    .line 59
    .line 60
    :cond_2
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/util/Collection;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    :cond_3
    check-cast v1, Ljava/util/Collection;

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/transsion/shorttv/ui/widget/g0;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/g0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->C0(Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    const-string v2, "ShortTvLanguageSelectDialog"

    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->j0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-void

    .line 110
    :cond_6
    :goto_1
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 111
    .line 112
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_error_content:I

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public static synthetic y(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->isSubtitle()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubInfo()Lxr/b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 19
    .line 20
    iget-object v0, v0, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G0(Lxr/b;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 38
    .line 39
    iget-object v0, v0, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s0(Lcom/transsion/shorttv/bean/DubsInfo;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->X0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0()Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v4}, Lnr/e;->c()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ne v3, v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v2, v1

    .line 55
    :goto_0
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v2, v1

    .line 69
    :cond_4
    :goto_1
    if-eqz v2, :cond_c

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_c

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :cond_5
    sget-object v3, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v4, "k_short_tv_resolution"

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-static {v0, v3}, Lcom/transsion/shorttv/utils/i;->d(Ljava/util/List;I)Lcom/transsion/shorttv/bean/Video;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v6, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 108
    .line 109
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 110
    .line 111
    .line 112
    iput v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 113
    .line 114
    check-cast v0, Ljava/lang/Iterable;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_b

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/transsion/shorttv/bean/Video;

    .line 131
    .line 132
    new-instance v8, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    if-eqz v9, :cond_6

    .line 139
    .line 140
    invoke-static {v9}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    if-eqz v9, :cond_6

    .line 145
    .line 146
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    const/4 v9, 0x0

    .line 152
    :goto_3
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    new-instance v11, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v10, "P"

    .line 165
    .line 166
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-direct {v8, v9, v10}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    if-eqz v4, :cond_7

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    goto :goto_4

    .line 187
    :cond_7
    move-object v10, v1

    .line 188
    :goto_4
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_9

    .line 193
    .line 194
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    if-eqz v9, :cond_8

    .line 199
    .line 200
    invoke-static {v9}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-eqz v9, :cond_8

    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    goto :goto_5

    .line 211
    :cond_8
    move v9, v5

    .line 212
    :goto_5
    iput v9, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 213
    .line 214
    :cond_9
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v4, :cond_a

    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    goto :goto_6

    .line 225
    :cond_a
    move-object v9, v1

    .line 226
    :goto_6
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    invoke-virtual {v8, v3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->setSelect(Z)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_b
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 241
    .line 242
    iget-object v0, v0, Lqr/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 243
    .line 244
    const-string v1, "tvResolution"

    .line 245
    .line 246
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance v1, Lcom/transsion/shorttv/ui/widget/o0;

    .line 250
    .line 251
    invoke-direct {v1, p0, v7, v2}, Lcom/transsion/shorttv/ui/widget/o0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v6, v1}, Lcom/transsion/shorttv/utils/l;->c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 255
    .line 256
    .line 257
    :cond_c
    :goto_7
    return-void
.end method


# virtual methods
.method public app2Background()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lwr/c;->e(ZZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILqn/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/e$a;->a(Lcom/transsion/player/orplayer/e;ZIILqn/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getCountdownController()Lcom/transsion/shorttv/ui/widget/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/k0;->e:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const-string v1, "flContainer"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getProgress()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0
.end method

.method public getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/v0;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 9
    .line 10
    .line 11
    const-class p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 18
    .line 19
    return-object p1
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isFirstPlayInSession()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->c(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d0()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I:Landroidx/lifecycle/c0;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e0()Landroidx/lifecycle/LiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lnr/f;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;->b(Lnr/f;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e0()Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public onAudioTrackChange()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onAudioTrackChange initResolution"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g0()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onBufferedPosition(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->d(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    sget-object v0, Lhr/d;->a:Lhr/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    const-wide/16 v3, 0x1f4

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v4}, Lhr/d;->a(IJ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 26
    .line 27
    .line 28
    :cond_2
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "onclick, "

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move-object v2, v0

    .line 68
    :goto_1
    sget v3, Lcom/transsion/shorttv/R$id;->tv_episode:I

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ne v4, v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->showEpisodeListDialog()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_16

    .line 83
    .line 84
    :cond_5
    :goto_2
    sget v3, Lcom/transsion/shorttv/R$id;->tv_favorite:I

    .line 85
    .line 86
    if-nez v2, :cond_6

    .line 87
    .line 88
    goto :goto_7

    .line 89
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-ne v4, v3, :cond_e

    .line 94
    .line 95
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 96
    .line 97
    if-eqz p1, :cond_d

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_d

    .line 104
    .line 105
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 110
    .line 111
    if-nez p1, :cond_7

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_7
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 115
    .line 116
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_c

    .line 121
    .line 122
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 123
    .line 124
    if-eqz v0, :cond_b

    .line 125
    .line 126
    sget-object v2, Lwr/b;->a:Lwr/b;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    :cond_8
    move v6, v1

    .line 147
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 148
    .line 149
    if-eqz v0, :cond_a

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-nez v0, :cond_9

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_9
    :goto_3
    move-object v7, v0

    .line 159
    goto :goto_5

    .line 160
    :cond_a
    :goto_4
    const-string v0, ""

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :goto_5
    const/16 v9, 0x20

    .line 164
    .line 165
    const/4 v10, 0x0

    .line 166
    const-string v5, ""

    .line 167
    .line 168
    const/4 v8, 0x0

    .line 169
    invoke-static/range {v2 .. v10}, Lwr/b;->g(Lwr/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_b
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 173
    .line 174
    if-eqz v0, :cond_2b

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P(Lcom/transsion/shorttv/bean/Subject;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_16

    .line 180
    .line 181
    :cond_c
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O0()V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_16

    .line 185
    .line 186
    :cond_d
    :goto_6
    return-void

    .line 187
    :cond_e
    :goto_7
    sget v3, Lcom/transsion/shorttv/R$id;->iv_play_status:I

    .line 188
    .line 189
    if-nez v2, :cond_f

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-ne v4, v3, :cond_10

    .line 197
    .line 198
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v0()V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_16

    .line 202
    .line 203
    :cond_10
    :goto_8
    sget v3, Lcom/transsion/shorttv/R$id;->iv_share:I

    .line 204
    .line 205
    if-nez v2, :cond_11

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-ne v4, v3, :cond_12

    .line 213
    .line 214
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->B0(Landroid/view/View;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_16

    .line 218
    .line 219
    :cond_12
    :goto_9
    sget v3, Lcom/transsion/shorttv/R$id;->iv_download:I

    .line 220
    .line 221
    if-nez v2, :cond_13

    .line 222
    .line 223
    goto :goto_a

    .line 224
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eq v4, v3, :cond_23

    .line 229
    .line 230
    :goto_a
    sget v3, Lcom/transsion/shorttv/R$id;->iv_short_cover:I

    .line 231
    .line 232
    if-nez v2, :cond_14

    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eq v4, v3, :cond_23

    .line 240
    .line 241
    :goto_b
    sget v3, Lcom/transsion/shorttv/R$id;->tv_name:I

    .line 242
    .line 243
    if-nez v2, :cond_15

    .line 244
    .line 245
    goto :goto_c

    .line 246
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-ne v4, v3, :cond_16

    .line 251
    .line 252
    goto/16 :goto_12

    .line 253
    .line 254
    :cond_16
    :goto_c
    sget p1, Lcom/transsion/shorttv/R$id;->iv_back:I

    .line 255
    .line 256
    if-nez v2, :cond_17

    .line 257
    .line 258
    goto :goto_d

    .line 259
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-ne v0, p1, :cond_18

    .line 264
    .line 265
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 266
    .line 267
    if-eqz p1, :cond_2b

    .line 268
    .line 269
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    if-eqz p1, :cond_2b

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_16

    .line 279
    .line 280
    :cond_18
    :goto_d
    sget p1, Lcom/transsion/shorttv/R$id;->tv_language:I

    .line 281
    .line 282
    if-nez v2, :cond_19

    .line 283
    .line 284
    goto :goto_e

    .line 285
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-ne v0, p1, :cond_1b

    .line 290
    .line 291
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 292
    .line 293
    iget-object p1, p1, Lqr/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_1a

    .line 300
    .line 301
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->x0()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_16

    .line 305
    .line 306
    :cond_1a
    sget-object p1, Ljr/b;->a:Ljr/b$a;

    .line 307
    .line 308
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_no_language_toast:I

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Ljr/b$a;->d(I)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_16

    .line 314
    .line 315
    :cond_1b
    :goto_e
    sget p1, Lcom/transsion/shorttv/R$id;->tv_audio:I

    .line 316
    .line 317
    if-nez v2, :cond_1c

    .line 318
    .line 319
    goto :goto_f

    .line 320
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-ne v0, p1, :cond_1d

    .line 325
    .line 326
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q0()V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_16

    .line 330
    .line 331
    :cond_1d
    :goto_f
    sget p1, Lcom/transsion/shorttv/R$id;->tv_subtitles:I

    .line 332
    .line 333
    if-nez v2, :cond_1e

    .line 334
    .line 335
    goto :goto_10

    .line 336
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-ne v0, p1, :cond_1f

    .line 341
    .line 342
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E0()V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_16

    .line 346
    .line 347
    :cond_1f
    :goto_10
    sget p1, Lcom/transsion/shorttv/R$id;->tv_resolution:I

    .line 348
    .line 349
    if-nez v2, :cond_20

    .line 350
    .line 351
    goto :goto_11

    .line 352
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-ne v0, p1, :cond_21

    .line 357
    .line 358
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z0()V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_16

    .line 362
    .line 363
    :cond_21
    :goto_11
    sget p1, Lcom/transsion/shorttv/R$id;->tv_speed:I

    .line 364
    .line 365
    if-nez v2, :cond_22

    .line 366
    .line 367
    goto/16 :goto_16

    .line 368
    .line 369
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-ne v0, p1, :cond_2b

    .line 374
    .line 375
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->C0()V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_16

    .line 379
    .line 380
    :cond_23
    :goto_12
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 381
    .line 382
    if-eqz v2, :cond_24

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    .line 385
    .line 386
    .line 387
    :cond_24
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 388
    .line 389
    if-eqz v2, :cond_2b

    .line 390
    .line 391
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    if-eqz v2, :cond_2b

    .line 396
    .line 397
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    move-object v9, v2

    .line 402
    check-cast v9, Lcom/transsion/shorttv/bean/Subject;

    .line 403
    .line 404
    if-eqz v9, :cond_2b

    .line 405
    .line 406
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 407
    .line 408
    if-eqz v2, :cond_2b

    .line 409
    .line 410
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    if-nez v2, :cond_25

    .line 415
    .line 416
    goto :goto_16

    .line 417
    :cond_25
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 418
    .line 419
    if-eqz v3, :cond_26

    .line 420
    .line 421
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    move v5, v3

    .line 426
    goto :goto_13

    .line 427
    :cond_26
    move v5, v1

    .line 428
    :goto_13
    sget-object v3, Lwr/b;->a:Lwr/b;

    .line 429
    .line 430
    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/Subject;->getNeedPaid()I

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    const/4 v10, 0x1

    .line 435
    if-nez v4, :cond_27

    .line 436
    .line 437
    move v6, v10

    .line 438
    goto :goto_14

    .line 439
    :cond_27
    move v6, v1

    .line 440
    :goto_14
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    xor-int/lit8 v7, v4, 0x1

    .line 445
    .line 446
    sget-object v4, Ldr/b;->a:Ldr/b;

    .line 447
    .line 448
    invoke-virtual {v4, v9, v5}, Ldr/b;->b(Lcom/transsion/shorttv/bean/Subject;I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    move-object v4, v9

    .line 453
    invoke-virtual/range {v3 .. v8}, Lwr/b;->c(Lcom/transsion/shorttv/bean/Subject;IZZLjava/lang/String;)V

    .line 454
    .line 455
    .line 456
    sget-object v3, Lrr/a;->a:Lrr/a;

    .line 457
    .line 458
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 459
    .line 460
    if-eqz v4, :cond_28

    .line 461
    .line 462
    invoke-virtual {v4}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    :cond_28
    move-object v5, v0

    .line 467
    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    sget v4, Lcom/transsion/shorttv/R$id;->iv_download:I

    .line 476
    .line 477
    if-ne v0, v4, :cond_29

    .line 478
    .line 479
    move v8, v10

    .line 480
    goto :goto_15

    .line 481
    :cond_29
    move v8, v1

    .line 482
    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    sget v0, Lcom/transsion/shorttv/R$id;->iv_download:I

    .line 487
    .line 488
    if-eq p1, v0, :cond_2a

    .line 489
    .line 490
    move v1, v10

    .line 491
    :cond_2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    const/16 v12, 0x40

    .line 496
    .line 497
    const/4 v13, 0x0

    .line 498
    const-string v7, "download_subject"

    .line 499
    .line 500
    const/4 v10, 0x0

    .line 501
    move-object v4, v2

    .line 502
    invoke-static/range {v3 .. v13}, Lrr/a;->b(Lrr/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    nop

    .line 506
    :cond_2b
    :goto_16
    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/shorttv/ui/widget/w0;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/transsion/shorttv/ui/widget/w0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string p1, "onCompletion\uff0c play next"

    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->f(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d0()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I:Landroidx/lifecycle/c0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/c;->c()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-static {v0, v2, v3, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iput-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e0()Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->N()V

    .line 69
    .line 70
    .line 71
    :cond_4
    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->c(Lcom/transsion/subtitle_download/a;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->onDestroy()V

    .line 85
    .line 86
    .line 87
    :cond_5
    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    const-string p1, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "dbBean"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    .line 13
    .line 14
    new-instance p1, Lcom/transsion/shorttv/ui/widget/x0;

    .line 15
    .line 16
    invoke-direct {p1, p0, p2}, Lcom/transsion/shorttv/ui/widget/x0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->g(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onGetDubsInfo()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->h(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingBegin(Lgn/e;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->j(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/widget/c;->i()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->l(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/widget/c;->h()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onLoadingProgress(IFLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMediaItemTransition()V
    .locals 6

    .line 2
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    iget-object v2, v2, Lqr/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaItemTransition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/transsion/player/orplayer/e$a;->f(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->reset()V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    return-void
.end method

.method public final onNetConnect()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "ORSubtitle_v"

    .line 6
    .line 7
    const-string v2, "onNetConnect, \u7f51\u7edc\u6062\u590d\uff0c\u68c0\u6d4b\u5b57\u5e55"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->e()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onPageRelease(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lnr/e;->c()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->getProgress()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->K(IJ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onPlayerReset()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G0()Landroidx/lifecycle/LiveData;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H:Landroidx/lifecycle/c0;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public onPageSelected(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/widget/c;->d()V

    .line 25
    .line 26
    .line 27
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "getViewLifecycleOwner(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G0()Landroidx/lifecycle/LiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H:Landroidx/lifecycle/c0;

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lwr/c;->p(Lcom/transsion/player/orplayer/f;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->addPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 69
    .line 70
    .line 71
    :cond_6
    if-eqz p3, :cond_7

    .line 72
    .line 73
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    invoke-virtual {p3}, Lnr/e;->c()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d1(I)V

    .line 82
    .line 83
    .line 84
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b0()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g0()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h0()V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    .line 100
    .line 101
    .line 102
    if-eqz p3, :cond_8

    .line 103
    .line 104
    invoke-direct {p0, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o0(Lnr/e;)V

    .line 105
    .line 106
    .line 107
    :cond_8
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 108
    .line 109
    if-eqz p1, :cond_9

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_9

    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 122
    .line 123
    :goto_0
    move-object v1, p1

    .line 124
    goto :goto_1

    .line 125
    :cond_9
    const/4 p1, 0x0

    .line 126
    goto :goto_0

    .line 127
    :goto_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 128
    .line 129
    const/4 p2, 0x0

    .line 130
    if-eqz p1, :cond_a

    .line 131
    .line 132
    invoke-virtual {p1}, Lnr/e;->c()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    move v2, p1

    .line 137
    goto :goto_2

    .line 138
    :cond_a
    move v2, p2

    .line 139
    :goto_2
    sget-object p1, Ldr/b;->a:Ldr/b;

    .line 140
    .line 141
    invoke-virtual {p1, v1, v2}, Ldr/b;->b(Lcom/transsion/shorttv/bean/Subject;I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    sget-object v0, Lwr/b;->a:Lwr/b;

    .line 146
    .line 147
    const/4 p1, 0x1

    .line 148
    if-eqz v1, :cond_b

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getNeedPaid()I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-nez p3, :cond_b

    .line 155
    .line 156
    move v3, p1

    .line 157
    goto :goto_3

    .line 158
    :cond_b
    move v3, p2

    .line 159
    :goto_3
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    xor-int/lit8 v4, p2, 0x1

    .line 164
    .line 165
    invoke-virtual/range {v0 .. v5}, Lwr/b;->k(Lcom/transsion/shorttv/bean/Subject;IZZLjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 5

    .line 1
    const-string v0, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-static {v0, p1, v1, v2, v1}, Lcom/transsion/player/orplayer/e$a;->r(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/PlayError;Lgn/e;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Lgn/e;->j()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " --> IPlayerListener --> onPlayError()  errorCode:"

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " errorMessage:"

    .line 50
    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " url:"

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const/4 v1, 0x1

    .line 75
    const-string v2, "i_media"

    .line 76
    .line 77
    invoke-virtual {v0, v2, p2, v1}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-direct {p0, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/transsion/shorttv/ui/widget/c;->h()V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-nez p2, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const/16 v0, 0x7d1

    .line 103
    .line 104
    if-eq p2, v0, :cond_5

    .line 105
    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/16 p2, 0x7d2

    .line 118
    .line 119
    if-ne p1, p2, :cond_6

    .line 120
    .line 121
    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O0()V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_1
    return-void
.end method

.method public onPlayErrorChangePayer(Lcom/transsion/player/orplayer/global/TnPlayerType;Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->s(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/global/TnPlayerType;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerRelease(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->t(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerReset()V
    .locals 8

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "player- onPlayerReset data: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v0, v6

    .line 28
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/c;->d()V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->onDestroy()V

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 v7, 0x0

    .line 49
    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 53
    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    .line 56
    .line 57
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L:Z

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2, v1, v0}, Lwr/c;->e(ZZ)V

    .line 77
    .line 78
    .line 79
    :cond_3
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    move-object v1, v7

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 104
    .line 105
    iget-object v3, v3, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    int-to-long v3, v3

    .line 112
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s1(Lcom/transsion/shorttv/bean/Subject;Lnr/e;J)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 116
    .line 117
    iget-object v0, v0, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 118
    .line 119
    const-string v1, "ivCover"

    .line 120
    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v2, "onPlayerReset   visible  "

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const/4 v4, 0x4

    .line 147
    const/4 v5, 0x0

    .line 148
    const/4 v3, 0x0

    .line 149
    move-object v0, v6

    .line 150
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 154
    .line 155
    iget-object v0, v0, Lqr/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 156
    .line 157
    const-string v1, "ivPlayStatus"

    .line 158
    .line 159
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 173
    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 177
    .line 178
    if-eqz v1, :cond_7

    .line 179
    .line 180
    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 184
    .line 185
    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    .line 186
    .line 187
    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 188
    .line 189
    const-wide/16 v0, 0x0

    .line 190
    .line 191
    iput-wide v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r:J

    .line 192
    .line 193
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    .line 194
    .line 195
    .line 196
    const-wide/16 v0, 0x64

    .line 197
    .line 198
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 11

    .line 1
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L:Z

    .line 2
    .line 3
    if-nez p1, :cond_5

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide v3, v1

    .line 20
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x3e8

    .line 24
    .line 25
    int-to-long v5, v0

    .line 26
    div-long/2addr v3, v5

    .line 27
    const-wide/16 v5, 0x1e

    .line 28
    .line 29
    cmp-long v0, v3, v5

    .line 30
    .line 31
    const-string v3, "vProgressGesture"

    .line 32
    .line 33
    if-ltz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 36
    .line 37
    iget-object v0, v0, Lqr/k0;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    .line 38
    .line 39
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 47
    .line 48
    iget-object v0, v0, Lqr/k0;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    .line 49
    .line 50
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f0()Landroidx/lifecycle/LiveData;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {v3}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;->getEp()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-ne v4, v3, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;->getProgress()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 99
    .line 100
    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 103
    .line 104
    iget-object v0, v0, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v8, "player- onPrepare, duration = "

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ", progress = "

    .line 124
    .line 125
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, "  this = "

    .line 132
    .line 133
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const/4 v9, 0x4

    .line 144
    const/4 v10, 0x0

    .line 145
    const/4 v8, 0x0

    .line 146
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    cmp-long v0, v3, v1

    .line 150
    .line 151
    if-lez v0, :cond_2

    .line 152
    .line 153
    iput-wide v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r:J

    .line 154
    .line 155
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 156
    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    invoke-interface {v0, v3, v4}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 160
    .line 161
    .line 162
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->O()V

    .line 167
    .line 168
    .line 169
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    .line 170
    .line 171
    if-nez v0, :cond_4

    .line 172
    .line 173
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q:Z

    .line 174
    .line 175
    if-nez v0, :cond_4

    .line 176
    .line 177
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 178
    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-ne v0, p1, :cond_4

    .line 186
    .line 187
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 188
    .line 189
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 190
    .line 191
    const/4 v5, 0x4

    .line 192
    const/4 v6, 0x0

    .line 193
    const-string v3, "player- onPrepare\uff0c play~"

    .line 194
    .line 195
    const/4 v4, 0x0

    .line 196
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 200
    .line 201
    .line 202
    :cond_5
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 11
    .line 12
    iget-object v1, v1, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    const-wide/16 v9, 0x0

    .line 20
    .line 21
    cmp-long v3, v1, v9

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    .line 25
    const-wide/16 v3, 0x64

    .line 26
    .line 27
    cmp-long v3, v1, v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v3}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-wide v1, v9

    .line 54
    :goto_0
    cmp-long v3, v1, v9

    .line 55
    .line 56
    if-gtz v3, :cond_3

    .line 57
    .line 58
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 59
    .line 60
    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v15, 0x4

    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    const-string v13, "onProgress- duration <= 0, return"

    .line 66
    .line 67
    const/4 v14, 0x0

    .line 68
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const/4 v5, 0x2

    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    move-wide/from16 v2, p1

    .line 83
    .line 84
    invoke-static/range {v1 .. v6}, Lcom/transsion/player/orplayer/e$a;->z(Lcom/transsion/player/orplayer/e;JLgn/e;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v1, v7, v8}, Lcom/transsion/shorttv/subtitle/a;->d(J)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 99
    .line 100
    .line 101
    cmp-long v1, v7, v9

    .line 102
    .line 103
    if-lez v1, :cond_6

    .line 104
    .line 105
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 106
    .line 107
    iget-object v1, v1, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 108
    .line 109
    const-string v2, "ivCover"

    .line 110
    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_6

    .line 119
    .line 120
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 121
    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    const/4 v3, 0x1

    .line 129
    if-ne v1, v3, :cond_6

    .line 130
    .line 131
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 132
    .line 133
    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 134
    .line 135
    const/4 v15, 0x4

    .line 136
    const/16 v16, 0x0

    .line 137
    .line 138
    const-string v13, "onProgress-progress>= cover gone"

    .line 139
    .line 140
    const/4 v14, 0x0

    .line 141
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 145
    .line 146
    iget-object v1, v1, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 147
    .line 148
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Lcr/b;->b(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 155
    .line 156
    if-eqz v1, :cond_7

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    const/4 v1, 0x0

    .line 172
    :goto_2
    if-eqz v1, :cond_a

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    const/4 v3, 0x2

    .line 179
    if-ne v2, v3, :cond_a

    .line 180
    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_a

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    int-to-long v1, v1

    .line 192
    const-wide/16 v3, 0x3e8

    .line 193
    .line 194
    mul-long/2addr v1, v3

    .line 195
    const-wide/16 v3, 0x1

    .line 196
    .line 197
    cmp-long v3, v3, v1

    .line 198
    .line 199
    if-gtz v3, :cond_9

    .line 200
    .line 201
    cmp-long v3, v1, v7

    .line 202
    .line 203
    if-gtz v3, :cond_9

    .line 204
    .line 205
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 206
    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 210
    .line 211
    .line 212
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 216
    .line 217
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K0(Lnr/e;)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    cmp-long v3, v1, v9

    .line 222
    .line 223
    if-lez v3, :cond_a

    .line 224
    .line 225
    sub-long/2addr v1, v7

    .line 226
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U0(J)V

    .line 227
    .line 228
    .line 229
    :cond_a
    :goto_3
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 9

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 6
    .line 7
    iget-object v2, v2, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v6, "ivCover"

    .line 10
    .line 11
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x1

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    move v2, v8

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v7

    .line 25
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "player-   viewBinding.ivCover.isVisible:"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " onRenderFirstFrame"

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v4, 0x4

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iput-boolean v8, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    .line 61
    .line 62
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lwr/c;->onRenderFirstFrame()V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-direct {p0, v7}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/c;->h()V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 80
    .line 81
    iget-object v0, v0, Lqr/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 82
    .line 83
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 12

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_5

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p1, v0, :cond_4

    .line 24
    .line 25
    const/4 p2, 0x5

    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lwr/c;->h()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 58
    .line 59
    if-eqz p1, :cond_7

    .line 60
    .line 61
    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 62
    .line 63
    if-eqz p2, :cond_7

    .line 64
    .line 65
    invoke-interface {p2, p1}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q:Z

    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    .line 73
    .line 74
    if-nez p1, :cond_7

    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 77
    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-ne p1, p2, :cond_7

    .line 85
    .line 86
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 89
    .line 90
    const/4 v4, 0x4

    .line 91
    const/4 v5, 0x0

    .line 92
    const-string v2, "ON_RESUME"

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q:Z

    .line 103
    .line 104
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 105
    .line 106
    iget-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v10, 0x4

    .line 109
    const/4 v11, 0x0

    .line 110
    const-string v8, "player- onPause"

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 117
    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z0()Lur/g;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_6

    .line 125
    .line 126
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 127
    .line 128
    invoke-interface {p1, v0}, Lur/g;->f(Lcom/transsion/player/orplayer/f;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-ne p1, p2, :cond_6

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/f;

    .line 136
    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->m:Landroid/view/GestureDetector;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    return v1
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->C(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksChange(Lqn/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->D(Lcom/transsion/player/orplayer/e;Lqn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->E(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "player- onVideoPause"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 19
    .line 20
    iget-object p1, p1, Lqr/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    const-string v1, "ivPlayStatus"

    .line 23
    .line 24
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {p1, v2, v1, v2}, Lcom/transsion/player/orplayer/e$a;->G(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/transsion/shorttv/subtitle/a;->c(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->B:I

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->C:I

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p2, "onVideoSizeChanged "

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "player- onVideoStart"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onPrepare(Lgn/e;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/e$a;->J(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 26
    .line 27
    iget-object p1, p1, Lqr/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    .line 29
    const-string v1, "ivPlayStatus"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/transsion/shorttv/subtitle/a;->c(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final reset()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "playNewMedia data: "

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 32
    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2, v0}, Lwr/c;->e(ZZ)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v1, 0x0

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 85
    .line 86
    iget-object v3, v3, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-long v3, v3

    .line 93
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s1(Lcom/transsion/shorttv/bean/Subject;Lnr/e;J)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 97
    .line 98
    iget-object v0, v0, Lqr/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 99
    .line 100
    const-string v1, "ivPlayStatus"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v0, 0x0

    .line 109
    .line 110
    iput-wide v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r:J

    .line 111
    .line 112
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    .line 113
    .line 114
    .line 115
    const-wide/16 v0, 0x64

    .line 116
    .line 117
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final setCountdownController(Lcom/transsion/shorttv/ui/widget/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    .line 2
    .line 3
    return-void
.end method

.method public setData(Lnr/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    const-string v5, "item"

    .line 12
    .line 13
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "fragment"

    .line 17
    .line 18
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 22
    .line 23
    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lnr/e;->c()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v9, "setData position:"

    .line 35
    .line 36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v9, "  ep:"

    .line 43
    .line 44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, " item:"

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, " "

    .line 59
    .line 60
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const/4 v10, 0x4

    .line 71
    const/4 v11, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 77
    .line 78
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iput-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Boolean;

    .line 83
    .line 84
    iput-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_0

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iput-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 99
    .line 100
    new-instance v5, Landroidx/lifecycle/v0;

    .line 101
    .line 102
    invoke-direct {v5, v3}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 103
    .line 104
    .line 105
    const-class v3, Las/a;

    .line 106
    .line 107
    invoke-virtual {v5, v3}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Las/a;

    .line 112
    .line 113
    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A:Las/a;

    .line 114
    .line 115
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 120
    .line 121
    .line 122
    iput-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_1

    .line 129
    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g0()V

    .line 131
    .line 132
    .line 133
    :cond_1
    if-nez p7, :cond_2

    .line 134
    .line 135
    new-instance v3, Lwr/c;

    .line 136
    .line 137
    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 138
    .line 139
    invoke-direct {v3, v2, v5}, Lwr/c;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 140
    .line 141
    .line 142
    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 143
    .line 144
    :cond_2
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 145
    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Lwr/c;->k(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 152
    .line 153
    if-eqz v3, :cond_4

    .line 154
    .line 155
    move-object/from16 v4, p6

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Lwr/c;->j(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 161
    .line 162
    if-eqz v3, :cond_5

    .line 163
    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v3, v4}, Lwr/c;->r(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 172
    .line 173
    if-eqz v3, :cond_6

    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Lnr/e;->b()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {v3, v4}, Lwr/c;->l(I)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T0()V

    .line 183
    .line 184
    .line 185
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    if-eqz v3, :cond_10

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-eqz v3, :cond_10

    .line 195
    .line 196
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    .line 201
    .line 202
    if-eqz v3, :cond_10

    .line 203
    .line 204
    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 205
    .line 206
    if-eqz v5, :cond_7

    .line 207
    .line 208
    invoke-virtual {v5, v3}, Lwr/c;->t(Lcom/transsion/shorttv/bean/Subject;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv/bean/Subject;

    .line 212
    .line 213
    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 214
    .line 215
    if-eqz v5, :cond_8

    .line 216
    .line 217
    invoke-virtual {v5}, Lnr/e;->c()I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    goto :goto_0

    .line 226
    :cond_8
    move-object v5, v4

    .line 227
    :goto_0
    invoke-static {v5}, Lcom/transsion/shorttv/utils/i;->e(Ljava/lang/Integer;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv/bean/Subject;

    .line 232
    .line 233
    if-eqz v6, :cond_9

    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-static {v6}, Lcom/transsion/shorttv/utils/i;->e(Ljava/lang/Integer;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    goto :goto_1

    .line 248
    :cond_9
    move-object v6, v4

    .line 249
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lnr/e;->c()I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    const-string v8, " / EP"

    .line 254
    .line 255
    if-nez v7, :cond_a

    .line 256
    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    sget v9, Lcom/transsion/shorttv/R$string;->short_tv_trailer:I

    .line 262
    .line 263
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    new-instance v9, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 286
    .line 287
    iget-object v7, v7, Lqr/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v9, "EP"

    .line 299
    .line 300
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 317
    .line 318
    iget-object v7, v7, Lqr/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 319
    .line 320
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    :goto_2
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    if-eqz v6, :cond_e

    .line 328
    .line 329
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    if-nez v8, :cond_b

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_b
    sget-object v7, Ler/b;->a:Ler/b$a;

    .line 337
    .line 338
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 339
    .line 340
    iget-object v9, v2, Lqr/k0;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 341
    .line 342
    const-string v2, "ivShortCover"

    .line 343
    .line 344
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    const-string v10, ""

    .line 352
    .line 353
    if-nez v2, :cond_c

    .line 354
    .line 355
    move-object v2, v10

    .line 356
    :cond_c
    const/high16 v11, 0x41a80000    # 21.0f

    .line 357
    .line 358
    invoke-static {v11}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    const/high16 v12, 0x41f00000    # 30.0f

    .line 363
    .line 364
    invoke-static {v12}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    if-nez v6, :cond_d

    .line 373
    .line 374
    move-object v14, v10

    .line 375
    goto :goto_3

    .line 376
    :cond_d
    move-object v14, v6

    .line 377
    :goto_3
    const/16 v21, 0x1fa0

    .line 378
    .line 379
    const/16 v22, 0x0

    .line 380
    .line 381
    const/4 v13, 0x0

    .line 382
    const/4 v15, 0x0

    .line 383
    const/16 v16, 0x0

    .line 384
    .line 385
    const/16 v17, 0x0

    .line 386
    .line 387
    const/16 v18, 0x0

    .line 388
    .line 389
    const/16 v19, 0x0

    .line 390
    .line 391
    const/16 v20, 0x0

    .line 392
    .line 393
    move-object v10, v2

    .line 394
    invoke-static/range {v7 .. v22}, Ler/b$a;->m(Ler/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_e
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    if-eqz v2, :cond_f

    .line 402
    .line 403
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    if-eqz v2, :cond_f

    .line 408
    .line 409
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    if-eqz v2, :cond_f

    .line 414
    .line 415
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-direct {v0, v6, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 424
    .line 425
    .line 426
    :cond_f
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 427
    .line 428
    iget-object v2, v2, Lqr/k0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 429
    .line 430
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual/range {p1 .. p1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    move/from16 v6, p8

    .line 442
    .line 443
    invoke-direct {v0, v5, v3, v2, v6}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;Z)V

    .line 444
    .line 445
    .line 446
    :cond_10
    iget-boolean v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    .line 447
    .line 448
    if-nez v2, :cond_21

    .line 449
    .line 450
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 451
    .line 452
    const/16 v3, 0x1e

    .line 453
    .line 454
    if-lt v2, v3, :cond_21

    .line 455
    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    .line 461
    .line 462
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    check-cast v2, Landroid/app/Activity;

    .line 466
    .line 467
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    if-eqz v2, :cond_21

    .line 472
    .line 473
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    if-eqz v3, :cond_21

    .line 482
    .line 483
    invoke-static {}, Landroidx/core/view/o2;->a()I

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    invoke-static {v3, v5}, Landroidx/core/view/g2;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    if-eqz v3, :cond_21

    .line 492
    .line 493
    invoke-static {v2}, Lcom/blankj/utilcode/util/d;->e(Landroid/view/Window;)Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    const/4 v5, 0x0

    .line 498
    if-eqz v2, :cond_11

    .line 499
    .line 500
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    const/4 v6, 0x1

    .line 505
    if-le v2, v6, :cond_11

    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_11
    move v6, v5

    .line 509
    :goto_5
    const/high16 v2, 0x41800000    # 16.0f

    .line 510
    .line 511
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    const-string v7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 516
    .line 517
    const-string v8, "progressGuideline"

    .line 518
    .line 519
    if-nez v6, :cond_19

    .line 520
    .line 521
    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    if-lez v6, :cond_19

    .line 526
    .line 527
    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 528
    .line 529
    iget-object v6, v6, Lqr/k0;->t:Landroid/widget/Space;

    .line 530
    .line 531
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    if-eqz v8, :cond_18

    .line 539
    .line 540
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 541
    .line 542
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    instance-of v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 547
    .line 548
    if-eqz v9, :cond_12

    .line 549
    .line 550
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 551
    .line 552
    goto :goto_6

    .line 553
    :cond_12
    move-object v7, v4

    .line 554
    :goto_6
    if-eqz v7, :cond_13

    .line 555
    .line 556
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 557
    .line 558
    goto :goto_7

    .line 559
    :cond_13
    move v7, v5

    .line 560
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 561
    .line 562
    .line 563
    move-result-object v9

    .line 564
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 565
    .line 566
    if-eqz v10, :cond_14

    .line 567
    .line 568
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 569
    .line 570
    goto :goto_8

    .line 571
    :cond_14
    move-object v9, v4

    .line 572
    :goto_8
    if-eqz v9, :cond_15

    .line 573
    .line 574
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 575
    .line 576
    goto :goto_9

    .line 577
    :cond_15
    move v9, v5

    .line 578
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 579
    .line 580
    .line 581
    move-result-object v10

    .line 582
    instance-of v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 583
    .line 584
    if-eqz v11, :cond_16

    .line 585
    .line 586
    move-object v4, v10

    .line 587
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 588
    .line 589
    :cond_16
    if-eqz v4, :cond_17

    .line 590
    .line 591
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 592
    .line 593
    :cond_17
    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    invoke-virtual {v8, v7, v9, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    .line 606
    .line 607
    goto :goto_e

    .line 608
    :cond_18
    new-instance v1, Ljava/lang/NullPointerException;

    .line 609
    .line 610
    invoke-direct {v1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw v1

    .line 614
    :cond_19
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lqr/k0;

    .line 615
    .line 616
    iget-object v3, v3, Lqr/k0;->t:Landroid/widget/Space;

    .line 617
    .line 618
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    if-eqz v6, :cond_20

    .line 626
    .line 627
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 628
    .line 629
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 634
    .line 635
    if-eqz v8, :cond_1a

    .line 636
    .line 637
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 638
    .line 639
    goto :goto_a

    .line 640
    :cond_1a
    move-object v7, v4

    .line 641
    :goto_a
    if-eqz v7, :cond_1b

    .line 642
    .line 643
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 644
    .line 645
    goto :goto_b

    .line 646
    :cond_1b
    move v7, v5

    .line 647
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 652
    .line 653
    if-eqz v9, :cond_1c

    .line 654
    .line 655
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 656
    .line 657
    goto :goto_c

    .line 658
    :cond_1c
    move-object v8, v4

    .line 659
    :goto_c
    if-eqz v8, :cond_1d

    .line 660
    .line 661
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 662
    .line 663
    goto :goto_d

    .line 664
    :cond_1d
    move v8, v5

    .line 665
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 666
    .line 667
    .line 668
    move-result-object v9

    .line 669
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 670
    .line 671
    if-eqz v10, :cond_1e

    .line 672
    .line 673
    move-object v4, v9

    .line 674
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 675
    .line 676
    :cond_1e
    if-eqz v4, :cond_1f

    .line 677
    .line 678
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 679
    .line 680
    :cond_1f
    invoke-virtual {v6, v7, v8, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    .line 685
    .line 686
    goto :goto_e

    .line 687
    :cond_20
    new-instance v1, Ljava/lang/NullPointerException;

    .line 688
    .line 689
    invoke-direct {v1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    throw v1

    .line 693
    :cond_21
    :goto_e
    invoke-direct/range {p0 .. p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b1(Lnr/e;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateLockState(Lnr/e;)V

    .line 697
    .line 698
    .line 699
    return-void
.end method

.method public final setFirstPlayInSession(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    .line 1
    const-string v0, "pagerLayoutManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 7
    .line 8
    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lwr/c;->v(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final showEpisodeListDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->n1()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateLockState(Lnr/e;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x2

    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K0(Lnr/e;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/transsion/shorttv/bean/Subject;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v4, v5

    .line 28
    :goto_0
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v8, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v4, v5

    .line 42
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v10, "updateShortTvInfo:"

    .line 48
    .line 49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v8, " subjectId:"

    .line 56
    .line 57
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/4 v8, 0x1

    .line 68
    invoke-virtual {v6, v7, v4, v8}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const-string v7, "onPageSelect position:"

    .line 76
    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v9, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    .line 82
    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v9, " item is locked"

    .line 95
    .line 96
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v6, v4, v9, v8}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 107
    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lcom/transsion/shorttv/bean/Subject;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    move-object v4, v5

    .line 124
    :goto_2
    if-eqz v4, :cond_3

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    const/4 v9, 0x2

    .line 131
    if-ne v6, v9, :cond_3

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-lez v4, :cond_3

    .line 138
    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J0()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    if-eqz v1, :cond_4

    .line 144
    .line 145
    invoke-interface/range {p1 .. p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 146
    .line 147
    .line 148
    :cond_4
    invoke-direct {v0, v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K0(Lnr/e;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W()V

    .line 153
    .line 154
    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    .line 156
    .line 157
    .line 158
    :goto_3
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 159
    .line 160
    if-eqz v4, :cond_9

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u0()Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_9

    .line 167
    .line 168
    if-eqz v3, :cond_6

    .line 169
    .line 170
    invoke-virtual/range {p3 .. p3}, Lnr/e;->e()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    goto :goto_4

    .line 175
    :cond_6
    move-object v6, v5

    .line 176
    :goto_4
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Landroidx/lifecycle/b0;

    .line 181
    .line 182
    if-eqz v4, :cond_9

    .line 183
    .line 184
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Ljava/util/List;

    .line 189
    .line 190
    if-eqz v4, :cond_9

    .line 191
    .line 192
    check-cast v4, Ljava/lang/Iterable;

    .line 193
    .line 194
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_8

    .line 203
    .line 204
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    move-object v9, v6

    .line 209
    check-cast v9, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 210
    .line 211
    if-eqz v3, :cond_7

    .line 212
    .line 213
    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    invoke-virtual/range {p3 .. p3}, Lnr/e;->c()I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-ne v9, v10, :cond_7

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    move-object v6, v5

    .line 225
    :goto_5
    check-cast v6, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 226
    .line 227
    if-eqz v6, :cond_9

    .line 228
    .line 229
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    if-eqz v4, :cond_9

    .line 234
    .line 235
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    goto :goto_6

    .line 240
    :cond_9
    move-object v4, v5

    .line 241
    :goto_6
    if-eqz v3, :cond_a

    .line 242
    .line 243
    invoke-virtual/range {p3 .. p3}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    if-eqz v6, :cond_a

    .line 248
    .line 249
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    if-eqz v6, :cond_a

    .line 254
    .line 255
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    goto :goto_7

    .line 260
    :cond_a
    move-object v6, v5

    .line 261
    :goto_7
    if-nez v4, :cond_c

    .line 262
    .line 263
    if-nez v6, :cond_b

    .line 264
    .line 265
    return-void

    .line 266
    :cond_b
    move-object v4, v6

    .line 267
    :cond_c
    invoke-static/range {p3 .. p3}, Lnr/l;->b(Lnr/e;)Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-eqz v6, :cond_e

    .line 272
    .line 273
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 274
    .line 275
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    .line 278
    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v4, " item is null "

    .line 291
    .line 292
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-virtual {v2, v3, v4, v8}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    .line 301
    .line 302
    if-eqz v1, :cond_d

    .line 303
    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 305
    .line 306
    .line 307
    :cond_d
    return-void

    .line 308
    :cond_e
    if-eqz v1, :cond_f

    .line 309
    .line 310
    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 311
    .line 312
    .line 313
    :cond_f
    if-eqz v2, :cond_11

    .line 314
    .line 315
    if-eqz v3, :cond_10

    .line 316
    .line 317
    invoke-virtual/range {p3 .. p3}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    if-eqz v6, :cond_10

    .line 322
    .line 323
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    if-eqz v6, :cond_10

    .line 328
    .line 329
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    goto :goto_8

    .line 334
    :cond_10
    move-object v6, v5

    .line 335
    :goto_8
    invoke-direct {v0, v2, v6}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/bean/Video;)V

    .line 336
    .line 337
    .line 338
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 339
    .line 340
    iget-object v10, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 341
    .line 342
    const/4 v13, 0x4

    .line 343
    const/4 v14, 0x0

    .line 344
    const-string v11, "addView-----"

    .line 345
    .line 346
    const/4 v12, 0x0

    .line 347
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_11
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 356
    .line 357
    iget-object v10, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    new-instance v12, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v13, "play url="

    .line 381
    .line 382
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v6, "  width:"

    .line 389
    .line 390
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v6, ",height:"

    .line 397
    .line 398
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v6, ", duration: "

    .line 405
    .line 406
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v6, ", builtIn = false"

    .line 413
    .line 414
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    const/4 v13, 0x4

    .line 422
    const/4 v14, 0x0

    .line 423
    const/4 v12, 0x0

    .line 424
    move-object v9, v2

    .line 425
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    if-eqz v6, :cond_1c

    .line 433
    .line 434
    if-eqz v3, :cond_14

    .line 435
    .line 436
    invoke-virtual/range {p3 .. p3}, Lnr/e;->c()I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    iget-object v9, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 441
    .line 442
    if-eqz v9, :cond_12

    .line 443
    .line 444
    invoke-virtual {v9, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L(I)V

    .line 445
    .line 446
    .line 447
    :cond_12
    iget-object v9, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 448
    .line 449
    if-eqz v9, :cond_13

    .line 450
    .line 451
    invoke-virtual {v9, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W(I)J

    .line 452
    .line 453
    .line 454
    move-result-wide v9

    .line 455
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    goto :goto_9

    .line 460
    :cond_13
    move-object v7, v5

    .line 461
    :goto_9
    if-eqz v7, :cond_14

    .line 462
    .line 463
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 464
    .line 465
    .line 466
    move-result-wide v9

    .line 467
    :goto_a
    move-wide v13, v9

    .line 468
    goto :goto_b

    .line 469
    :cond_14
    const-wide/16 v9, 0x0

    .line 470
    .line 471
    goto :goto_a

    .line 472
    :goto_b
    instance-of v7, v1, Lpn/f;

    .line 473
    .line 474
    if-eqz v7, :cond_15

    .line 475
    .line 476
    move-object v5, v1

    .line 477
    check-cast v5, Lpn/f;

    .line 478
    .line 479
    :cond_15
    if-eqz v5, :cond_16

    .line 480
    .line 481
    invoke-interface {v5}, Lpn/f;->b()Ljava/util/Map;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    if-eqz v5, :cond_16

    .line 486
    .line 487
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    goto :goto_c

    .line 492
    :cond_16
    move v5, v8

    .line 493
    :goto_c
    if-nez v5, :cond_1a

    .line 494
    .line 495
    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 496
    .line 497
    if-eqz v7, :cond_17

    .line 498
    .line 499
    invoke-virtual {v7, v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    .line 500
    .line 501
    .line 502
    :cond_17
    new-instance v7, Lgn/e;

    .line 503
    .line 504
    if-eqz v3, :cond_18

    .line 505
    .line 506
    invoke-virtual/range {p3 .. p3}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    if-eqz v3, :cond_18

    .line 511
    .line 512
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    :goto_d
    move/from16 v18, v3

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_18
    const/4 v3, 0x0

    .line 520
    goto :goto_d

    .line 521
    :goto_e
    const/16 v21, 0x18

    .line 522
    .line 523
    const/16 v22, 0x0

    .line 524
    .line 525
    const/16 v19, 0x0

    .line 526
    .line 527
    const/16 v20, 0x0

    .line 528
    .line 529
    move-object v15, v7

    .line 530
    move-object/from16 v16, v6

    .line 531
    .line 532
    move-object/from16 v17, v6

    .line 533
    .line 534
    invoke-direct/range {v15 .. v22}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 535
    .line 536
    .line 537
    move-object v3, v1

    .line 538
    check-cast v3, Lpn/f;

    .line 539
    .line 540
    if-eqz v3, :cond_19

    .line 541
    .line 542
    invoke-interface {v3, v7}, Lcom/transsion/player/orplayer/f;->addDataSource(Lgn/e;)Z

    .line 543
    .line 544
    .line 545
    :cond_19
    if-eqz v3, :cond_1a

    .line 546
    .line 547
    invoke-interface {v3}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 548
    .line 549
    .line 550
    :cond_1a
    iget-object v10, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    const-string v7, "------seekTo resolution:"

    .line 562
    .line 563
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v3, ",url="

    .line 570
    .line 571
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v3, ", cachedProgress="

    .line 578
    .line 579
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    filled-new-array {v3}, [Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v11

    .line 593
    const/4 v3, 0x4

    .line 594
    const/4 v4, 0x0

    .line 595
    const/4 v12, 0x0

    .line 596
    move-object v9, v2

    .line 597
    move-wide v7, v13

    .line 598
    move v13, v3

    .line 599
    move-object v14, v4

    .line 600
    invoke-static/range {v9 .. v14}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    if-eqz v1, :cond_1b

    .line 604
    .line 605
    invoke-interface {v1, v6, v7, v8}, Lcom/transsion/player/orplayer/f;->seekTo(Ljava/lang/String;J)V

    .line 606
    .line 607
    .line 608
    :cond_1b
    invoke-virtual {v0, v6}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    if-nez v5, :cond_1c

    .line 612
    .line 613
    new-instance v1, Lcom/transsion/shorttv/ui/widget/v0;

    .line 614
    .line 615
    invoke-direct {v1, v0}, Lcom/transsion/shorttv/ui/widget/v0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 619
    .line 620
    .line 621
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    .line 622
    .line 623
    .line 624
    return-void
.end method

.method public final updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_locked_watch_ad_unlock_static:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "getString(...)"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " \u00b7 "

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "s"

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method public final videoStartPrepare(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "pageFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lwr/c;->q(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-string v1, "immersive_play"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lwr/c;->o(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1, v1}, Lwr/c;->u(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move v1, v0

    .line 54
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Lwr/c;->m(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1, p0, v0}, Lwr/c;->g(Landroid/view/View;Z)V

    .line 66
    .line 67
    .line 68
    :cond_5
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1, v0, v0}, Lwr/c;->a(II)V

    .line 73
    .line 74
    .line 75
    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 76
    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lwr/c;->s(Ljava/lang/Integer;)V

    .line 82
    .line 83
    .line 84
    :cond_7
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lwr/c;

    .line 85
    .line 86
    if-eqz p1, :cond_8

    .line 87
    .line 88
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s:Z

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lwr/c;->n(Z)V

    .line 91
    .line 92
    .line 93
    :cond_8
    const/4 p1, 0x1

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 98
    .line 99
    if-eqz p1, :cond_9

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T0()V

    .line 102
    .line 103
    .line 104
    :cond_9
    return-void
.end method

.method public final watchAdToUnlock$shortTvLib_release(Z)V
    .locals 12

    .line 1
    sget-object v0, Lwr/b;->a:Lwr/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v4

    .line 33
    :goto_1
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const-string p1, "auto"

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const-string p1, "manual"

    .line 39
    .line 40
    :goto_2
    const-string v5, "minitv_ad"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v3, v5, p1}, Lwr/b;->h(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 46
    .line 47
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    sget-object p1, Ljr/b;->a:Ljr/b$a;

    .line 54
    .line 55
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 70
    .line 71
    if-eqz p1, :cond_e

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    move-object p1, v2

    .line 81
    :goto_3
    if-nez p1, :cond_5

    .line 82
    .line 83
    goto/16 :goto_8

    .line 84
    .line 85
    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "getViewLifecycleOwner(...)"

    .line 90
    .line 91
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    move-object v7, v0

    .line 110
    goto :goto_6

    .line 111
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 116
    .line 117
    if-eqz v1, :cond_8

    .line 118
    .line 119
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_8
    move-object v0, v2

    .line 123
    :goto_5
    if-nez v0, :cond_6

    .line 124
    .line 125
    return-void

    .line 126
    :goto_6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    sget v1, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    move-object v10, v0

    .line 139
    goto :goto_7

    .line 140
    :cond_9
    move-object v10, v2

    .line 141
    :goto_7
    if-eqz v10, :cond_a

    .line 142
    .line 143
    invoke-virtual {v10, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    .line 145
    .line 146
    :cond_a
    iget-object v11, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 149
    .line 150
    if-eqz v0, :cond_b

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    invoke-static {v0, v4, v1, v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_b
    new-instance v0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 157
    .line 158
    const-string v1, "ShortTvPlayerUnlockPlayScene"

    .line 159
    .line 160
    invoke-direct {v0, v1, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 164
    .line 165
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 166
    .line 167
    if-eqz p1, :cond_c

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_c

    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    move-object v2, p1

    .line 180
    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    .line 181
    .line 182
    :cond_c
    move-object v8, v2

    .line 183
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Lnr/e;

    .line 184
    .line 185
    if-eqz p1, :cond_d

    .line 186
    .line 187
    invoke-virtual {p1}, Lnr/e;->c()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    :cond_d
    move v9, v4

    .line 192
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 193
    .line 194
    if-eqz p1, :cond_e

    .line 195
    .line 196
    new-instance v0, Lcom/transsion/shorttv/ui/widget/u0;

    .line 197
    .line 198
    move-object v5, v0

    .line 199
    move-object v6, p0

    .line 200
    invoke-direct/range {v5 .. v11}, Lcom/transsion/shorttv/ui/widget/u0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Lnr/e;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->t(Lkotlin/jvm/functions/Function3;)V

    .line 204
    .line 205
    .line 206
    :cond_e
    :goto_8
    return-void
.end method
