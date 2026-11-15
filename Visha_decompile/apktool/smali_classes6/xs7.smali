.class public final Lxs7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxs7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    sput-object v0, Lxs7;->a:Lxs7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    sget-object p0, Llaa;->a:Llaa;

    const-string v0, "ro.tranos.version"

    invoke-virtual {p0, v0}, Llaa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.os_product.version"

    invoke-virtual {p0, v0}, Llaa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
