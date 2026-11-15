.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;

.field public static final b:Lmq6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;

    new-instance v0, Lmq6;

    const-string v1, "PackageViewDescriptorFactory"

    invoke-direct {v0, v1}, Lmq6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;->b:Lmq6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lmq6;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/b$a;->b:Lmq6;

    return-object p0
.end method
