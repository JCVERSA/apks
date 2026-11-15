.class public final Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;

.field public static final b:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;-><init>()V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;->a:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider$dbHelper$2;->INSTANCE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider$dbHelper$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;->b:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lq5b;
    .locals 0

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq5b;

    return-object p0
.end method
