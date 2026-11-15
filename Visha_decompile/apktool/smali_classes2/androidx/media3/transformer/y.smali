.class public final synthetic Landroidx/media3/transformer/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/media3/common/ColorInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/media3/common/ColorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/y;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/transformer/y;->b:Landroidx/media3/common/ColorInfo;

    return-void
.end method


# virtual methods
.method public final getParameterSupportGap(Landroid/media/MediaCodecInfo;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/y;->a:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/transformer/y;->b:Landroidx/media3/common/ColorInfo;

    invoke-static {v0, p0, p1}, Landroidx/media3/transformer/DefaultEncoderFactory;->b(Ljava/lang/String;Landroidx/media3/common/ColorInfo;Landroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method
