.class public final Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JC\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004*\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ+\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006*\u0008\u0012\u0004\u0012\u00020\u00070\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000cJ\u001d\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J!\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J)\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J1\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJA\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00060\u0004*\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010#\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008#\u0010$J+\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J5\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0008\u0010(\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0015\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008-\u0010,J-\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0008\u0010/\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u00080\u0010\u000cJ;\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0010(\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u00083\u00104J3\u00106\u001a\u00020\u00112\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u00105\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00086\u00107J-\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006*\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0006H\u0002\u00a2\u0006\u0004\u00088\u00109J[\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u001a\u0010:\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u001a\u0010;\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008<\u0010=J7\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008<\u00109J\u0019\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010>\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0019\u0010C\u001a\u0004\u0018\u00010?2\u0006\u0010B\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u0017\u0010G\u001a\u0004\u0018\u00010\u00072\u0006\u0010F\u001a\u00020E\u00a2\u0006\u0004\u0008G\u0010HJ)\u0010J\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020I\u00a2\u0006\u0004\u0008J\u0010KJ)\u0010M\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020L\u00a2\u0006\u0004\u0008M\u0010NJ)\u0010P\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020O\u00a2\u0006\u0004\u0008P\u0010QJ)\u0010S\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020R\u00a2\u0006\u0004\u0008S\u0010TJ\'\u0010V\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010F\u001a\u00020U\u00a2\u0006\u0004\u0008V\u0010WJ)\u0010Y\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020X\u00a2\u0006\u0004\u0008Y\u0010ZJ)\u0010\\\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020[\u00a2\u0006\u0004\u0008\\\u0010]J)\u0010_\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020^\u00a2\u0006\u0004\u0008_\u0010`J)\u0010b\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020a\u00a2\u0006\u0004\u0008b\u0010cJ)\u0010e\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020d\u00a2\u0006\u0004\u0008e\u0010fJ)\u0010h\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020g\u00a2\u0006\u0004\u0008h\u0010iJ\u0015\u0010k\u001a\u00020\u00052\u0006\u0010F\u001a\u00020j\u00a2\u0006\u0004\u0008k\u0010lJ\u0015\u0010n\u001a\u00020\u00052\u0006\u0010F\u001a\u00020m\u00a2\u0006\u0004\u0008n\u0010oJ\u001b\u0010q\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u0010F\u001a\u00020p\u00a2\u0006\u0004\u0008q\u0010rJ\u0015\u0010t\u001a\u00020\u00052\u0006\u0010F\u001a\u00020s\u00a2\u0006\u0004\u0008t\u0010uJ\u0015\u0010w\u001a\u00020\u00052\u0006\u0010F\u001a\u00020v\u00a2\u0006\u0004\u0008w\u0010xJ\u0015\u0010z\u001a\u00020\u00052\u0006\u0010F\u001a\u00020y\u00a2\u0006\u0004\u0008z\u0010{J\u001b\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u0010F\u001a\u00020|\u00a2\u0006\u0004\u0008}\u0010~J\u0018\u0010\u0080\u0001\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u007f\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u0019\u0010\u0083\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u0082\u0001\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u001f\u0010\u0086\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0007\u0010F\u001a\u00030\u0085\u0001\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u0019\u0010\u0089\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u0088\u0001\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J\u0019\u0010\u008c\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u008b\u0001\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J\u0019\u0010\u008f\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u008e\u0001\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u0013\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0091\u0001\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0007\u0010F\u001a\u00030\u0094\u0001\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0091\u00012\u0007\u0010F\u001a\u00030\u0098\u0001\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J$\u0010\u009b\u0001\u001a\u0017\u0012\u0004\u0012\u00020\u0005\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0091\u00010\u0006\u0018\u00010\u0004\u00a2\u0006\u0005\u0008\u009b\u0001\u0010\u0016J\u0019\u0010\u009d\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u009c\u0001\u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u009e\u0001J\u0019\u0010\u00a0\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u009f\u0001\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\u001f\u0010\u00a3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0007\u0010F\u001a\u00030\u00a2\u0001\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001J\u0019\u0010\u00a6\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u00a5\u0001\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001J\u0019\u0010\u00a9\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u00a8\u0001\u00a2\u0006\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001J\u001f\u0010\u00ac\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00062\u0007\u0010F\u001a\u00030\u00ab\u0001\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001J\u001b\u0010\u00af\u0001\u001a\u0004\u0018\u00010?2\u0007\u0010F\u001a\u00030\u00ae\u0001\u00a2\u0006\u0006\u0008\u00af\u0001\u0010\u00b0\u0001J-\u0010\u00b1\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020?0\u0006\u0018\u00010\u00042\u0007\u0010F\u001a\u00030\u00ae\u0001\u00a2\u0006\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001J\u001d\u0010\u00b4\u0001\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020?0\u00060\u00b3\u0001\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001J\u001a\u0010\u00b8\u0001\u001a\u00020\u00052\u0008\u0010\u00b7\u0001\u001a\u00030\u00b6\u0001\u00a2\u0006\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001J\u001a\u0010\u00bb\u0001\u001a\u00020\u00052\u0008\u0010\u00b7\u0001\u001a\u00030\u00ba\u0001\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001J\u001b\u0010\u00be\u0001\u001a\u0004\u0018\u00010\u00072\u0007\u0010F\u001a\u00030\u00bd\u0001\u00a2\u0006\u0006\u0008\u00be\u0001\u0010\u00bf\u0001J\u001c\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u00b7\u0001\u001a\u00030\u00c0\u0001\u00a2\u0006\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001J\u001a\u0010\u00c4\u0001\u001a\u00020\u00052\u0008\u0010\u00b7\u0001\u001a\u00030\u00c3\u0001\u00a2\u0006\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u0017\u0010\u00c6\u0001\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R!\u0010\u00cd\u0001\u001a\u00030\u00c8\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R!\u0010\u00d2\u0001\u001a\u00030\u00ce\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00cf\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001R!\u0010\u00d7\u0001\u001a\u00030\u00d3\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d4\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001R!\u0010\u00dc\u0001\u001a\u00030\u00d8\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d9\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00da\u0001\u0010\u00db\u0001R!\u0010\u00e1\u0001\u001a\u00030\u00dd\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00de\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00df\u0001\u0010\u00e0\u0001R!\u0010\u00e6\u0001\u001a\u00030\u00e2\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e3\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R!\u0010\u00eb\u0001\u001a\u00030\u00e7\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e8\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001R!\u0010\u00f0\u0001\u001a\u00030\u00ec\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ed\u0001\u0010\u00ca\u0001\u001a\u0006\u0008\u00ee\u0001\u0010\u00ef\u0001\u00a8\u0006\u00f1\u0001"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;",
        "",
        "<init>",
        "()V",
        "Lkotlin/Pair;",
        "",
        "",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "",
        "manual",
        "finallySortAudioItems",
        "(Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;",
        "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;",
        "audioItems",
        "Lzfb;",
        "processRecentAddedItems",
        "(Ljava/util/List;)V",
        "",
        "combineMVList",
        "queryAllAudioList",
        "(Z)Lkotlin/Pair;",
        "queryAllMVList",
        "()Lkotlin/Pair;",
        "queryAllAudioFilteredList",
        "queryPlayHistory",
        "playCount",
        "queryFrequently",
        "(IZ)Lkotlin/Pair;",
        "",
        "keyAsTheName",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "toMediaBuckets",
        "(Ljava/util/Map;Z)Lkotlin/Pair;",
        "bucket",
        "item",
        "queryAudioItemCover",
        "(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "mediaIds",
        "handleExclusionCase",
        "(Ljava/util/List;Z)Ljava/util/List;",
        "displayName",
        "handleInclusionCase",
        "(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;",
        "getBaseAudioList",
        "()Ljava/util/List;",
        "getFullMVList",
        "ids",
        "name",
        "queryAudioItems",
        "originalIds",
        "existingItems",
        "queryMissingMVItems",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;",
        "combineFlag",
        "needCombineMV",
        "(Ljava/util/List;Ljava/util/List;Z)Z",
        "filterNotInIds",
        "(Ljava/util/List;Ljava/util/List;)Ljava/util/List;",
        "audio",
        "mv",
        "combineResults",
        "(Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;",
        "mediaId",
        "Lqe6;",
        "getByMediaId",
        "(I)Lqe6;",
        "mediaPath",
        "getByMediaPath",
        "(Ljava/lang/String;)Lqe6;",
        "Lxk8$x;",
        "action",
        "querySingle",
        "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lxk8$c;",
        "queryAllMediaList",
        "(Lxk8$c;)Lkotlin/Pair;",
        "Lxk8$l;",
        "queryFilteredMediaList",
        "(Lxk8$l;)Lkotlin/Pair;",
        "Lxk8$o;",
        "queryMediaListByMediaIds",
        "(Lxk8$o;)Lkotlin/Pair;",
        "Lxk8$e;",
        "queryAudioConvertedMediaList",
        "(Lxk8$e;)Lkotlin/Pair;",
        "Lxk8$a;",
        "queryAIList",
        "(Lxk8$a;)Lkotlin/Pair;",
        "Lxk8$u;",
        "queryPlayListMedia",
        "(Lxk8$u;)Lkotlin/Pair;",
        "Lxk8$b;",
        "queryAlbumArtistMediaList",
        "(Lxk8$b;)Lkotlin/Pair;",
        "Lxk8$i;",
        "queryBucketMediaList",
        "(Lxk8$i;)Lkotlin/Pair;",
        "Lxk8$p;",
        "queryParentPathMediaList",
        "(Lxk8$p;)Lkotlin/Pair;",
        "Lxk8$r;",
        "queryTitleMediaList",
        "(Lxk8$r;)Lkotlin/Pair;",
        "Lxk8$w;",
        "search",
        "(Lxk8$w;)Lkotlin/Pair;",
        "Lb15$e;",
        "createPlayList",
        "(Lb15$e;)I",
        "Lb15$f;",
        "addPlayListElement",
        "(Lb15$f;)I",
        "Lb15$g;",
        "addPlayListElements",
        "(Lb15$g;)Ljava/util/List;",
        "Lb15$j;",
        "addAudioMV",
        "(Lb15$j;)I",
        "Ld82$g;",
        "deletePlayList",
        "(Ld82$g;)I",
        "Ld82$h;",
        "deletePlayListElement",
        "(Ld82$h;)I",
        "Ld82$i;",
        "deletePlayListElements",
        "(Ld82$i;)Ljava/util/List;",
        "Ld82$m;",
        "deleteAudioMV",
        "(Ld82$m;)I",
        "Ld82$k;",
        "deleteSystemMediaItem",
        "(Ld82$k;)I",
        "Ld82$l;",
        "deleteSystemMediaItems",
        "(Ld82$l;)Ljava/util/List;",
        "Lngb$d;",
        "updatePlayListName",
        "(Lngb$d;)I",
        "Lngb$e;",
        "updateSystemMediaItemName",
        "(Lngb$e;)I",
        "Lngb$a;",
        "updatePlayRecord",
        "(Lngb$a;)I",
        "Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "queryFavoritePlayListItem",
        "()Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "Lxk8$t;",
        "Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "queryPlayMediaListItem",
        "(Lxk8$t;)Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "Lxk8$s;",
        "queryPlayListItem",
        "(Lxk8$s;)Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "queryAllPlayList",
        "Ld82$e;",
        "deletePlayHistoryElement",
        "(Ld82$e;)I",
        "Ld82$c;",
        "deletePlayFrequentlyElement",
        "(Ld82$c;)I",
        "Ld82$f;",
        "deletePlayHistoryElements",
        "(Ld82$f;)Ljava/util/List;",
        "Lb15$d;",
        "smartUpdatePlayCount",
        "(Lb15$d;)I",
        "Lngb$b;",
        "upsertMediaDataMissingSingle",
        "(Lngb$b;)I",
        "Lngb$c;",
        "upsertMediaDataMissingMultiple",
        "(Lngb$c;)Ljava/util/List;",
        "Lxk8$n;",
        "getByMediaIdOrPath",
        "(Lxk8$n;)Lqe6;",
        "getAllMissingData",
        "(Lxk8$n;)Lkotlin/Pair;",
        "Landroidx/lifecycle/LiveData;",
        "observeAllMissingData",
        "()Landroidx/lifecycle/LiveData;",
        "Ld82$a;",
        "input",
        "deleteAudioConvertedElement",
        "(Ld82$a;)I",
        "Lb15$a;",
        "addAudioConvertedElement",
        "(Lb15$a;)I",
        "Lxk8$m;",
        "querySingleMV",
        "(Lxk8$m;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lxk8$f;",
        "queryLyricOffset",
        "(Lxk8$f;)Ljava/lang/String;",
        "Lb15$b;",
        "insertLyricOffset",
        "(Lb15$b;)I",
        "TAG",
        "Ljava/lang/String;",
        "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository$delegate",
        "Lyi5;",
        "getMAudioQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository$delegate",
        "getMAudioMVRepository",
        "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository",
        "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;",
        "mPlayListRepository$delegate",
        "getMPlayListRepository",
        "()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;",
        "mPlayListRepository",
        "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;",
        "mVideoRecordRepository$delegate",
        "getMVideoRecordRepository",
        "()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;",
        "mVideoRecordRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;",
        "mAudioPlayRecordRepository$delegate",
        "getMAudioPlayRecordRepository",
        "()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;",
        "mAudioPlayRecordRepository",
        "Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;",
        "mMediaDataMissingRepository$delegate",
        "getMMediaDataMissingRepository",
        "()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;",
        "mMediaDataMissingRepository",
        "Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;",
        "mMediaConvertRepository$delegate",
        "getMMediaConvertRepository",
        "()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;",
        "mMediaConvertRepository",
        "Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;",
        "mUserBehaviorRepository$delegate",
        "getMUserBehaviorRepository",
        "()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;",
        "mUserBehaviorRepository",
        "dbdata_release"
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
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

.field private static final TAG:Ljava/lang/String; = "AudioRepositoryDelegate"

.field private static final mAudioMVRepository$delegate:Lyi5;

.field private static final mAudioPlayRecordRepository$delegate:Lyi5;

.field private static final mAudioQueryRepository$delegate:Lyi5;

.field private static final mMediaConvertRepository$delegate:Lyi5;

.field private static final mMediaDataMissingRepository$delegate:Lyi5;

.field private static final mPlayListRepository$delegate:Lyi5;

.field private static final mUserBehaviorRepository$delegate:Lyi5;

.field private static final mVideoRecordRepository$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    new-instance v0, Lnz;

    invoke-direct {v0}, Lnz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioQueryRepository$delegate:Lyi5;

    new-instance v0, Loz;

    invoke-direct {v0}, Loz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioMVRepository$delegate:Lyi5;

    new-instance v0, Lpz;

    invoke-direct {v0}, Lpz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mPlayListRepository$delegate:Lyi5;

    new-instance v0, Lqz;

    invoke-direct {v0}, Lqz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mVideoRecordRepository$delegate:Lyi5;

    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioPlayRecordRepository$delegate:Lyi5;

    new-instance v0, Lsz;

    invoke-direct {v0}, Lsz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mMediaDataMissingRepository$delegate:Lyi5;

    new-instance v0, Ltz;

    invoke-direct {v0}, Ltz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mMediaConvertRepository$delegate:Lyi5;

    new-instance v0, Lkz;

    invoke-direct {v0}, Lkz;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mUserBehaviorRepository$delegate:Lyi5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mUserBehaviorRepository_delegate$lambda$7()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$combineResults(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->combineResults(Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$finallySortAudioItems(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems(Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAudioMVRepository(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAudioQueryRepository(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRecentAddedItems(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->processRecentAddedItems(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$queryAllAudioFilteredList(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAllAudioFilteredList()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryAllAudioList(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Z)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAllAudioList(Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryAllMVList(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAllMVList()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryFrequently(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;IZ)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryFrequently(IZ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryPlayHistory(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Z)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryPlayHistory(Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioPlayRecordRepository_delegate$lambda$4()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioMVRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method private final combineResults(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Ljava/util/Collection;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final combineResults(Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static synthetic d()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mVideoRecordRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(JLcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->processRecentAddedItems$lambda$11(JLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mMediaConvertRepository_delegate$lambda$6()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object v0

    return-object v0
.end method

.method private final filterNotInIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private final finallySortAudioItems(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->c()Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object p0

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne p0, v0, :cond_2

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p0, p2}, Lt55;->n(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 7
    invoke-static {p0, p2, p1, p2}, Lt55;->o(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-object p0

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final finallySortAudioItems(Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, p0, v0, p2}, Lkotlin/Pair;->copy$default(Lkotlin/Pair;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems(Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method private final getBaseAudioList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getByMediaId(I)Lqe6;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getByMediaId(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lqe6;->m:Lqe6$a;

    invoke-virtual {p1, p0}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getByMediaPath(Ljava/lang/String;)Lqe6;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lqe6;->m:Lqe6$a;

    invoke-virtual {p1, p0}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getFullMVList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVList(Z)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioMVRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    return-object p0
.end method

.method private final getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioPlayRecordRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    return-object p0
.end method

.method private final getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mAudioQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    return-object p0
.end method

.method private final getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mMediaConvertRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    return-object p0
.end method

.method private final getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mMediaDataMissingRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    return-object p0
.end method

.method private final getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mPlayListRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    return-object p0
.end method

.method private final getMUserBehaviorRepository()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mUserBehaviorRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    return-object p0
.end method

.method private final getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mVideoRecordRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    return-object p0
.end method

.method public static synthetic h()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mPlayListRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v0

    return-object v0
.end method

.method private final handleExclusionCase(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getBaseAudioList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getFullMVList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v0, p2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->filterNotInIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final handleInclusionCase(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAudioItems(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->needCombineMV(Ljava/util/List;Ljava/util/List;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p3, v0

    check-cast p3, Ljava/util/Collection;

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryMissingMVItems(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p3, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static synthetic i(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->observeAllMissingData$lambda$53(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->mMediaDataMissingRepository_delegate$lambda$5()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k(Lcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->processRecentAddedItems$lambda$12(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p0

    return p0
.end method

.method private static final mAudioMVRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioPlayRecordRepository_delegate$lambda$4()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    sget-object v1, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v2

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;-><init>(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;)V

    return-object v0
.end method

.method private static final mAudioQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mMediaConvertRepository_delegate$lambda$6()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mMediaDataMissingRepository_delegate$lambda$5()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;-><init>()V

    return-object v0
.end method

.method private static final mPlayListRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;-><init>()V

    return-object v0
.end method

.method private static final mUserBehaviorRepository_delegate$lambda$7()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    sget-object v1, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v2

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMVideoRecordRepository()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    move-result-object v3

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;-><init>(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)V

    return-object v0
.end method

.method private static final mVideoRecordRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;-><init>()V

    return-object v0
.end method

.method private final needCombineMV(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final observeAllMissingData$lambda$53(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;
    .locals 3

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    sget-object v2, Lqe6;->m:Lqe6$a;

    invoke-virtual {v2, v1}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final processRecentAddedItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p0, 0x3e8

    int-to-long v2, p0

    div-long/2addr v0, v2

    const p0, 0x93a80

    int-to-long v2, p0

    sub-long/2addr v0, v2

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lx71;->d(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-wide v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p1

    new-instance v2, Ljz;

    invoke-direct {v2, v0, v1}, Ljz;-><init>(J)V

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p1

    new-instance v0, Llz;

    invoke-direct {v0}, Llz;-><init>()V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p1

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateScanRecentAdd(Ljava/util/List;Z)V

    return-void
.end method

.method private static final processRecentAddedItems$lambda$11(JLcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final processRecentAddedItems$lambda$12(Lcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    return p0
.end method

.method private final queryAllAudioFilteredList()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVList(Z)Ljava/util/List;

    move-result-object p0

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4, v1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->addFilterLabel(Ljava/util/List;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final queryAllAudioList(Z)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;-><init>(ZLwh1;)V

    const/4 p1, 0x1

    invoke-static {v0, p0, p1, v0}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method private final queryAllMVList()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVList(Z)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final queryAudioItemCover(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object p0

    iget v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, v0}, Lsl;->getAudioAlbum(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    if-nez v0, :cond_2

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_3

    :cond_2
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method private final queryAudioItems(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final queryFrequently(IZ)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->queryFrequently(IZ)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final queryMissingMVItems(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final queryPlayHistory(Z)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->queryAll(Z)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final toMediaBuckets(Ljava/util/Map;Z)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->toAudioBucket(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v3

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-direct {v0, v3, v2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAudioItemCover(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toMediaBuckets$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Ljava/util/Map;ZILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->toMediaBuckets(Ljava/util/Map;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addAudioConvertedElement(Lb15$a;)I
    .locals 4

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p1}, Lb15$a;->b()I

    move-result v0

    invoke-virtual {p1}, Lb15$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb15$a;->a()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->addConvertedAudioItem(ILjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public final addAudioMV(Lb15$j;)I
    .locals 0

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$j;->a()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-direct {p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->insertSingleByUser(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final addPlayListElement(Lb15$f;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->addPlayListElement(Lb15$f;)I

    move-result p0

    return p0
.end method

.method public final addPlayListElements(Lb15$g;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb15$g;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lb15$g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->addPlayListElements(Lb15$g;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final createPlayList(Lb15$e;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb15$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Lb15$e;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->createPlayList(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final deleteAudioConvertedElement(Ld82$a;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$a;->a()I

    move-result v0

    invoke-virtual {p1}, Ld82$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->deleteConvertedAudioItem(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deleteAudioMV(Ld82$m;)I
    .locals 0

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final deletePlayFrequentlyElement(Ld82$c;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$c;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ld82$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->deletePlayFrequentlyElement(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deletePlayHistoryElement(Ld82$e;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$e;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ld82$e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->deleteByMediaId(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deletePlayHistoryElements(Ld82$f;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$f;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$f;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->deleteMultiple(Ljava/util/List;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final deletePlayList(Ld82$g;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Ld82$g;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayList(J)I

    move-result p0

    return p0
.end method

.method public final deletePlayListElement(Ld82$h;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$h;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ld82$h;->b()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayListElement(Ld82$h;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final deletePlayListElements(Ld82$i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$i;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$i;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ld82$i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayListElements(Ld82$i;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final deleteSystemMediaItem(Ld82$k;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMUserBehaviorRepository()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->deleteSystemMediaItem(Ld82$k;)I

    move-result p0

    return p0
.end method

.method public final deleteSystemMediaItems(Ld82$l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$l;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMUserBehaviorRepository()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->deleteSystemMediaItems(Ld82$l;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAllMissingData(Lxk8$n;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$n;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lqe6;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getAllMissingData()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    sget-object v1, Lqe6;->m:Lqe6$a;

    invoke-virtual {v1, v0}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getByMediaIdOrPath(Lxk8$n;)Lqe6;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$n;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxk8$n;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getByMediaId(I)Lqe6;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lxk8$n;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lxk8$n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getByMediaPath(Ljava/lang/String;)Lqe6;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final insertLyricOffset(Lb15$b;)I
    .locals 2

    const-string p0, "input"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->c()Lav5;

    move-result-object p0

    new-instance v0, Lcom/transsion/dbdata/beans/LyricData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/LyricData;-><init>()V

    invoke-virtual {p1}, Lb15$b;->a()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/LyricData;->media_id:I

    invoke-virtual {p1}, Lb15$b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/LyricData;->_data:Ljava/lang/String;

    invoke-virtual {p1}, Lb15$b;->b()I

    move-result p1

    iput p1, v0, Lcom/transsion/dbdata/beans/LyricData;->offset:I

    invoke-interface {p0, v0}, Lav5;->insert(Lcom/transsion/dbdata/beans/LyricData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final observeAllMissingData()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lqe6;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->observeAllMissingData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    new-instance v1, Lmz;

    invoke-direct {v1, v0}, Lmz;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    new-instance v2, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$sam$androidx_lifecycle_Observer$0;-><init>(Le74;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-object v0
.end method

.method public final queryAIList(Lxk8$a;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$a;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lxk8$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lxk8$a;->d()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAIAudioByMultiConditions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    const/16 v0, 0x16

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v4, v2, v1, v2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final queryAlbumArtistMediaList(Lxk8$b;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$b;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByAlbumArtist(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lxk8$b;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_4

    sget-object v4, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-direct {v4}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAlbumArtistMVList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    const/4 v5, 0x0

    invoke-static {v0, v5, v5, v1, v2}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-direct {v4, v3, v0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->combineResults(Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v0

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lxk8$b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems(Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public final queryAllMediaList(Lxk8$c;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$c;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$c;->e()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, " ms"

    const-string v2, "AudioRepositoryDelegate"

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-virtual {p1}, Lxk8$c;->f()I

    move-result v0

    invoke-virtual {p1}, Lxk8$c;->b()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$queryFrequently(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;IZ)Lkotlin/Pair;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The queryFrequently function takes "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v3, p0

    goto/16 :goto_1

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-virtual {p1}, Lxk8$c;->b()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$queryPlayHistory(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Z)Lkotlin/Pair;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The queryPlayHistory function takes "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sget-object v4, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {v4}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$queryAllAudioFilteredList(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v4, v5, v3, v0, v3}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The queryAllAudioFilteredList function takes "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sget-object v4, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {v4}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$queryAllMVList(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v4, v5, v3, v0, v3}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The queryAllMVList function takes "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-virtual {p1}, Lxk8$c;->b()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$queryAllAudioList(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Z)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$finallySortAudioItems(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The queryAllAudioList function takes "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_1
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x205
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryAllPlayList()Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryRecent()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryRecentMVList()Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateScanRecentAdd(Ljava/util/List;Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v3

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getPlayListFolderSet$default(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Ly71;->u()V

    :cond_1
    check-cast v5, Lcom/transsion/dbdata/database/PlayListFolderItem;

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    const/16 v8, 0x21

    goto :goto_2

    :cond_3
    const/16 v8, 0x29

    :goto_2
    invoke-virtual {v5, v8}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setListFlag(I)V

    const/4 v8, 0x0

    if-nez v4, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setCount(I)V

    move-object v4, v0

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-direct {v4}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v4

    invoke-virtual {v5}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10, v8, v7}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getAudioPlayListElement(JLjava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v4, :cond_7

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object v9

    iget v10, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v9, v10}, Lsl;->getAudioAlbum(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v9, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v5, v7}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setCustomCover(Z)V

    invoke-virtual {v5, v7}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setUriType(I)V

    :cond_6
    if-nez v8, :cond_7

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v8, v4

    :cond_7
    invoke-virtual {v5, v8}, Lcom/transsion/dbdata/database/PlayListFolderItem;->setUri(Landroid/net/Uri;)V

    move v4, v6

    goto :goto_1

    :cond_8
    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final queryAudioConvertedMediaList(Lxk8$e;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$e;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaConvertRepository()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$e;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->queryConvertedAudioList(I)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryBucketMediaList(Lxk8$i;)Lkotlin/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$i;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lxk8$i;->a()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$i;->e()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {v3}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$getMAudioQueryRepository(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v4

    invoke-virtual {p1}, Lxk8$i;->c()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, p0, v2, v5}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByBucket(Ljava/lang/Long;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lxk8$i;->b()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$getMAudioMVRepository(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v4

    invoke-virtual {v4, p0, v2}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryBucketMVList(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v5

    :goto_0
    invoke-virtual {p1}, Lxk8$i;->c()Z

    move-result v2

    const/4 v4, 0x3

    const/4 v12, 0x0

    if-eqz v2, :cond_3

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->manuallyFilterAudio(Ljava/util/List;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    if-eqz p0, :cond_2

    invoke-static {p0, v12, v12, v4, v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v5

    :goto_2
    invoke-static {v3, v2, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$combineResults(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_5

    :cond_3
    if-eqz v6, :cond_4

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v5

    :goto_3
    if-eqz p0, :cond_5

    invoke-static {p0, v12, v12, v4, v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_4

    :cond_5
    move-object p0, v5

    :goto_4
    invoke-static {v3, v2, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$combineResults(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object p0

    :goto_5
    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lxk8$i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$finallySortAudioItems(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v5

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The queryBucketMediaList function takes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioRepositoryDelegate"

    invoke-static {p1, p0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public final queryFavoritePlayListItem()Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->queryFavoriteList(Z)Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    return-object p0
.end method

.method public final queryFilteredMediaList(Lxk8$l;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$l;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$l;->a()I

    move-result p0

    const/16 p1, 0x301

    if-eq p0, p1, :cond_0

    const/16 p1, 0x302

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object p1, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$getMAudioQueryRepository(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;)Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/transsion/dbdata/utils/SortUtil;->j(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudioByFilterType(Ljava/util/List;I)Lkotlin/Pair;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The queryFilteredMediaList function takes "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRepositoryDelegate"

    invoke-static {v0, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final queryLyricOffset(Lxk8$f;)Ljava/lang/String;
    .locals 0

    const-string p0, "input"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->c()Lav5;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$f;->a()I

    move-result p1

    invoke-interface {p0, p1}, Lav5;->queryLyricData(I)Lcom/transsion/dbdata/beans/LyricData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final queryMediaListByMediaIds(Lxk8$o;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$o;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$o;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Lxk8$o;->a()Z

    move-result v2

    invoke-virtual {p1}, Lxk8$o;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->handleExclusionCase(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->handleInclusionCase(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    const/4 v1, 0x1

    invoke-static {v0, p0, v3, v1, v3}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final queryParentPathMediaList(Lxk8$p;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$p;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByParentPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Lxk8$p;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryParentPathMVList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v0, v1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-direct {p0, v2, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->combineResults(Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    const/4 p1, 0x1

    invoke-static {p0, v2, v1, p1, v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems$default(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Lkotlin/Pair;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final queryPlayListItem(Lxk8$s;)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 0

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final queryPlayListMedia(Lxk8$u;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$u;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$u;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryRecent()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$u;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryRecentMVList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v3, v1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->combineResults(Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lxk8$u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems(Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lxk8$u;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lxk8$u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$u;->a()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getAudioPlayListElement(JLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lxk8$u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->finallySortAudioItems(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final queryPlayMediaListItem(Lxk8$t;)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$t;->b()I

    move-result v0

    invoke-virtual {p1}, Lxk8$t;->a()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->getAudioPlayMediaListElement(II)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->querySingleMV(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final querySingleMV(Lxk8$m;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->querySingleMVFromCache(Lxk8$g;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public final queryTitleMediaList(Lxk8$r;)Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$r;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final search(Lxk8$w;)Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$w;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$w;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->getAllByMediaType(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toAudioItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {p1}, Lxk8$w;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->searchMVList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v5, 0x0

    invoke-static {p0, v5, v5, p1, v1}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio$default(Ljava/util/List;ZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v4, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object p1, v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    move-object v4, p0

    check-cast v4, Ljava/lang/Iterable;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lky5;->g(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lwn8;->d(II)I

    move-result v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v7, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v7, v5, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    :cond_4
    iget-object v7, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v7, v1

    :goto_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    iput-object v7, v5, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    goto :goto_1

    :cond_7
    check-cast v2, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-static {v1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-static {p1, v2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_5

    :cond_d
    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v4, "displayName"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    new-instance p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$search$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$search$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_11
    :goto_7
    return-object v1
.end method

.method public final smartUpdatePlayCount(Lb15$d;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMAudioPlayRecordRepository()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    move-result-object p0

    invoke-virtual {p1}, Lb15$d;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lb15$d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->smartUpdatePlayCount(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final updatePlayListName(Lngb$d;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lngb$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMPlayListRepository()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    move-result-object p0

    invoke-virtual {p1}, Lngb$d;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lngb$d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->updatePlayListName(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final updatePlayRecord(Lngb$a;)I
    .locals 0

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final updateSystemMediaItemName(Lngb$e;)I
    .locals 0

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final upsertMediaDataMissingMultiple(Lngb$c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lngb$c;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    const/4 p0, 0x0

    throw p0
.end method

.method public final upsertMediaDataMissingSingle(Lngb$b;)I
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getMMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object p0

    invoke-virtual {p1}, Lngb$b;->a()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->upsertMediaDataMissingSingle(Lcom/transsion/dbdata/beans/media/AudioItem;Z)I

    move-result p0

    return p0
.end method
