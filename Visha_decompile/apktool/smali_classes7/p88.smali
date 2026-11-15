.class public Lp88;
.super Lvec;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lp88;->b:Ljava/util/List;

    const-class v1, Lec2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lp88;->b:Ljava/util/List;

    const-class v1, Llw5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lp88;->b:Ljava/util/List;

    const-class v1, Llz6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lp88;->b:Ljava/util/List;

    const-class v1, Ldec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lp88;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lp88;->b:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Ln88;->b()Ln88;

    move-result-object p0

    invoke-virtual {p0}, Ln88;->c()V

    instance-of p0, p1, Landroid/app/Application;

    if-eqz p0, :cond_0

    invoke-static {}, Ldi1;->f()Ldi1;

    move-result-object p0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p0, p1}, Ldi1;->e(Landroid/app/Application;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
