.class public Lz82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq1$c;


# static fields
.field public static final a:Lz82;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz82;

    invoke-direct {v0}, Lz82;-><init>()V

    sput-object v0, Lz82;->a:Lz82;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
