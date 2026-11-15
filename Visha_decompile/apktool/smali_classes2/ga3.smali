.class public final synthetic Lga3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe8;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lga3;->b:Ljava/lang/String;

    check-cast p1, Landroid/media/MediaCodecInfo;

    invoke-static {p0, p1}, Landroidx/media3/transformer/EncoderSelector;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method
