.class public final Lcom/yandex/div/core/DivPreloader$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/DivPreloader$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/yandex/div/core/DivPreloader$d$a;

.field public static final b:Lcom/yandex/div/core/DivPreloader$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/DivPreloader$d$a;

    invoke-direct {v0}, Lcom/yandex/div/core/DivPreloader$d$a;-><init>()V

    sput-object v0, Lcom/yandex/div/core/DivPreloader$d$a;->a:Lcom/yandex/div/core/DivPreloader$d$a;

    new-instance v0, Lro2;

    invoke-direct {v0}, Lro2;-><init>()V

    sput-object v0, Lcom/yandex/div/core/DivPreloader$d$a;->b:Lcom/yandex/div/core/DivPreloader$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/yandex/div/core/DivPreloader$d$a;->b()V

    return-void
.end method

.method public static final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/div/core/DivPreloader$d;
    .locals 0

    sget-object p0, Lcom/yandex/div/core/DivPreloader$d$a;->b:Lcom/yandex/div/core/DivPreloader$d;

    return-object p0
.end method
