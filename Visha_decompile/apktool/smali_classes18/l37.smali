.class public final Ll37;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll37;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll37;

    invoke-direct {v0}, Ll37;-><init>()V

    sput-object v0, Ll37;->a:Ll37;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmgb;)Z
    .locals 3

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/a;->a:Lkotlin/reflect/jvm/internal/impl/types/a;

    sget-object v0, Lyl9;->a:Lyl9;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lyl9;->F0(ZZ)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    move-result-object v0

    invoke-static {p1}, Lky3;->c(Leh5;)Lsm9;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;

    invoke-virtual {p0, v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/a;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;)Z

    move-result p0

    return p0
.end method
