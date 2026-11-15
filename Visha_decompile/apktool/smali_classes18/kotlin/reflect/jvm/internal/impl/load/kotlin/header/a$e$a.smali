.class public Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e$a;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;->g()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$b;-><init>()V

    return-void
.end method

.method private static synthetic e(I)V
    .locals 2

    const-string p0, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1"

    const-string v0, "visitEnd"

    const-string v1, "data"

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public f([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e$a;->e(I)V

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->j(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;[Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method
