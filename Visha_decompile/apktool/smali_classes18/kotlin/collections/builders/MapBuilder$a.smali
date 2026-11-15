.class public final Lkotlin/collections/builders/MapBuilder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lkotlin/collections/builders/MapBuilder$a;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder$a;->c(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lkotlin/collections/builders/MapBuilder$a;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder$a;->d(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(I)I
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lwn8;->d(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public final d(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e()Lkotlin/collections/builders/MapBuilder;
    .locals 0

    invoke-static {}, Lkotlin/collections/builders/MapBuilder;->access$getEmpty$cp()Lkotlin/collections/builders/MapBuilder;

    move-result-object p0

    return-object p0
.end method
