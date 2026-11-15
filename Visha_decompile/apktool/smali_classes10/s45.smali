.class public final Ls45;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls45$a;
    }
.end annotation


# static fields
.field public static final a:Ls45$a;

.field public static b:Lgv4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls45$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls45$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ls45;->a:Ls45$a;

    new-instance v0, Ls45$b;

    invoke-direct {v0}, Ls45$b;-><init>()V

    sput-object v0, Ls45;->b:Lgv4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls45;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    sget-object p0, Ls45;->b:Lgv4;

    invoke-interface {p0}, Lgv4;->b()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    sget-object p0, Ls45;->b:Lgv4;

    invoke-interface {p0}, Lgv4;->c()Z

    move-result p0

    return p0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 0

    sget-object p0, Ls45;->b:Lgv4;

    invoke-interface {p0, p1}, Lgv4;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ls45;->b:Lgv4;

    invoke-interface {p0, p1, p2}, Lgv4;->d(Landroid/content/Context;Z)V

    return-void
.end method
