.class public abstract Lfl;
.super Ln2;
.source "SourceFile"


# instance fields
.field public b:Lah;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    sget-object v0, Lm93;->b:Lm93;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.util.ArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lfl;-><init>(Lah;)V

    return-void
.end method

.method public constructor <init>(Lah;)V
    .locals 1

    const-string v0, "arrayMap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln2;-><init>()V

    .line 2
    iput-object p1, p0, Lfl;->b:Lah;

    return-void
.end method


# virtual methods
.method public final b()Lah;
    .locals 0

    iget-object p0, p0, Lfl;->b:Lah;

    return-object p0
.end method

.method public final f(Lde5;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "tClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln2;->c()Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->d(Lde5;)I

    move-result p1

    iget-object v0, p0, Lfl;->b:Lah;

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfl;->b:Lah;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lrf7;

    invoke-virtual {v0}, Lrf7;->f()I

    move-result v1

    if-ne v1, p1, :cond_1

    new-instance v0, Lrf7;

    invoke-direct {v0, p2, p1}, Lrf7;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lfl;->b:Lah;

    return-void

    :cond_1
    new-instance v1, Lbh;

    invoke-direct {v1}, Lbh;-><init>()V

    iput-object v1, p0, Lfl;->b:Lah;

    invoke-virtual {v0}, Lrf7;->f()I

    move-result v2

    invoke-virtual {v0}, Lrf7;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lah;->c(ILjava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lfl;->b:Lah;

    invoke-virtual {p0, p1, p2}, Lah;->c(ILjava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Lrf7;

    invoke-direct {v0, p2, p1}, Lrf7;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lfl;->b:Lah;

    return-void
.end method
