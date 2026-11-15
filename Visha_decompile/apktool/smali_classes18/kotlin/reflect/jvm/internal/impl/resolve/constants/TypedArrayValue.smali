.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;
.super Lvh;
.source "SourceFile"


# instance fields
.field public final c:Leh5;


# direct methods
.method public constructor <init>(Ljava/util/List;Leh5;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue$1;

    invoke-direct {v0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue$1;-><init>(Leh5;)V

    invoke-direct {p0, p1, v0}, Lvh;-><init>(Ljava/util/List;Le74;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;->c:Leh5;

    return-void
.end method


# virtual methods
.method public final c()Leh5;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/TypedArrayValue;->c:Leh5;

    return-object p0
.end method
