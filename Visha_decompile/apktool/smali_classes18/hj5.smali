.class public Lhj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq1$c;


# static fields
.field public static final a:Lhj5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhj5;

    invoke-direct {v0}, Lhj5;-><init>()V

    sput-object v0, Lhj5;->a:Lhj5;

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

    check-cast p1, Lqw0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;->M(Lqw0;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
