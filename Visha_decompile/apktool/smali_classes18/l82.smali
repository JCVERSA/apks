.class public final Ll82;
.super Lo82;
.source "SourceFile"


# instance fields
.field public final b:Lxt1;


# direct methods
.method public constructor <init>(Lxt1;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo82;-><init>()V

    iput-object p1, p0, Ll82;->b:Lxt1;

    return-void
.end method


# virtual methods
.method public b()Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationLevelValue;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationLevelValue;->ERROR:Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationLevelValue;

    return-object p0
.end method
