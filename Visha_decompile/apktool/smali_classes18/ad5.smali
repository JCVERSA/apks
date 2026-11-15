.class public Lad5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq1$c;


# static fields
.field public static final a:Lad5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad5;

    invoke-direct {v0}, Lad5;-><init>()V

    sput-object v0, Lad5;->a:Lad5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
