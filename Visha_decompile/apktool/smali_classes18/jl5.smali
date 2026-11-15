.class public final Ljl5;
.super Lay5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/a;Lkotlinx/serialization/descriptors/a;)V
    .locals 2

    const-string v0, "keyDesc"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueDesc"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlin.collections.LinkedHashMap"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lay5;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/a;Lkotlinx/serialization/descriptors/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
