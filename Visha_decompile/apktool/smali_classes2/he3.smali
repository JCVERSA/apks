.class public abstract Lhe3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe3$a;
    }
.end annotation


# static fields
.field public static final a:Lhe3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lhe3;->a()Lhe3$a;

    move-result-object v0

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Lhe3$a;->f(J)Lhe3$a;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lhe3$a;->d(I)Lhe3$a;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lhe3$a;->b(I)Lhe3$a;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    invoke-virtual {v0, v1, v2}, Lhe3$a;->c(J)Lhe3$a;

    move-result-object v0

    const v1, 0x14000

    invoke-virtual {v0, v1}, Lhe3$a;->e(I)Lhe3$a;

    move-result-object v0

    invoke-virtual {v0}, Lhe3$a;->a()Lhe3;

    move-result-object v0

    sput-object v0, Lhe3;->a:Lhe3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhe3$a;
    .locals 1

    new-instance v0, Le30$b;

    invoke-direct {v0}, Le30$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()J
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()J
.end method
