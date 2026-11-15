.class public final Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhpan/bannerview/indicator/DrawableIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->a:I

    iput p2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->b:I

    iput p3, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->c:I

    iput p4, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->c:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->b:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;->a:I

    return p0
.end method
