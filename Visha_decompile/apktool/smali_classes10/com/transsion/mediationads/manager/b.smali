.class public final Lcom/transsion/mediationads/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/manager/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/mediationads/manager/b$a;

.field public static b:Lkw4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/manager/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/manager/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    sget-object v0, Lv22;->a:Lv22;

    sput-object v0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

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
    invoke-direct {p0}, Lcom/transsion/mediationads/manager/b;-><init>()V

    return-void
.end method

.method public static final c()Lcom/transsion/mediationads/manager/b;
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0}, Lkw4;->d()V

    return-void
.end method

.method public final b(I)I
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0, p1}, Lkw4;->g(I)I

    move-result p0

    return p0
.end method

.method public final d(I)Lcom/transsion/mediationads/beans/TabStrategy;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0, p1}, Lkw4;->b(I)Lcom/transsion/mediationads/beans/TabStrategy;

    move-result-object p0

    return-object p0
.end method

.method public final e(I)I
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0, p1}, Lkw4;->e(I)I

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0}, Lkw4;->a()Z

    move-result p0

    return p0
.end method

.method public final g(I)Z
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0, p1}, Lkw4;->f(I)Z

    move-result p0

    return p0
.end method

.method public final h(I)Z
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0, p1}, Lkw4;->h(I)Z

    move-result p0

    return p0
.end method

.method public final i()V
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/b;->b:Lkw4;

    invoke-interface {p0}, Lkw4;->c()V

    return-void
.end method
