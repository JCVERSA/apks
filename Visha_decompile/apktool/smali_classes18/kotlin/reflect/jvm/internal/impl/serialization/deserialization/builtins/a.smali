.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;
.source "SourceFile"

# interfaces
.implements Lnn0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;
    }
.end annotation


# static fields
.field public static final p:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;


# instance fields
.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->p:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;

    return-void
.end method

.method public constructor <init>(Lo54;Lvx9;Lqq6;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lol0;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;-><init>(Lo54;Lvx9;Lqq6;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lse0;Lp92;)V

    .line 3
    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->o:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo54;Lvx9;Lqq6;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lol0;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;-><init>(Lo54;Lvx9;Lqq6;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lol0;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "builtins package fragment for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lev7;->d()Lo54;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->p(Lxt1;)Lqq6;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
