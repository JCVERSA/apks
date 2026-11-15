.class public Lu70$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu70$a;->a:I

    iput p3, p0, Lu70$a;->b:I

    iput p2, p0, Lu70$a;->c:I

    iput p4, p0, Lu70$a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lu70$a;->d:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lu70$a;->a:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lu70$a;->b:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lu70$a;->c:I

    return p0
.end method
