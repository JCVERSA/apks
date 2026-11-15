.class public final synthetic Landroidx/media3/transformer/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/z;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/transformer/z;->b:I

    iput p3, p0, Landroidx/media3/transformer/z;->c:I

    return-void
.end method


# virtual methods
.method public final getParameterSupportGap(Landroid/media/MediaCodecInfo;)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/z;->a:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/transformer/z;->b:I

    iget p0, p0, Landroidx/media3/transformer/z;->c:I

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/transformer/DefaultEncoderFactory;->c(Ljava/lang/String;IILandroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method
