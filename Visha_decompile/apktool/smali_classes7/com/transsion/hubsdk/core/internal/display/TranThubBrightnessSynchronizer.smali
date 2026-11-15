.class public Lcom/transsion/hubsdk/core/internal/display/TranThubBrightnessSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/display/ITranBrightnessSynchronizerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public brightnessFloatToInt(F)I
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/internal/display/TranBrightnessSynchronizerExt;->brightnessFloatToInt(F)I

    move-result p0

    return p0
.end method
