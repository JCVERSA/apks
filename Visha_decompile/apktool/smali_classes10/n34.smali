.class public final Ln34;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln34;

.field public static b:Lbv4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln34;

    invoke-direct {v0}, Ln34;-><init>()V

    sput-object v0, Ln34;->a:Ln34;

    new-instance v0, Ln34$a;

    invoke-direct {v0}, Ln34$a;-><init>()V

    sput-object v0, Ln34;->b:Lbv4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ln34;->b:Lbv4;

    invoke-interface {v0, p0}, Lbv4;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static final b(Lbv4;)V
    .locals 1

    const-string v0, "i"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Ln34;->b:Lbv4;

    return-void
.end method

.method public static final c(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Ln34;->b:Lbv4;

    invoke-interface {v0, p0}, Lbv4;->b(Landroid/app/Activity;)V

    return-void
.end method
