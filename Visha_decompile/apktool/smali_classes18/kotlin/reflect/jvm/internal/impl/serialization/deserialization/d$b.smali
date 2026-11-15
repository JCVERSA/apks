.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$b;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Lo54;


# direct methods
.method public constructor <init>(Lo54;Lcy6;Lxcb;Lyt9;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;-><init>(Lcy6;Lxcb;Lyt9;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$b;->d:Lo54;

    return-void
.end method


# virtual methods
.method public a()Lo54;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$b;->d:Lo54;

    return-object p0
.end method
