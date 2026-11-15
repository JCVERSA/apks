.class public Li57;
.super Lt53;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0, v2, v0, v2, v1}, Lt53;-><init>(FFFF)V

    return-void
.end method
