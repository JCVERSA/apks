.class public final Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onCancel(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static onDialogClickCancel(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static onSelected(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string p2, "data"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic onSelected$default(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_1

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string p1, "Super calls with default arguments not supported in this target, function: onSelected"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method
