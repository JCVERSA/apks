.class public final Ljf5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf5;
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
    invoke-direct {p0}, Ljf5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lff5;)Ljf5;
    .locals 1

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljf5;

    sget-object v0, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    invoke-direct {p0, v0, p1}, Ljf5;-><init>(Lkotlin/reflect/KVariance;Lff5;)V

    return-object p0
.end method

.method public final b(Lff5;)Ljf5;
    .locals 1

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljf5;

    sget-object v0, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    invoke-direct {p0, v0, p1}, Ljf5;-><init>(Lkotlin/reflect/KVariance;Lff5;)V

    return-object p0
.end method

.method public final c()Ljf5;
    .locals 0

    sget-object p0, Ljf5;->d:Ljf5;

    return-object p0
.end method

.method public final d(Lff5;)Ljf5;
    .locals 1

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljf5;

    sget-object v0, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    invoke-direct {p0, v0, p1}, Ljf5;-><init>(Lkotlin/reflect/KVariance;Lff5;)V

    return-object p0
.end method
