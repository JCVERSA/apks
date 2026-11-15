.class public abstract Lh37;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;

.field public static final b:Ly7a;

.field public static final c:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh37;->a:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh37;->b:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh37;->c:Ly7a;

    return-void
.end method
