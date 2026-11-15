.class public Lgz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb3;


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgz4;->a:Ljava/security/SecureRandom;

    iput-boolean p2, p0, Lgz4;->b:Z

    return-void
.end method

.method public static synthetic a(J)V
    .locals 0

    invoke-static {p0, p1}, Lgz4;->c(J)V

    return-void
.end method

.method public static synthetic b(Lgz4;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lgz4;->a:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public static c(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lab3;
    .locals 1

    new-instance v0, Lgz4$a;

    invoke-direct {v0, p0, p1}, Lgz4$a;-><init>(Lgz4;I)V

    return-object v0
.end method
