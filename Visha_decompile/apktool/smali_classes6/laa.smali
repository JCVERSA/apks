.class public final Llaa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llaa$a;,
        Llaa$b;
    }
.end annotation


# static fields
.field public static final a:Llaa;

.field public static b:Llaa$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llaa;

    invoke-direct {v0}, Llaa;-><init>()V

    sput-object v0, Llaa;->a:Llaa;

    new-instance v0, Llaa$a;

    invoke-direct {v0}, Llaa$a;-><init>()V

    sput-object v0, Llaa;->b:Llaa$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "key"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Llaa;->b:Llaa$b;

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Llaa$b;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
