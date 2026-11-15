.class public final Ljo1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljo1$a;
    }
.end annotation


# static fields
.field public static final e:Ljo1$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:F

.field public d:Lc74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljo1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljo1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ljo1;->e:Ljo1$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFLc74;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljo1;->a:Ljava/lang/String;

    iput p2, p0, Ljo1;->b:I

    iput p3, p0, Ljo1;->c:F

    iput-object p4, p0, Ljo1;->d:Lc74;

    return-void
.end method


# virtual methods
.method public final a()Lc74;
    .locals 0

    iget-object p0, p0, Ljo1;->d:Lc74;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ljo1;->b:I

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Ljo1;->c:F

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljo1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Lc74;)V
    .locals 0

    iput-object p1, p0, Ljo1;->d:Lc74;

    return-void
.end method
