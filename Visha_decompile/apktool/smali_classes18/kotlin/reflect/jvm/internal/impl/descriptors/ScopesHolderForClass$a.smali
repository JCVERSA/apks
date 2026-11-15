.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqw0;Lvx9;Lkotlin/reflect/jvm/internal/impl/types/checker/c;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;
    .locals 6

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "storageManager"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "kotlinTypeRefinerForOwnerModule"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scopeFactory"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;-><init>(Lqw0;Lvx9;Le74;Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
