.class public interface abstract Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoudnessParameterUpdateListener"
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnu5;

    invoke-direct {v0}, Lnu5;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;->lambda$static$0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public abstract onLoudnessParameterUpdate(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
