.class public Lrtb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lrtb$a;->a:I

    .line 4
    iput p2, p0, Lrtb$a;->b:I

    .line 5
    iput p3, p0, Lrtb$a;->c:F

    return-void
.end method

.method public synthetic constructor <init>(IIFLstb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lrtb$a;-><init>(IIF)V

    return-void
.end method
