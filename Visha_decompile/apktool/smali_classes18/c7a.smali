.class public abstract Lc7a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo54;

.field public static final b:Lpq0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo54;

    const-string v1, "kotlin.suspend"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc7a;->a:Lo54;

    new-instance v0, Lpq0;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e;->v:Lo54;

    const-string v2, "suspend"

    invoke-static {v2}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v2

    const-string v3, "identifier(\"suspend\")"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lpq0;-><init>(Lo54;Lby6;)V

    sput-object v0, Lc7a;->b:Lpq0;

    return-void
.end method
