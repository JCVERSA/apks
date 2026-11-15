.class public abstract Lkotlin/reflect/jvm/internal/impl/types/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/l$b;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/l$b;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/types/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/l$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/l;->a:Lkotlin/reflect/jvm/internal/impl/types/l$b;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/l$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/l$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/l;->b:Lkotlin/reflect/jvm/internal/impl/types/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    const-string v0, "create(this)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lmd;)Lmd;
    .locals 0

    const-string p0, "annotations"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract e(Leh5;)Lmcb;
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;
    .locals 0

    const-string p0, "topLevelType"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "position"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/l$c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/l$c;-><init>(Lkotlin/reflect/jvm/internal/impl/types/l;)V

    return-object v0
.end method
