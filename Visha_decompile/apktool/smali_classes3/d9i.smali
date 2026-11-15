.class public final Ld9i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ld9i;

.field public static final c:Ld9i;

.field public static final d:Ld9i;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld9i;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1}, Ld9i;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld9i;->b:Ld9i;

    new-instance v0, Ld9i;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1}, Ld9i;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld9i;->c:Ld9i;

    new-instance v0, Ld9i;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1}, Ld9i;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld9i;->d:Ld9i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld9i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld9i;->a:Ljava/lang/String;

    return-object p0
.end method
