.class public final synthetic Landroidx/media3/transformer/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/x;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/transformer/x;->b:I

    return-void
.end method


# virtual methods
.method public final getParameterSupportGap(Landroid/media/MediaCodecInfo;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/x;->a:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/transformer/x;->b:I

    invoke-static {v0, p0, p1}, Landroidx/media3/transformer/DefaultEncoderFactory;->a(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method
