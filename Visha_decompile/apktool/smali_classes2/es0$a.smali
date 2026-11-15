.class public final Les0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Les0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Ljava/util/Comparator;


# instance fields
.field public final a:Ljm1;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lds0;

    invoke-direct {v0}, Lds0;-><init>()V

    sput-object v0, Les0$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljm1$b;

    invoke-direct {v0}, Ljm1$b;-><init>()V

    invoke-virtual {v0, p1}, Ljm1$b;->o(Ljava/lang/CharSequence;)Ljm1$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljm1$b;->p(Landroid/text/Layout$Alignment;)Ljm1$b;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljm1$b;->h(FI)Ljm1$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljm1$b;->i(I)Ljm1$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljm1$b;->k(F)Ljm1$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljm1$b;->l(I)Ljm1$b;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljm1$b;->n(F)Ljm1$b;

    move-result-object p1

    if-eqz p9, :cond_0

    invoke-virtual {p1, p10}, Ljm1$b;->s(I)Ljm1$b;

    :cond_0
    invoke-virtual {p1}, Ljm1$b;->a()Ljm1;

    move-result-object p1

    iput-object p1, p0, Les0$a;->a:Ljm1;

    iput p11, p0, Les0$a;->b:I

    return-void
.end method

.method public static synthetic a(Les0$a;Les0$a;)I
    .locals 0

    invoke-static {p0, p1}, Les0$a;->c(Les0$a;Les0$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Les0$a;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic c(Les0$a;Les0$a;)I
    .locals 0

    iget p1, p1, Les0$a;->b:I

    iget p0, p0, Les0$a;->b:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
