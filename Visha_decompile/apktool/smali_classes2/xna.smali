.class public final Lxna;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxna$a;
    }
.end annotation


# static fields
.field public static final c:Lxna;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxna$a;

    invoke-direct {v0}, Lxna$a;-><init>()V

    invoke-virtual {v0}, Lxna$a;->a()Lxna;

    move-result-object v0

    sput-object v0, Lxna;->c:Lxna;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lxna;->a:J

    iput-wide p3, p0, Lxna;->b:J

    return-void
.end method

.method public static c()Lxna$a;
    .locals 1

    new-instance v0, Lxna$a;

    invoke-direct {v0}, Lxna$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lxna;->b:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lxna;->a:J

    return-wide v0
.end method
