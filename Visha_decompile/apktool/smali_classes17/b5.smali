.class public final Lb5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb5$a;
    }
.end annotation


# static fields
.field public static final b:Lb5$a;

.field public static c:Ljava/lang/Boolean;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lb5;->b:Lb5$a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb5;->a:Z

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lb5;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lb5;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lb5;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lb5;->c:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Lb5;->b:Lb5$a;

    invoke-virtual {p0, p1}, Lb5$a;->a(Landroid/content/Context;)V

    sget-object p0, Lb5;->c:Ljava/lang/Boolean;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method
