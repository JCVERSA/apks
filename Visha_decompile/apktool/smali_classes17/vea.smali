.class public Lvea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/storage/util/CardErrorTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvea$a;
    }
.end annotation


# static fields
.field public static final c:Lvea$a;


# instance fields
.field public final a:Lcom/yandex/div/storage/templates/TemplatesContainer;

.field public final b:Llx7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvea$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvea$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lvea;->c:Lvea$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/storage/templates/TemplatesContainer;Llx7;)V
    .locals 1

    const-string v0, "templateContainer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalLogger"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvea;->a:Lcom/yandex/div/storage/templates/TemplatesContainer;

    iput-object p2, p0, Lvea;->b:Llx7;

    return-void
.end method
