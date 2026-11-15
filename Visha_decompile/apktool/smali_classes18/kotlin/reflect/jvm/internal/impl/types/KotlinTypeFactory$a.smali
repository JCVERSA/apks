.class public final Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lsm9;

.field public final b:Lsbb;


# direct methods
.method public constructor <init>(Lsm9;Lsbb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;->a:Lsm9;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;->b:Lsbb;

    return-void
.end method


# virtual methods
.method public final a()Lsm9;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;->a:Lsm9;

    return-object p0
.end method

.method public final b()Lsbb;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;->b:Lsbb;

    return-object p0
.end method
