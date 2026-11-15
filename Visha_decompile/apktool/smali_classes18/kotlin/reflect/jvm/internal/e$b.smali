.class public Lkotlin/reflect/jvm/internal/e$b;
.super Lkotlin/reflect/jvm/internal/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Lc74;

.field public volatile d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/e$b;->f(I)V

    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/e$c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/e$b;->d:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/e$b;->c:Lc74;

    return-void
.end method

.method private static synthetic f(I)V
    .locals 2

    const-string p0, "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal"

    const-string v0, "<init>"

    const-string v1, "initializer"

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
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/e$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/e$c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/e$b;->c:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/e$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/e$b;->d:Ljava/lang/Object;

    return-object v0
.end method
