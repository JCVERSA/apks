.class public final Lcom/transsion/widgetsmotionlibrary/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsmotionlibrary/a$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/widgetsmotionlibrary/a$a;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsmotionlibrary/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsmotionlibrary/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsmotionlibrary/a;->e:Lcom/transsion/widgetsmotionlibrary/a$a;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/widgetsmotionlibrary/a;->a:F

    .line 3
    iput p2, p0, Lcom/transsion/widgetsmotionlibrary/a;->b:F

    .line 4
    iput p3, p0, Lcom/transsion/widgetsmotionlibrary/a;->c:F

    .line 5
    iput p4, p0, Lcom/transsion/widgetsmotionlibrary/a;->d:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 6
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsmotionlibrary/a;-><init>(FFFF)V

    return-void
.end method

.method public static final c(F)Lcom/transsion/widgetsmotionlibrary/a;
    .locals 1

    sget-object v0, Lcom/transsion/widgetsmotionlibrary/a;->e:Lcom/transsion/widgetsmotionlibrary/a$a;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetsmotionlibrary/a$a;->a(F)Lcom/transsion/widgetsmotionlibrary/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/a;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/a;->b:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/a;->c:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/a;->d:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b()[F
    .locals 5

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/a;->a:F

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/a;->b:F

    iget v2, p0, Lcom/transsion/widgetsmotionlibrary/a;->c:F

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/a;->d:F

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v0, 0x2

    aput v1, v3, v0

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v0, 0x4

    aput v2, v3, v0

    const/4 v0, 0x5

    aput v2, v3, v0

    const/4 v0, 0x6

    aput p0, v3, v0

    const/4 v0, 0x7

    aput p0, v3, v0

    return-object v3
.end method
