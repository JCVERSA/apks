.class public final Lcom/transsion/usercenter/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/t$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/transsion/usercenter/t$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/usercenter/t;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/usercenter/t$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/t;->b:Lcom/transsion/usercenter/t$a;

    .line 2
    .line 3
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dest"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/transsion/usercenter/t;->a:I

    .line 12
    .line 13
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    sub-int/2addr p6, p5

    .line 18
    sub-int/2addr p4, p6

    .line 19
    sub-int/2addr v0, p4

    .line 20
    const-string p4, ""

    .line 21
    .line 22
    if-gtz v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/usercenter/t;->b:Lcom/transsion/usercenter/t$a;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/transsion/usercenter/t$a;->a()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sub-int/2addr p3, p2

    .line 33
    if-lt v0, p3, :cond_1

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    add-int/2addr v0, p2

    .line 38
    add-int/lit8 p3, v0, -0x1

    .line 39
    .line 40
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    add-int/lit8 v0, v0, -0x1

    .line 51
    .line 52
    if-ne v0, p2, :cond_2

    .line 53
    .line 54
    return-object p4

    .line 55
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    :cond_3
    :goto_0
    return-object p4
.end method
