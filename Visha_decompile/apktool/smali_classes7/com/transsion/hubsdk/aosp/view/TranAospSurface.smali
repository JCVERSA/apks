.class public Lcom/transsion/hubsdk/aosp/view/TranAospSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospSurface"


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
.method public setBuffersFormatOverride(Landroid/view/Surface;I)I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospSurface;->TAG:Ljava/lang/String;

    const-string p1, "setBuffersFormatOverride not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method
