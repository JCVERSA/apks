.class public abstract Lpc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

.field public final b:Ljava/util/Set;

.field public final c:Lsm9;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;Ljava/util/Set;Lsm9;)V
    .locals 1

    const-string v0, "howThisTypeIsUsed"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc3;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    iput-object p2, p0, Lpc3;->b:Ljava/util/Set;

    iput-object p3, p0, Lpc3;->c:Lsm9;

    return-void
.end method


# virtual methods
.method public abstract a()Lsm9;
.end method

.method public abstract b()Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;
.end method

.method public abstract c()Ljava/util/Set;
.end method

.method public abstract d(Lhcb;)Lpc3;
.end method

.method public abstract hashCode()I
.end method
