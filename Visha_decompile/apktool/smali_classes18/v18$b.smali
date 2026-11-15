.class public final Lv18$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv18;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lv18$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv18$b;

    invoke-direct {v0}, Lv18$b;-><init>()V

    sput-object v0, Lv18$b;->a:Lv18$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "functionDescriptor"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    invoke-static {}, Lw18;->a()Lo54;

    move-result-object p1

    invoke-interface {p0, p1}, Lmd;->h(Lo54;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
