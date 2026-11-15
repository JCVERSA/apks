.class public final Lta8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lta8$a;
    }
.end annotation


# static fields
.field public static final b:Lta8;


# instance fields
.field public final a:Lta8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lblb;->a:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    new-instance v0, Lta8;

    invoke-direct {v0}, Lta8;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lta8;

    sget-object v1, Lta8$a;->b:Lta8$a;

    invoke-direct {v0, v1}, Lta8;-><init>(Lta8$a;)V

    :goto_0
    sput-object v0, Lta8;->b:Lta8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lta8;-><init>(Lta8$a;)V

    .line 2
    sget p0, Lblb;->a:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lzi;->g(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 1

    .line 3
    new-instance v0, Lta8$a;

    invoke-direct {v0, p1}, Lta8$a;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0}, Lta8;-><init>(Lta8$a;)V

    return-void
.end method

.method public constructor <init>(Lta8$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lta8;->a:Lta8$a;

    return-void
.end method


# virtual methods
.method public a()Landroid/media/metrics/LogSessionId;
    .locals 0

    iget-object p0, p0, Lta8;->a:Lta8$a;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lta8$a;

    iget-object p0, p0, Lta8$a;->a:Landroid/media/metrics/LogSessionId;

    return-object p0
.end method
