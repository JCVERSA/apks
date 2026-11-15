.class public final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
.super Lcom/transsion/transsion_gdpr/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;,
        Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;,
        Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$c;,
        Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$d;,
        Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;,
        Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008.\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 22\u00020\u0001:\u000c\u0097\u0001\u00db\u0001\u009f\u0001\u00a2\u0001\u00a4\u0001\u00a7\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u0017\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0019\u0010$\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008$\u0010\u001aJ\u0019\u0010%\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008%\u0010\u001aJ\u001f\u0010)\u001a\u00020\u00062\u0006\u0010#\u001a\u00020&2\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010,\u001a\u00020\u00062\u0006\u0010#\u001a\u00020+2\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u001f\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u000200H\u0002\u00a2\u0006\u0004\u00082\u00103J3\u00107\u001a\u00020\u00062\u0006\u0010/\u001a\u0002042\u0006\u00101\u001a\u0002002\u0008\u0008\u0001\u00105\u001a\u0002002\u0008\u0008\u0001\u00106\u001a\u000200H\u0002\u00a2\u0006\u0004\u00087\u00108J!\u0010;\u001a\u00020\u00062\u0008\u0010/\u001a\u0004\u0018\u00010\u00102\u0006\u0010:\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u001f\u0010=\u001a\u0002002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008=\u0010>J)\u0010C\u001a\u00020\u00062\u0008\u0010?\u001a\u0004\u0018\u00010\u00102\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010G\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u001f\u0010I\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008I\u0010\u001cJ\'\u0010J\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u001f\u0010M\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008M\u0010\u001cJ+\u0010Q\u001a\u00020\u00062\u0008\u0010O\u001a\u0004\u0018\u00010N2\u0008\u0010P\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008Q\u0010RJ\u001f\u0010T\u001a\u00020S2\u0006\u0010L\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008T\u0010UJ\'\u0010W\u001a\u00020\u00062\u0006\u0010V\u001a\u00020S2\u0006\u0010L\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0003\u00a2\u0006\u0004\u0008W\u0010XJ\u0017\u0010[\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020YH\u0002\u00a2\u0006\u0004\u0008[\u0010\\J!\u0010]\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010Z\u001a\u00020YH\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u0017\u0010_\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008_\u0010\u0017J\u001f\u0010b\u001a\u0002002\u0006\u0010`\u001a\u00020\u00102\u0006\u0010a\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008b\u0010cJ\u001f\u0010d\u001a\u0002002\u0006\u0010`\u001a\u00020\u00102\u0006\u0010a\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008d\u0010cJ\u001f\u0010f\u001a\u0002002\u0006\u0010`\u001a\u00020\u00102\u0006\u0010e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008f\u0010cJ\u0017\u0010i\u001a\u0002092\u0006\u0010h\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008i\u0010jJ\u0017\u0010l\u001a\u0002092\u0006\u0010k\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008l\u0010jJ\u0017\u0010m\u001a\u00020g2\u0006\u0010h\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008m\u0010nJ\u0017\u0010o\u001a\u00020\t2\u0006\u0010h\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\t2\u0006\u0010h\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008q\u0010pJ/\u0010w\u001a\u00020\u00062\u0006\u0010s\u001a\u00020r2\u0006\u0010t\u001a\u00020g2\u0006\u0010u\u001a\u00020g2\u0006\u0010v\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008w\u0010xJ\u000f\u0010y\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008y\u0010\u000bJ\u000f\u0010z\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008z\u0010\u0003J\u0017\u0010{\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008{\u0010|J\u000f\u0010}\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008}\u0010FJ\u000f\u0010~\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008~\u0010\u0003J\u001b\u0010\u0081\u0001\u001a\u00020\u00002\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u0019\u0010\u0083\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0005\u0008\u0083\u0001\u0010\u0008J\u001c\u0010\u0083\u0001\u001a\u00020\u00062\u0008\u0010\u0085\u0001\u001a\u00030\u0084\u0001H\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0086\u0001J/\u0010\u008a\u0001\u001a\u00020\u00062\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u00012\u0008\u0010v\u001a\u0004\u0018\u00010g2\u0007\u0010\u0089\u0001\u001a\u00020\t\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u008b\u0001J\u001e\u0010\u008e\u0001\u001a\u00020\u00062\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001J\u001c\u0010\u0092\u0001\u001a\u00020\u00062\u0008\u0010\u0091\u0001\u001a\u00030\u0090\u0001H\u0017\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\'\u0010\u0095\u0001\u001a\u00020\u00062\u0007\u0010\u0094\u0001\u001a\u00020\t2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0017\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u0096\u0001J\u001b\u0010\u0097\u0001\u001a\u00020S2\u0007\u0010\u0094\u0001\u001a\u00020\tH\u0015\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0098\u0001J\u001b\u0010\u009a\u0001\u001a\u00020\u00062\u0007\u0010V\u001a\u00030\u0099\u0001H\u0016\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0005\u0008\u009c\u0001\u0010\u0003J\u0011\u0010\u009d\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0003J\u0011\u0010\u009e\u0001\u001a\u00020\u0006H\u0016\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0003R\u001b\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0018\u0010\u00a3\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a2\u0001\u0010yR\u001c\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u001b\u0010\u00a9\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u0018\u0010\u00ab\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00aa\u0001\u0010WR\u001b\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u001c\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u001b\u0010\u00b4\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001b\u0010\u00b6\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b3\u0001R\u001b\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b3\u0001R\u0019\u0010\u00bb\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u0019\u0010\u00bd\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00ba\u0001R\u0019\u0010\u00bf\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00ba\u0001R\u0019\u0010\u00c1\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u00ba\u0001R\u0019\u0010\u00c3\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00ba\u0001R\u0019\u0010\u00c5\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u00ba\u0001R\u001b\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00b3\u0001R\u001b\u0010\u00ca\u0001\u001a\u0005\u0018\u00010\u00c8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008J\u0010\u00c9\u0001R\u001a\u0010\u00cc\u0001\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008%\u0010\u00cb\u0001R\u0019\u0010\u00cf\u0001\u001a\u00030\u00cd\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008[\u0010\u00ce\u0001R\u001b\u0010\u00d2\u0001\u001a\u0005\u0018\u00010\u00d0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00087\u0010\u00d1\u0001R\u001b\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00b3\u0001R\u0016\u0010\u00d6\u0001\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00d5\u0001\u0010FR\u0016\u0010\u00d8\u0001\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00d7\u0001\u0010FR\u0016\u0010\u00da\u0001\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00d9\u0001\u0010F\u00a8\u0006\u00dc\u0001"
    }
    d2 = {
        "Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;",
        "Lcom/transsion/transsion_gdpr/BaseDialogFragment;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lzfb;",
        "c0",
        "(Landroid/content/Context;)V",
        "",
        "Y",
        "()Z",
        "isKeyBack",
        "R",
        "(Z)V",
        "b0",
        "Landroid/view/View;",
        "view",
        "isPageStyle",
        "q0",
        "(Landroid/view/View;Z)Landroid/view/View;",
        "rootView",
        "d0",
        "(Landroid/view/View;)Landroid/view/View;",
        "contentView",
        "u0",
        "(Landroid/view/View;)V",
        "x0",
        "(Landroid/view/View;Z)V",
        "y0",
        "t0",
        "Landroid/view/ViewGroup;",
        "parent",
        "J",
        "(Landroid/view/ViewGroup;)V",
        "buttonView",
        "B",
        "u",
        "Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;",
        "Landroid/content/res/TypedArray;",
        "ta",
        "A",
        "(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;Landroid/content/res/TypedArray;)V",
        "Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;",
        "z",
        "(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;Landroid/content/res/TypedArray;)V",
        "Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;",
        "button",
        "",
        "fillColor",
        "y",
        "(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)V",
        "Lcom/transsion/widgetslib/view/OSBigButton;",
        "radiusRes",
        "pressOverlayRes",
        "w",
        "(Lcom/transsion/widgetslib/view/OSBigButton;III)V",
        "",
        "text",
        "l0",
        "(Landroid/view/View;Ljava/lang/CharSequence;)V",
        "j0",
        "(Landroid/content/Context;Z)I",
        "container",
        "Landroid/widget/TextView;",
        "content",
        "maxHeight",
        "G",
        "(Landroid/view/View;Landroid/widget/TextView;I)V",
        "k0",
        "()I",
        "X",
        "(Landroid/view/View;)Z",
        "v0",
        "t",
        "(Landroid/view/View;Landroid/view/View;Z)V",
        "dialogContentView",
        "W",
        "Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;",
        "titleScrollView",
        "maskView",
        "C",
        "(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;Z)V",
        "Landroid/app/Dialog;",
        "H",
        "(Landroid/view/View;Z)Landroid/app/Dialog;",
        "dialog",
        "I",
        "(Landroid/app/Dialog;Landroid/view/View;Z)V",
        "Landroid/view/Window;",
        "window",
        "v",
        "(Landroid/view/Window;)V",
        "n0",
        "(Landroid/view/View;Landroid/view/Window;)V",
        "z0",
        "targetView",
        "isLandscape",
        "i0",
        "(Landroid/view/View;Z)I",
        "f0",
        "isTop",
        "g0",
        "",
        "html",
        "M",
        "(Ljava/lang/String;)Ljava/lang/CharSequence;",
        "htmlStr",
        "N",
        "K",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "T",
        "(Ljava/lang/String;)Z",
        "S",
        "Landroid/text/Spannable;",
        "spannable",
        "originStr",
        "handleString",
        "tag",
        "p0",
        "(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;I)V",
        "Z",
        "e0",
        "r0",
        "(Z)Z",
        "h0",
        "U",
        "Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;",
        "gdprConfig",
        "o0",
        "(Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;",
        "onAttach",
        "Landroid/app/Activity;",
        "activity",
        "(Landroid/app/Activity;)V",
        "Landroid/app/FragmentManager;",
        "manager",
        "pinCancelDismissEnable",
        "s0",
        "(Landroid/app/FragmentManager;Ljava/lang/String;Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "isInMultiWindowMode",
        "onMultiWindowModeChanged",
        "(ZLandroid/content/res/Configuration;)V",
        "a",
        "(Z)Landroid/app/Dialog;",
        "Landroid/content/DialogInterface;",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "onStart",
        "onDestroyView",
        "onDetach",
        "c",
        "Landroid/content/Context;",
        "mContext",
        "d",
        "mPinCancelDismissEnable",
        "e",
        "Landroid/app/FragmentManager;",
        "mFragmentManager",
        "f",
        "Ljava/lang/String;",
        "mTag",
        "g",
        "mCustomThemeResId",
        "h",
        "Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;",
        "mGdprConfig",
        "i",
        "Landroid/app/Activity;",
        "mAttachedActivity",
        "j",
        "Landroid/view/View;",
        "mButtonView",
        "k",
        "mCancelButton",
        "l",
        "mAgreeButton",
        "m",
        "Ljava/lang/CharSequence;",
        "mTitleText",
        "n",
        "mSloganText",
        "o",
        "mContentText",
        "p",
        "mAnnouncementText",
        "q",
        "mAgreeText",
        "r",
        "mCancelText",
        "s",
        "mDialogContentView",
        "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;",
        "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;",
        "mRoot",
        "Ljava/lang/Integer;",
        "mOriginalOrientation",
        "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;",
        "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;",
        "mLightTypeConfig",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "mDoubleButtonMarginLayoutListener",
        "x",
        "mDoubleButtonMarginTarget",
        "P",
        "dialogHorizontalInset",
        "Q",
        "dialogVerticalInset",
        "O",
        "dialogEdgeInset28",
        "b",
        "widgetsgdpr_release"
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
.field public static final y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

.field public static z:Lid4;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Z

.field public e:Landroid/app/FragmentManager;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

.field public i:Landroid/app/Activity;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/lang/CharSequence;

.field public o:Ljava/lang/CharSequence;

.field public p:Ljava/lang/CharSequence;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroid/view/View;

.field public t:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

.field public u:Ljava/lang/Integer;

.field public v:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

.field public w:Landroid/view/View$OnLayoutChangeListener;

.field public x:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transsion_gdpr/BaseDialogFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r:Ljava/lang/CharSequence;

    sget-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->PRIVACY_DIALOG_FRAGMENT_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->v:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    return-void
.end method

.method public static final D(Lc74;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p1, "$updateMaskVisibility"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final E(Lc74;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p1, "$updateMaskVisibility"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final F(Lc74;)V
    .locals 1

    const-string v0, "$updateMaskVisibility"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final L()Lid4;
    .locals 1

    sget-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;->a()Lid4;

    move-result-object v0

    return-object v0
.end method

.method public static final V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static final a0()Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
    .locals 1

    sget-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;->c()Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lc74;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->D(Lc74;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic c(Lc74;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->E(Lc74;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic d(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->F(Lc74;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w0(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->O()I

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic i()Lid4;
    .locals 1

    sget-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->z:Lid4;

    return-object v0
.end method

.method public static final synthetic j(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g:I

    return p0
.end method

.method public static final synthetic m(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->d:Z

    return p0
.end method

.method public static final m0(Lid4;)V
    .locals 1

    sget-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    invoke-virtual {v0, p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;->d(Lid4;)V

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->R(Z)V

    return-void
.end method

.method public static final synthetic o(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->Z()Z

    move-result p0

    return p0
.end method

.method public static final synthetic p(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;Z)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->f0(Landroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic q(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h0()I

    move-result p0

    return p0
.end method

.method public static final synthetic r(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;Z)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i0(Landroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic s(Lid4;)V
    .locals 0

    sput-object p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->z:Lid4;

    return-void
.end method

.method public static final w0(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$contentView"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->Y()Z

    move-result p3

    const-string p4, "v"

    invoke-static {p2, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public static final x(FI)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public final A(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;Landroid/content/res/TypedArray;)V
    .locals 5

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->getFirstButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->getSecondButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cancelButton"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_btn_corners_radius:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_press_primary_color:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w(Lcom/transsion/widgetslib/view/OSBigButton;III)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "agreeButton"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_two_line_btn_radius:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_press_secondary_color:I

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w(Lcom/transsion/widgetslib/view/OSBigButton;III)V

    :cond_2
    const/4 p0, 0x3

    invoke-virtual {p2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->getFirstButton()Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->getSecondButton()Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->getFirstButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->getSecondButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public final C(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;

    invoke-direct {p0, p1, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;-><init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;)V

    new-instance p2, Lqf8;

    invoke-direct {p2, p0}, Lqf8;-><init>(Lc74;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p3, Lrf8;

    invoke-direct {p3, p0}, Lrf8;-><init>(Lc74;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    new-instance p2, Lsf8;

    invoke-direct {p2, p0}, Lsf8;-><init>(Lc74;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final G(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 1

    if-eqz p1, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$g;

    invoke-direct {v0, p2, p1, p3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$g;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final H(Landroid/view/View;Z)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/a;->a(Landroid/content/Context;)Lcom/transsion/transsion_gdpr/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/a$a;->d(Landroid/view/View;)Lcom/transsion/transsion_gdpr/a$a;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/a$a;->c(Ljava/lang/Boolean;)Lcom/transsion/transsion_gdpr/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/a$a;->f()Lcom/transsion/transsion_gdpr/a$a;

    move-result-object p0

    if-eqz p2, :cond_0

    sget p1, Lcom/transsion/widgetsgdpr/R$style;->host_dialog_page:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetsgdpr/R$style;->host_dialog:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/a$a;->g(Ljava/lang/Integer;)Lcom/transsion/transsion_gdpr/a$a;

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/a$a;->b()Landroid/app/Dialog;

    move-result-object p0

    const-string p1, "dialogBuilder.build()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final I(Landroid/app/Dialog;Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10100

    if-eqz p3, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->v(Landroid/view/Window;)V

    :goto_0
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_bg_secondary:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_bg_secondary_hios:I

    invoke-static {v2, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v5, 0x20

    if-ne v3, v5, :cond_1

    move v4, v1

    :cond_1
    xor-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    xor-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    :cond_2
    if-nez p3, :cond_4

    invoke-static {}, Lolb;->W()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v1, :cond_4

    :cond_3
    const/16 v2, 0x11

    goto :goto_1

    :cond_4
    const/16 v2, 0x50

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-static {}, Lolb;->W()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    sget v3, Lcom/transsion/widgetsliquid/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mContext!!.getString(com\u2026fold_dialog_title_verify)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    new-instance v2, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$c;

    invoke-direct {v2, p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$c;-><init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "attributes"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz p3, :cond_7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_7
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_8
    invoke-virtual {p0, p3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r0(Z)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lolb;->setDialogWidth(Landroid/app/Dialog;)V

    :cond_9
    if-nez p3, :cond_a

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lolb;->d(Landroid/content/Context;Landroid/app/Dialog;)V

    :cond_a
    if-nez p3, :cond_b

    invoke-static {}, Lolb;->W()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->u0(Landroid/view/View;)V

    :cond_b
    invoke-virtual {p0, p2, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->n0(Landroid/view/View;Landroid/view/Window;)V

    :cond_c
    return-void
.end method

.method public final J(Landroid/view/ViewGroup;)V
    .locals 4

    sget p0, Lcom/transsion/widgetsgdpr/R$id;->double_button:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    new-instance v2, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final K(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickUserAgreementText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickPrivacyPolicyText()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "%"

    const/4 v4, 0x2

    invoke-static {p1, v3, v1, v4, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lhz9;->a:Lhz9;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(format, *args)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    :catch_0
    :cond_2
    :goto_0
    return-object p1
.end method

.method public final M(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_user_agreement:I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.os_gdpr_user_agreement)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p0(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;I)V

    sget v1, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_privacy_policy:I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.os_gdpr_privacy_policy)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p0(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final N(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->S(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "\u200b"

    const-string v7, "mGdprConfig!!.clickUserAgreementText"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickUserAgreementText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickUserAgreementText()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v8, v1

    invoke-virtual {p0, v8}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->T(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "mGdprConfig!!.clickPrivacyPolicyText"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickPrivacyPolicyText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickPrivacyPolicyText()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickUserAgreementText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v8, v0, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p0(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    invoke-virtual {p0, v8}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickPrivacyPolicyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p0(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-object p1
.end method

.method public final O()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsgdpr/R$dimen;->os_space350:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final P()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsgdpr/R$dimen;->os_space200:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final Q()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsgdpr/R$dimen;->os_space200:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final R(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->Y()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->b0(Z)V

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i:Landroid/app/Activity;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->b0(Z)V

    return-void
.end method

.method public final S(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickUserAgreementText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickUserAgreementText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mGdprConfig!!.clickUserAgreementText"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p1, p0, v2, v0, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final T(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickPrivacyPolicyText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getClickPrivacyPolicyText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mGdprConfig!!.clickPrivacyPolicyText"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p1, p0, v2, v0, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final U()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getTitleText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget v3, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_privacy_title:I

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.os_gdpr_privacy_title)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getSloganText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, ""

    invoke-static {v2, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getContentText()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    sget v3, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_privacy_content:I

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.os_gdpr_privacy_content)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    sget v3, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_accept_btn:I

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.os_gdpr_accept_btn)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    sget v3, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_cancel_btn:I

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.os_gdpr_cancel_btn)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getAnnouncementText()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_privacy_announcement:I

    sget v2, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_user_agreement:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u200b"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_privacy_policy:I

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\n             \u2026CE_CODE\n                )"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->M(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_6
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getAnnouncementText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "config!!.announcementText"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->N(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p:Ljava/lang/CharSequence;

    :goto_5
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeEndPunctuation(mTitleText.toString())"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeEndPunctuation(mAgreeText.toString())"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeEndPunctuation(mCancelText.toString())"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getDelSpaceFromTitle()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addSpaceBetweenChineseAn\u2026rs(mTitleText.toString())"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getDelSpaceFromContent()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addSpaceBetweenChineseAn\u2026(mContentText.toString())"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o:Ljava/lang/CharSequence;

    :cond_8
    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getDelSpaceFromAgree()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addSpaceBetweenChineseAn\u2026rs(mAgreeText.toString())"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q:Ljava/lang/CharSequence;

    :cond_9
    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getDelSpaceFromCancel()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addSpaceBetweenChineseAn\u2026s(mCancelText.toString())"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r:Ljava/lang/CharSequence;

    :cond_a
    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/transsion/transsion_gdpr/GdprUtil;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "avoidLeadingPunctuationL\u2026eBreak(mAnnouncementText)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p:Ljava/lang/CharSequence;

    return-void
.end method

.method public final W(Landroid/view/View;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v2, :cond_1

    sget v6, Lcom/transsion/widgetsgdpr/R$dimen;->os_space900:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/16 v7, 0x24

    invoke-static {v3, v7}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    goto :goto_1

    :cond_2
    sget v7, Lcom/transsion/widgetsgdpr/R$dimen;->os_space300:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {v3}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v8, Lcom/transsion/widgetsgdpr/R$dimen;->os_space900:I

    goto :goto_2

    :cond_3
    sget v8, Lcom/transsion/widgetsgdpr/R$dimen;->os_space400:I

    goto :goto_2

    :cond_4
    sget v8, Lcom/transsion/widgetsgdpr/R$dimen;->os_space200:I

    :goto_2
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eqz v2, :cond_5

    sget v9, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_content_min_height_page:I

    goto :goto_3

    :cond_5
    sget v9, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_content_min_height_dialog:I

    :goto_3
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz v2, :cond_6

    sget v10, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_announcement_max_height_page:I

    goto :goto_4

    :cond_6
    sget v10, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_announcement_max_height_dialog:I

    :goto_4
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sget v11, Lcom/transsion/widgetsgdpr/R$id;->iv_app_icon:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    sget v12, Lcom/transsion/widgetsgdpr/R$id;->iv_privacy_icon:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    sget v13, Lcom/transsion/widgetsgdpr/R$id;->ll_title_content:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    sget v14, Lcom/transsion/widgetsgdpr/R$id;->gdpr_title_scrollbar:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    sget v15, Lcom/transsion/widgetsgdpr/R$id;->rl_title_content:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->ll_mask:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move/from16 v16, v10

    sget v10, Lcom/transsion/widgetsgdpr/R$id;->ll_bottom:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    move-object/from16 v17, v5

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->tv_title:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v18, v5

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->tv_slogan:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v19, v5

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->tv_dialog_title:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v20, v5

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->tv_instruction:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v21, v5

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->tv_announcement:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v22, v5

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->gdpr_announcement_scrollbar:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    move-object/from16 v23, v5

    sget v5, Lcom/transsion/widgetsgdpr/R$id;->announcement_scrollview:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    move-object/from16 v24, v5

    if-eqz v2, :cond_7

    const-string v5, "llBottom"

    invoke-static {v10, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->J(Landroid/view/ViewGroup;)V

    :cond_7
    sget v5, Lcom/transsion/widgetsgdpr/R$id;->double_button:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->B(Landroid/view/View;)V

    iget-object v5, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->u(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x0(Landroid/view/View;Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y0(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t0(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->v0(Landroid/view/View;Z)V

    if-eqz v11, :cond_e

    if-eqz v2, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    const/16 v5, 0x8

    :goto_5
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getAppIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v1, "appIconBitmap"

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_9
    iget-object v1, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getAppIconResId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_b
    :goto_7
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_c

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    if-eqz v2, :cond_d

    invoke-static {v3}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_9

    :cond_d
    const/16 v5, 0x54

    invoke-static {v3, v5}, Lolb;->h(Landroid/content/Context;I)I

    move-result v5

    :goto_9
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    if-eqz v12, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k0()I

    move-result v1

    if-nez v1, :cond_f

    const/16 v5, 0x8

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_10

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_12

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v2, :cond_11

    sget v5, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_dialog_privacy_icon_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget v5, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_dialog_privacy_icon_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_11
    invoke-virtual {v12, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    :goto_b
    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v11, 0x1

    if-eqz v14, :cond_17

    if-eqz v2, :cond_13

    move v12, v11

    goto :goto_c

    :cond_13
    const/4 v12, 0x2

    :goto_c
    invoke-virtual {v14, v12}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setScrollbarStyleMode(I)V

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v1, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_14

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_d

    :cond_14
    const/4 v12, 0x0

    :goto_d
    if-eqz v12, :cond_17

    iput v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_15

    move v1, v6

    goto :goto_e

    :cond_15
    move v1, v5

    :goto_e
    iput v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v2, :cond_16

    const/4 v1, 0x0

    iput v1, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v1, 0x0

    iput-boolean v1, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    :cond_16
    invoke-virtual {v14, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    if-eqz v15, :cond_18

    if-eqz v14, :cond_18

    invoke-virtual {v14, v15}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V

    :cond_18
    if-eqz v15, :cond_1b

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_19

    goto :goto_f

    :cond_19
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_1b

    if-eqz v2, :cond_1a

    move v7, v6

    goto :goto_10

    :cond_1a
    move v7, v5

    :goto_10
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v15, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    if-eqz v13, :cond_1e

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_1c

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1d

    move v5, v6

    :cond_1d
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    if-eqz v10, :cond_20

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_1f

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_12

    :cond_1f
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_20

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v10, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_20
    if-nez v15, :cond_21

    goto :goto_13

    :cond_21
    invoke-virtual {v15, v9}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->U()V

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->C(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;Z)V

    if-nez v2, :cond_23

    if-eqz v20, :cond_23

    iget-object v1, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    move-object/from16 v5, v20

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v18, :cond_22

    :goto_14
    const/4 v5, 0x0

    goto :goto_17

    :cond_22
    move-object/from16 v1, v18

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    :cond_23
    move-object/from16 v1, v18

    move-object/from16 v5, v20

    const/16 v6, 0x8

    if-nez v1, :cond_24

    goto :goto_15

    :cond_24
    iget-object v7, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    if-nez v5, :cond_25

    goto :goto_16

    :cond_25
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    if-nez v1, :cond_26

    goto :goto_14

    :cond_26
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_17
    if-eqz v19, :cond_28

    iget-object v1, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->n:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->n:Ljava/lang/CharSequence;

    move-object/from16 v6, v19

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    :cond_27
    move-object/from16 v6, v19

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    :goto_18
    if-eqz v21, :cond_2b

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_29

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_19

    :cond_29
    const/4 v5, 0x0

    :goto_19
    if-eqz v5, :cond_2b

    if-eqz v2, :cond_2a

    sget v1, Lcom/transsion/widgetsgdpr/R$dimen;->os_space150:I

    goto :goto_1a

    :cond_2a
    sget v1, Lcom/transsion/widgetsgdpr/R$dimen;->os_space200:I

    :goto_1a
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v1, v21

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_2b
    move-object/from16 v1, v21

    :goto_1b
    if-nez v1, :cond_2c

    goto :goto_1c

    :cond_2c
    iget-object v5, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    invoke-virtual {v0, v3, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->j0(Landroid/content/Context;Z)I

    move-result v5

    if-eqz v1, :cond_2d

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2d
    move-object/from16 v6, v22

    if-eqz v22, :cond_2e

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2e
    if-eqz v2, :cond_30

    sget v5, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_page_message_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v7, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2f
    if-eqz v6, :cond_30

    invoke-virtual {v6, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_30
    iget-object v1, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    iget-object v5, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v5}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l0(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    iget-object v5, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v5}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l0(Landroid/view/View;Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_31

    iget-object v1, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p:Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;

    invoke-direct {v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;-><init>()V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_31
    invoke-static {v3}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget v1, Lcom/transsion/widgetsgdpr/R$dimen;->os_gdpr_tv_announcement_max_height:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_1d

    :cond_32
    move/from16 v10, v16

    :goto_1d
    if-eqz v23, :cond_34

    if-eqz v2, :cond_33

    move v1, v11

    move-object/from16 v5, v23

    goto :goto_1e

    :cond_33
    move-object/from16 v5, v23

    const/4 v1, 0x2

    :goto_1e
    invoke-virtual {v5, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setScrollbarStyleMode(I)V

    if-eqz v24, :cond_35

    move-object/from16 v1, v24

    invoke-virtual {v5, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V

    goto :goto_1f

    :cond_34
    move-object/from16 v5, v23

    :cond_35
    :goto_1f
    if-eqz v6, :cond_36

    invoke-virtual {v0, v5, v6, v10}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->G(Landroid/view/View;Landroid/widget/TextView;I)V

    :cond_36
    new-instance v1, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;

    invoke-direct {v1, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;-><init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)V

    iget-object v2, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    if-eqz v2, :cond_37

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_37
    iget-object v0, v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    return-void
.end method

.method public final X(Landroid/view/View;)Z
    .locals 1

    instance-of p0, p1, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->getFirstButton()Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->getFirstButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final Y()Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getGdprStyle()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final Z()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/app/ActivityManager;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManager;

    :cond_1
    const/4 v0, 0x0

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_tip_screen_pin_gesture:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetsgdpr/R$string;->os_gdpr_tip_screen_pin:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public a(Z)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: isInMultiWindowMode == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreateDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getGdprStyle()I

    move-result p1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {v3}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iput-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->u:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_2
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    iget v4, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g:I

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/transsion/widgetsgdpr/R$layout;->os_gdpr_dialog_fragment_privacy:I

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsgdpr/R$id;->gdpr_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-nez p1, :cond_7

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnUnionRenderFrameAvailableListener()V

    :cond_4
    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz v2, :cond_5

    sget-object v3, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DIALOG:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    :cond_5
    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->v:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    :cond_6
    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShowShadow(Z)V

    :cond_7
    const-string v0, "view"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q0(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->W(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->H(Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->I(Landroid/app/Dialog;Landroid/view/View;Z)V

    return-object v1
.end method

.method public final b0(Z)V
    .locals 2

    sget-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->z:Lid4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lid4;->d(Landroid/app/Activity;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i:Landroid/app/Activity;

    invoke-interface {v0, p0}, Lid4;->e(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final c0(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetsgdpr/R$attr;->gdprTheme:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttributes(attrs)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget v1, Lcom/transsion/widgetsgdpr/R$style;->gdprDialogContent:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final d0(Landroid/view/View;)Landroid/view/View;
    .locals 7

    sget v0, Lcom/transsion/widgetsgdpr/R$id;->gdpr_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    sget v1, Lcom/transsion/widgetsgdpr/R$id;->main_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, -0x1

    const/4 v3, -0x2

    if-eqz p1, :cond_2

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    iget v6, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g:I

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->u0(Landroid/view/View;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public final e0()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getGdprStyle()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x0(Landroid/view/View;Z)V

    invoke-virtual {p0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y0(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t0(Landroid/view/View;)V

    invoke-virtual {p0, v1, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->v0(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    invoke-virtual {p0, v0, v1, v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->I(Landroid/app/Dialog;Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final f0(Landroid/view/View;Z)I
    .locals 2

    sget-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g0(Landroid/view/View;Z)I

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->O()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->Q()I

    move-result p0

    return p0
.end method

.method public final g0(Landroid/view/View;Z)I
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->O()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    goto :goto_2

    :cond_3
    move p1, v3

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_3

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    :goto_2
    if-lez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1, p2, p0}, Lolb;->M(Landroid/content/Context;ZZ)I

    move-result p1

    :goto_3
    sub-int/2addr v0, p1

    invoke-static {v0, v3}, Lwn8;->d(II)I

    move-result p0

    return p0
.end method

.method public final h0()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lolb;->W()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->P()I

    move-result p0

    return p0

    :cond_1
    invoke-static {v0}, Lolb;->E(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0}, Lolb;->p(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p0}, Lwn8;->g(II)I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    invoke-static {p0, v1}, Lwn8;->d(II)I

    move-result p0

    return p0
.end method

.method public final i0(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g0(Landroid/view/View;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->Q()I

    move-result p0

    return p0
.end method

.method public final j0(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p2, :cond_0

    sget p0, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget p2, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {p1, p0, p2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/widgetslib/R$attr;->os_text_secondary:I

    sget p2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_hios:I

    invoke-static {p1, p0, p2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final k0()I
    .locals 0

    sget-boolean p0, Lolb;->e:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/widgetsgdpr/R$drawable;->icon_privacy_itel:I

    goto :goto_0

    :cond_0
    sget-boolean p0, Lolb;->d:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/widgetsgdpr/R$drawable;->icon_privacy_infinix:I

    goto :goto_0

    :cond_1
    sget-boolean p0, Lolb;->c:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/widgetsgdpr/R$drawable;->icon_privacy_tecno:I

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    instance-of p0, p1, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n0(Landroid/view/View;Landroid/view/Window;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean p0, Lolb;->P:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string p2, "window.decorView"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    instance-of p2, p0, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final o0(Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
    .locals 2

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "arg_gdpr_config"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 4
    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i:Landroid/app/Activity;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c0(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->e0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "arg_gdpr_config"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    const-string v0, "arg_pin_cancel_dismiss_enable"

    iget-boolean v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->d:Z

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w:Landroid/view/View$OnLayoutChangeListener;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->j:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->s:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i:Landroid/app/Activity;

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->u:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->u:Ljava/lang/Integer;

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->e0()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->getGdprStyle()I

    :cond_0
    return-void
.end method

.method public final p0(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lj1a;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p2

    new-instance v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    invoke-direct {v0, p0, p4}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;-><init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;I)V

    const/16 p0, 0x21

    invoke-interface {p1, v0, p2, p3, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final q0(Landroid/view/View;Z)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    invoke-static {}, Lolb;->W()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->d0(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->z0(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    sget p2, Lcom/transsion/widgetsgdpr/R$id;->main_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/widgetsgdpr/R$id;->content_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 p1, -0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    iget p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g:I

    invoke-direct {v3, v4, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_4

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p2, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object p1, p0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    iget p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p1, :cond_6

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final r0(Z)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lolb;->W()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result p0

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public final s0(Landroid/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 2

    iput-boolean p3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->d:Z

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->e:Landroid/app/FragmentManager;

    iput-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "arg_pin_cancel_dismiss_enable"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transsion_gdpr/BaseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final t(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    if-eqz p3, :cond_1

    invoke-static {}, Lolb;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {v0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p0, p3, :cond_0

    const/16 p0, 0x48

    goto :goto_0

    :cond_0
    const/16 p0, 0x24

    :goto_0
    invoke-static {p1, p0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p3}, Lolb;->b0(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->X(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_3

    sget p3, Lcom/transsion/widgetsgdpr/R$id;->main_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/widgetsgdpr/R$dimen;->os_space400:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/transsion/widgetsgdpr/R$dimen;->os_space300:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_4

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p3

    if-ne p3, p0, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p3

    if-eq p3, p0, :cond_6

    :cond_5
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public final t0(Landroid/view/View;)V
    .locals 4

    sget p0, Lcom/transsion/widgetsgdpr/R$id;->main_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/widgetsgdpr/R$id;->gdpr_announcement_scrollbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/transsion/widgetsgdpr/R$id;->announcement_scrollview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    neg-int v2, p0

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v3, v2, :cond_5

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    if-ne v0, p0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    if-eq v0, p0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p0, v0, p0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_7
    return-void
.end method

.method public final u(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget v2, Lcom/transsion/widgetsgdpr/R$attr;->negativeBtnBgColor:I

    sget v3, Lcom/transsion/widgetsgdpr/R$attr;->negativeBtnTextColor:I

    sget v4, Lcom/transsion/widgetsgdpr/R$attr;->positiveBtnBgColor:I

    sget v5, Lcom/transsion/widgetsgdpr/R$attr;->positiveBtnTextColor:I

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026mCustomThemeResId, attrs)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v1, p1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->A(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;Landroid/content/res/TypedArray;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    instance-of v1, p1, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->z(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final u0(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lolb;->W()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h0()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->Q()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->Q()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final v(Landroid/view/Window;)V
    .locals 7

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lolb;->O:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_dialog_bg:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final v0(Landroid/view/View;Z)V
    .locals 1

    sget v0, Lcom/transsion/widgetsgdpr/R$id;->double_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->t(Landroid/view/View;Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w:Landroid/view/View$OnLayoutChangeListener;

    if-nez p2, :cond_1

    new-instance p2, Lpf8;

    invoke-direct {p2, p0, p1}, Lpf8;-><init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w:Landroid/view/View$OnLayoutChangeListener;

    :cond_1
    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x:Landroid/view/View;

    if-eq p1, v0, :cond_4

    iget-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->w:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    invoke-virtual {v0, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x:Landroid/view/View;

    :cond_4
    return-void
.end method

.method public final w(Lcom/transsion/widgetslib/view/OSBigButton;III)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    new-instance p4, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {p0, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {p0, p3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    filled-new-array {v0, p3}, [Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-direct {p4, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance p3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p4, 0x0

    new-array p4, p4, [I

    invoke-static {p0, p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->x(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final x0(Landroid/view/View;Z)V
    .locals 1

    sget v0, Lcom/transsion/widgetsgdpr/R$id;->main_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p2}, Lolb;->b0(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0x6b

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    :goto_0
    invoke-static {p2, p0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/widgetsgdpr/R$dimen;->os_space400:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/widgetsgdpr/R$dimen;->os_space300:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    if-ne p2, p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    if-eq p2, p0, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p0, p2, p0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    return-void
.end method

.method public final y(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)V
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBrandColor(I)V

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBrandAlpha(F)V

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    return-void
.end method

.method public final y0(Landroid/view/View;)V
    .locals 4

    sget p0, Lcom/transsion/widgetsgdpr/R$id;->main_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/widgetsgdpr/R$id;->content_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/transsion/widgetsgdpr/R$id;->rl_title_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    neg-int v2, p0

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v3, v2, :cond_5

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    if-ne v0, p0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    if-eq v0, p0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p0, v0, p0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_7
    return-void
.end method

.method public final z(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;Landroid/content/res/TypedArray;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->getFirstButton()Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->getSecondButton()Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cancelButton"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "agreeButton"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)V

    :cond_2
    const/4 p0, 0x3

    invoke-virtual {p2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public final z0(Landroid/view/View;)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->c:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;-><init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/ContextThemeWrapper;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h0()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i0(Landroid/view/View;Z)I

    move-result v3

    invoke-virtual {p0, v1, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->f0(Landroid/view/View;Z)I

    move-result p0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p0, :cond_2

    :cond_1
    invoke-virtual {v1, v2, v3, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
