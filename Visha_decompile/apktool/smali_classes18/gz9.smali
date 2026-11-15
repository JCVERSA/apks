.class public final Lgz9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgz9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgz9;

    invoke-direct {v0}, Lgz9;-><init>()V

    sput-object v0, Lgz9;->a:Lgz9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmgb;Lmgb;)Z
    .locals 1

    const-string p0, "a"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lb4;->a:Lb4;

    sget-object v0, Lyl9;->a:Lyl9;

    invoke-virtual {p0, v0, p1, p2}, Lb4;->b(Ltcb;Lgh5;Lgh5;)Z

    move-result p0

    return p0
.end method
