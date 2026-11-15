.class public final Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;
.super Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReturnsUnit"
.end annotation


# static fields
.field public static final d:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;->d:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit$1;

    const/4 v1, 0x0

    const-string v2, "Unit"

    invoke-direct {p0, v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck;-><init>(Ljava/lang/String;Le74;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
