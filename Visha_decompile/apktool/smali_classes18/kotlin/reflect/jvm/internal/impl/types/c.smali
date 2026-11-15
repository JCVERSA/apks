.class public final Lkotlin/reflect/jvm/internal/impl/types/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljbb;


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/c;->a:Lkotlin/reflect/jvm/internal/impl/types/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmd;Lsbb;Lxt1;)Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    const-string p0, "annotations"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lmd;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    new-instance p2, Lpd;

    invoke-direct {p2, p1}, Lpd;-><init>(Lmd;)V

    invoke-static {p2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->g(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    :goto_0
    return-object p0
.end method
