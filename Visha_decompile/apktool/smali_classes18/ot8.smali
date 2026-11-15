.class public abstract Lot8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmq6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmq6;

    const-string v1, "ResolutionAnchorProvider"

    invoke-direct {v0, v1}, Lmq6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lot8;->a:Lmq6;

    return-void
.end method

.method public static final a(Lqq6;)Lqq6;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lot8;->a:Lmq6;

    invoke-interface {p0, v0}, Lqq6;->s0(Lmq6;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
