.class public abstract Lcom/yandex/div2/m4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/m4$a;,
        Lcom/yandex/div2/m4$b;,
        Lcom/yandex/div2/m4$c;,
        Lcom/yandex/div2/m4$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/m4$a;

.field public static final b:Lcom/yandex/div2/DivText$Image$Accessibility$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/m4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/m4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/m4;->a:Lcom/yandex/div2/m4$a;

    sget-object v0, Lcom/yandex/div2/DivText$Image$Accessibility$Type;->AUTO:Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    sput-object v0, Lcom/yandex/div2/m4;->b:Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    return-void
.end method
