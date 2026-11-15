.class public final Lcom/transsion/cloud_drive/base/internal/ServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

.field public static final b:Lyi5;

.field public static final c:Lyi5;

.field public static final d:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;-><init>()V

    sput-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    sget-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider$fileServiceApi$2;->INSTANCE:Lcom/transsion/cloud_drive/base/internal/ServiceProvider$fileServiceApi$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->b:Lyi5;

    sget-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;->INSTANCE:Lcom/transsion/cloud_drive/base/internal/ServiceProvider$spaceServiceApi$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->c:Lyi5;

    sget-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider$shareServiceApi$2;->INSTANCE:Lcom/transsion/cloud_drive/base/internal/ServiceProvider$shareServiceApi$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->d:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lpr3;
    .locals 1

    sget-object p0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lpr3;

    return-object p0
.end method

.method public final b()Ljg9;
    .locals 1

    sget-object p0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljg9;

    return-object p0
.end method

.method public final c()Lgu9;
    .locals 1

    sget-object p0, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgu9;

    return-object p0
.end method
