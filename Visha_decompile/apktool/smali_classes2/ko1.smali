.class public final Lko1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lko1$a;
    }
.end annotation


# static fields
.field public static final d:Lko1$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lko1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lko1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lko1;->d:Lko1$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko1;->a:Ljava/lang/String;

    iput p2, p0, Lko1;->b:I

    iput p3, p0, Lko1;->c:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lko1;->b:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lko1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lko1;->c:F

    return p0
.end method
