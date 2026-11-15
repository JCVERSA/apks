.class public final Lrj2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrj2$a$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Lrj2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrj2$a;

    invoke-direct {v0}, Lrj2$a;-><init>()V

    sput-object v0, Lrj2$a;->a:Lrj2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lrj2$a;Lcom/yandex/div2/DivAlignmentHorizontal;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;
    .locals 0

    invoke-virtual {p0, p1}, Lrj2$a;->d(Lcom/yandex/div2/DivAlignmentHorizontal;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lrj2$a;Lcom/yandex/div2/DivAlignmentVertical;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;
    .locals 0

    invoke-virtual {p0, p1}, Lrj2$a;->e(Lcom/yandex/div2/DivAlignmentVertical;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lrj2$a;IILcom/yandex/div2/DivGallery$CrossContentAlignment;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lrj2$a;->f(IILcom/yandex/div2/DivGallery$CrossContentAlignment;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final d(Lcom/yandex/div2/DivAlignmentHorizontal;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;
    .locals 0

    sget-object p0, Lrj2$a$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->END:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->START:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->END:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->CENTER:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->START:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    :goto_0
    return-object p0
.end method

.method public final e(Lcom/yandex/div2/DivAlignmentVertical;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;
    .locals 0

    sget-object p0, Lrj2$a$a;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->END:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->CENTER:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->START:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    :goto_0
    return-object p0
.end method

.method public final f(IILcom/yandex/div2/DivGallery$CrossContentAlignment;)I
    .locals 0

    sub-int/2addr p1, p2

    sget-object p0, Lrj2$a$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
