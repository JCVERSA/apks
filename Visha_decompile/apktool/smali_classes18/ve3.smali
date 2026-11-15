.class public final Lve3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lve3;

.field public static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lve3;

    invoke-direct {v0}, Lve3;-><init>()V

    sput-object v0, Lve3;->a:Lve3;

    new-instance v0, Lo54;

    const-string v1, "kotlin.internal.NoInfer"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v1, Lo54;

    const-string v2, "kotlin.internal.Exact"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lo54;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lve3;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    sget-object p0, Lve3;->b:Ljava/util/Set;

    return-object p0
.end method
