.class public Lt5/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(IZ)I
    .locals 1

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    sget p0, Lcom/bigkoo/pickerview/R$anim;->pickerview_slide_in_bottom:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    sget p0, Lcom/bigkoo/pickerview/R$anim;->pickerview_slide_out_bottom:I

    .line 13
    .line 14
    :goto_0
    return p0
.end method
