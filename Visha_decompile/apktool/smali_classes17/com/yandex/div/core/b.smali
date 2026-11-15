.class public final Lcom/yandex/div/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/b$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div/core/b$a;

.field public static final c:Lcom/yandex/div/core/c;

.field public static d:Lcom/yandex/div/core/c;

.field public static volatile e:Lcom/yandex/div/core/b;


# instance fields
.field public final a:Lcom/yandex/div/core/dagger/DivKitComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/b;->b:Lcom/yandex/div/core/b$a;

    new-instance v0, Lcom/yandex/div/core/c$a;

    invoke-direct {v0}, Lcom/yandex/div/core/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/yandex/div/core/c$a;->c()Lcom/yandex/div/core/c;

    move-result-object v0

    sput-object v0, Lcom/yandex/div/core/b;->c:Lcom/yandex/div/core/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/div/core/c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/yandex/div/core/dagger/Yatagan$DivKitComponent;->builder()Lcom/yandex/div/core/dagger/DivKitComponent$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/yandex/div/core/dagger/DivKitComponent$Builder;->b(Landroid/content/Context;)Lcom/yandex/div/core/dagger/DivKitComponent$Builder;

    move-result-object p1

    .line 5
    invoke-interface {p1, p2}, Lcom/yandex/div/core/dagger/DivKitComponent$Builder;->a(Lcom/yandex/div/core/c;)Lcom/yandex/div/core/dagger/DivKitComponent$Builder;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/yandex/div/core/dagger/DivKitComponent$Builder;->build()Lcom/yandex/div/core/dagger/DivKitComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/b;->a:Lcom/yandex/div/core/dagger/DivKitComponent;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/div/core/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/core/b;-><init>(Landroid/content/Context;Lcom/yandex/div/core/c;)V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/div/core/c;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/b;->d:Lcom/yandex/div/core/c;

    return-object v0
.end method

.method public static final synthetic b()Lcom/yandex/div/core/c;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/b;->c:Lcom/yandex/div/core/c;

    return-object v0
.end method

.method public static final synthetic c()Lcom/yandex/div/core/b;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/b;->e:Lcom/yandex/div/core/b;

    return-object v0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/b;)V
    .locals 0

    sput-object p0, Lcom/yandex/div/core/b;->e:Lcom/yandex/div/core/b;

    return-void
.end method


# virtual methods
.method public final e()Lcom/yandex/div/core/dagger/DivKitComponent;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/b;->a:Lcom/yandex/div/core/dagger/DivKitComponent;

    return-object p0
.end method
