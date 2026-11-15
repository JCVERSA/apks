.class public abstract Lkotlin/reflect/jvm/internal/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/e$c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/e$c$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/e$c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/e$c;->b:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/e$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/e$c;->b:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public abstract invoke()Ljava/lang/Object;
.end method
