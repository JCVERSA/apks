.class public final Lqq8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqq8;
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
    invoke-direct {p0}, Lqq8$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lqq8;
    .locals 2

    const-string p0, "klass"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;-><init>()V

    sget-object v0, Lop8;->a:Lop8;

    invoke-virtual {v0, p1, p0}, Lop8;->b(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$c;)V

    new-instance v0, Lqq8;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->m()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {v0, p1, p0, v1}, Lqq8;-><init>(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
