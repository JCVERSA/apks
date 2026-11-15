.class public final Lrab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrab$a;
    }
.end annotation


# static fields
.field public static final a:Lrab$a;

.field public static b:Lsw4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrab$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrab;->a:Lrab$a;

    sget-object v0, Lw22;->a:Lw22;

    sput-object v0, Lrab;->b:Lsw4;

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
    invoke-direct {p0}, Lrab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/mediationads/beans/TTStrategy;
    .locals 0

    sget-object p0, Lrab;->b:Lsw4;

    invoke-interface {p0}, Lsw4;->e()Lcom/transsion/mediationads/beans/TTStrategy;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 0

    sget-object p0, Lrab;->b:Lsw4;

    invoke-interface {p0}, Lsw4;->d()I

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    sget-object p0, Lrab;->b:Lsw4;

    invoke-interface {p0}, Lsw4;->a()Z

    move-result p0

    return p0
.end method

.method public final d(I)Z
    .locals 0

    sget-object p0, Lrab;->b:Lsw4;

    invoke-interface {p0, p1}, Lsw4;->c(I)Z

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 0

    sget-object p0, Lrab;->b:Lsw4;

    invoke-interface {p0}, Lsw4;->b()Z

    move-result p0

    return p0
.end method
