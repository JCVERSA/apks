.class public Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospPaint"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUnionRenderEffect(Landroid/graphics/Paint;Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;->TAG:Ljava/lang/String;

    const-string p1, "setUnionRenderEffect not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
